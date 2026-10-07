if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")
local UserInputService = game:GetService("UserInputService")
local StarterGui = game:GetService("StarterGui")
local HttpService = game:GetService("HttpService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local Active = false
local TypingWord = false
local dictionaryLoaded = false

local dictionary = {}
local allWords = {}
local usedWords = {}
local prefixCache = {}

local currentPage = 1
local currentWordObject = nil
local lastLetters = ""
local roundToken = 0

local Akali

local CUSTOM_DICTIONARY = {
    "gealousies",
    "gealousy",
    "gealous",
    "gealing",
    "gealed",
    "geals",
    "yoyoyoyoyo",
    "yoyodyne",
    "yoyogi",
    "yoyomf",
    "yoyoda",
    "yoyos",
    "yoyow",
    "ippons",
    "ippoo",
    "ippon",
    "elloughton",
    "ellomenos",
    "ellobius",
    "ellora",
    "ellore",
    "elloes"
}

local function Notification(title, text, duration)
    if Configuration.notificationLibrary == "Akali" then
        pcall(function()
            if not Akali then
                Akali = loadstring(game:HttpGet(
                    "https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/Libraries/Akali.lua"
                ))()
            end

            if Akali and Akali.Notify then
                Akali:Notify(title, text, duration)
            end
        end)

        return
    end

    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = title,
            Text = text,
            Duration = duration
        })
    end)
end

local function IsTextObject(object)
    return object:IsA("TextLabel")
        or object:IsA("TextButton")
        or object:IsA("TextBox")
end

local function IsMyTurn()
    local inGame = playerGui:FindFirstChild("InGame")

    if not inGame then
        return false
    end

    local frame = inGame:FindFirstChild("Frame")

    if not frame or not frame.Visible then
        return false
    end

    local foundTurnIndicator = false

    for _, object in ipairs(frame:GetDescendants()) do
        if IsTextObject(object) then
            local name = object.Name:lower()
            local text = object.Text:lower()

            if name:find("turn", 1, true)
                or name:find("player", 1, true)
                or name:find("current", 1, true) then

                if text ~= "" then
                    foundTurnIndicator = true

                    if text:find(player.Name:lower(), 1, true)
                        or text:find(player.DisplayName:lower(), 1, true) then
                        return true
                    end
                end
            end
        end
    end

    if not foundTurnIndicator then
        return true
    end

    return false
end

local function GetCurrentGameWord()
    local inGame = playerGui:FindFirstChild("InGame")

    if not inGame then
        return "", false
    end

    local frame = inGame:FindFirstChild("Frame")

    if not frame then
        return "", false
    end

    local currentWord = frame:FindFirstChild("CurrentWord")

    if not currentWord then
        return "", false
    end

    local objects = {}

    for _, object in ipairs(currentWord:GetDescendants()) do
        if object:IsA("GuiObject") and IsTextObject(object) then
            local text = object.Text or ""

            text = text:gsub("%s+", "")

            if text ~= "" then
                table.insert(objects, {
                    Object = object,
                    Text = text,
                    Position = object.AbsolutePosition.X,
                    Name = tonumber(object.Name) or math.huge
                })
            end
        end
    end

    table.sort(objects, function(a, b)
        if a.Position ~= b.Position then
            return a.Position < b.Position
        end

        return a.Name < b.Name
    end)

    local letters = ""
    local censored = false

    for _, data in ipairs(objects) do
        local text = data.Text

        if text:find("•", 1, true)
            or text:find("*", 1, true)
            or text:find("â€¢", 1, true) then
            censored = true
        end

        if #text <= 1 then
            letters ..= text
        end
    end

    letters = letters:gsub("%s+", ""):lower()

    return letters, censored
end

local function GetKillerScore(word)
    local score = 0

    for i = 1, #word do
        local character = word:sub(i, i)

        if character == "q" then
            score += 10
        elseif character == "j" then
            score += 9
        elseif character == "x" or character == "z" then
            score += 8
        elseif character == "v" then
            score += 7
        elseif character == "k" then
            score += 6
        elseif character == "w" then
            score += 5
        elseif character == "y" then
            score += 4
        elseif character == "f" or character == "b" then
            score += 3
        elseif character == "p" or character == "g" then
            score += 2
        end
    end

    return score
end

local function FindWordRange(prefix)
    if prefix == "" or #allWords == 0 then
        return 1, #allWords
    end

    if prefixCache[prefix] then
        return prefixCache[prefix][1], prefixCache[prefix][2]
    end

    local low = 1
    local high = #allWords
    local start = #allWords + 1

    while low <= high do
        local mid = math.floor((low + high) / 2)

        if allWords[mid] < prefix then
            low = mid + 1
        else
            start = mid
            high = mid - 1
        end
    end

    if start > #allWords or not allWords[start]:sub(1, #prefix) == prefix then
        prefixCache[prefix] = {start, start - 1}
        return start, start - 1
    end

    local finish = start

    while finish <= #allWords
        and allWords[finish]:sub(1, #prefix) == prefix do
        finish += 1
    end

    finish -= 1

    prefixCache[prefix] = {
        start,
        finish
    }

    return start, finish
end

local function GetMatchingWords(prefix, amount)
    local results = {}

    if prefix == "" then
        return results
    end

    local start, finish = FindWordRange(prefix)

    if start > finish then
        return results
    end

    for i = start, finish do
        local word = allWords[i]

        if not usedWords[word] then
            table.insert(results, word)

            if #results >= amount then
                break
            end
        end
    end

    return results
end

local function SendKey(keyCode)
    VirtualInputManager:SendKeyEvent(true, keyCode, false, game)
    VirtualInputManager:SendKeyEvent(false, keyCode, false, game)
end

local function RetypeWord(word)
    for i = 1, #word do
        if not Active then
            return
        end

        local character = word:sub(i, i):upper()
        local keyCode = Enum.KeyCode[character]

        if keyCode then
            SendKey(keyCode)
            task.wait(0.005)
        end
    end
end

local function autoTypeWord(word, currentInput)
    if TypingWord or not Active then
        return
    end

    if not word or word == "" then
        return
    end

    currentInput = tostring(currentInput or ""):lower()

    if word:sub(1, #currentInput) ~= currentInput then
        return
    end

    local token = roundToken

    TypingWord = true

    local remaining = word:sub(#currentInput + 1)

    for i = 1, #remaining do
        if not Active
            or token ~= roundToken
            or not IsMyTurn() then

            TypingWord = false
            return
        end

        local currentLetters = GetCurrentGameWord()

        if currentLetters ~= currentInput then
            TypingWord = false
            return
        end

        local character = remaining:sub(i, i):upper()
        local keyCode = Enum.KeyCode[character]

        if keyCode then
            SendKey(keyCode)

            local delayTime = Configuration.typingSpeed

            if Configuration.randomTypingSpeed then
                delayTime = math.random(
                    Configuration.randomTypingSpeedMinimum,
                    Configuration.randomTypingSpeedMaximum
                ) / 1000
            end

            task.wait(delayTime)
        end
    end

    if not Active
        or token ~= roundToken
        or not IsMyTurn() then

        TypingWord = false
        return
    end

    local actualWord = GetCurrentGameWord()

    if actualWord ~= "" and actualWord ~= word then
        if #actualWord > #currentInput then
            local amount = #actualWord - #currentInput

            for _ = 1, amount do
                SendKey(Enum.KeyCode.Backspace)
                task.wait(0.01)
            end
        end

        RetypeWord(remaining)
    end

    local enterDelay = Configuration.typeEnterSpeed

    if Configuration.randomTypeEnterSpeed then
        enterDelay = math.random(
            Configuration.randomTypeEnterSpeedMinimum,
            Configuration.randomTypeEnterSpeedMaximum
        ) / 1000
    end

    task.wait(enterDelay)

    if Active
        and token == roundToken
        and IsMyTurn() then

        SendKey(Enum.KeyCode.Return)
        usedWords[word] = true
    end

    TypingWord = false
end

local function handleWord(letters)
    if TypingWord or not Active then
        return
    end

    letters = tostring(letters or ""):lower()

    if letters == "" then
        return
    end

    local candidates = GetMatchingWords(letters, 5000)

    table.sort(candidates, function(a, b)
        local distanceA = math.abs(#a - Configuration.idealLength)
        local distanceB = math.abs(#b - Configuration.idealLength)

        if distanceA ~= distanceB then
            return distanceA < distanceB
        end

        if Configuration.useShortestWords then
            if #a ~= #b then
                return #a < #b
            end
        else
            if #a ~= #b then
                return #a > #b
            end
        end

        local scoreA = GetKillerScore(a)
        local scoreB = GetKillerScore(b)

        if scoreA ~= scoreB then
            return scoreA > scoreB
        end

        return a < b
    end)

    if #candidates == 0 then
        return
    end

    autoTypeWord(candidates[1], letters)
end

local function loadFromJSON(content)
    local success, data = pcall(function()
        return HttpService:JSONDecode(content)
    end)

    if not success or type(data) ~= "table" then
        return 0
    end

    local count = 0

    for word, value in pairs(data) do
        local candidate

        if type(word) == "string" and type(value) ~= "table" then
            candidate = word
        elseif type(value) == "string" then
            candidate = value
        end

        if candidate then
            candidate = candidate:lower()

            if candidate:match("^[a-z]+$") then
                table.insert(allWords, candidate)
                count += 1
            end
        end
    end

    return count
end

local function loadFromText(content)
    local count = 0

    for word in content:gmatch("[^\r\n]+") do
        word = word:lower():match("^%s*(.-)%s*$")

        local firstWord = word:match("^([^%s]+)")

        if firstWord and firstWord:match("^[a-z]+$") then
            table.insert(allWords, firstWord)
            count += 1
        end
    end

    return count
end

local function loadDictionary()
    if dictionaryLoaded then
        return true
    end

    allWords = {}
    dictionary = {}
    prefixCache = {}

    if isfile and readfile and isfile("ZosynWordList.txt") then
        local success, content = pcall(readfile, "ZosynWordList.txt")

        if success and content and content ~= "" then
            loadFromText(content)
        end
    end

    if #allWords == 0 then
        local sources = {
            {
                "https://raw.githubusercontent.com/QuavixAlt/-Q7-Zx-N-3L-8mT2P-EwHkA9cFrXyS/refs/heads/main/words.txt",
                false
            },
            {
                "https://raw.githubusercontent.com/dwyl/english-words/refs/heads/master/words_dictionary.json",
                true
            },
            {
                "https://raw.githubusercontent.com/first20hours/google-10000-english/master/google-10000-english-usa-no-swears.txt",
                false
            },
            {
                "https://raw.githubusercontent.com/skrylor/english-words/refs/heads/main/merged_english.txt",
                false
            }
        }

        for _, source in ipairs(sources) do
            local success, content = pcall(function()
                return game:HttpGet(source[1])
            end)

            if success and content and content ~= "" then
                if source[2] then
                    loadFromJSON(content)
                else
                    loadFromText(content)
                end
            end

            if #allWords >= 10000 then
                break
            end
        end
    end

    for _, word in ipairs(CUSTOM_DICTIONARY) do
        table.insert(allWords, word:lower())
    end

    local uniqueWords = {}
    local seen = {}

    for _, word in ipairs(allWords) do
        word = tostring(word):lower()

        if word:match("^[a-z]+$") and not seen[word] then
            seen[word] = true
            uniqueWords[#uniqueWords + 1] = word
        end
    end

    allWords = uniqueWords

    if #allWords == 0 then
        return false
    end

    table.sort(allWords)

    for _, word in ipairs(allWords) do
        dictionary[word] = true
    end

    dictionaryLoaded = true

    return true
end

local function ResetRound()
    roundToken += 1
    usedWords = {}
    TypingWord = false
    lastLetters = ""
    currentWordObject = nil
    currentPage = 1
end

local function GetInGameFrame()
    local inGame = playerGui:FindFirstChild("InGame")

    if not inGame then
        return nil
    end

    local frame = inGame:FindFirstChild("Frame")

    if not frame or not frame:IsA("GuiObject") then
        return nil
    end

    return frame
end

local screenGui

if gethui then
    screenGui = Instance.new("ScreenGui")
    screenGui.Parent = gethui()
else
    screenGui = Instance.new("ScreenGui")
    screenGui.Parent = game:GetService("CoreGui")
end

screenGui.Name = "ZosynAutoTyper_" .. math.random(1, 999999999)
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.new(0, 350, 0, 300)
Main.Position = UDim2.new(0.5, -175, 0.5, -150)
Main.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
Main.BorderSizePixel = 0
Main.Parent = screenGui

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 8)
Corner.Parent = Main

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.Text = "Zosyn's Auto Typer"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18
Title.Font = Enum.Font.GothamBold
Title.Parent = Main

local Input = Instance.new("TextBox")
Input.Name = "Input"
Input.Size = UDim2.new(1, -20, 0, 35)
Input.Position = UDim2.new(0, 10, 0, 50)
Input.BackgroundColor3 = Color3.fromRGB(35, 35, 42)
Input.BorderSizePixel = 0
Input.PlaceholderText = "Search word..."
Input.Text = ""
Input.TextColor3 = Color3.fromRGB(255, 255, 255)
Input.TextSize = 14
Input.Font = Enum.Font.Gotham
Input.ClearTextOnFocus = false
Input.Parent = Main

local InputCorner = Instance.new("UICorner")
InputCorner.CornerRadius = UDim.new(0, 6)
InputCorner.Parent = Input

local List = Instance.new("Frame")
List.Name = "List"
List.Size = UDim2.new(1, -20, 0, 195)
List.Position = UDim2.new(0, 10, 0, 95)
List.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
List.BorderSizePixel = 0
List.ClipsDescendants = true
List.Parent = Main

local ListCorner = Instance.new("UICorner")
ListCorner.CornerRadius = UDim.new(0, 6)
ListCorner.Parent = List

local function createWordLabel(parent, text, offsetY)
    local label = Instance.new("TextButton")

    label.BackgroundTransparency = 1
    label.BorderSizePixel = 0
    label.Size = UDim2.new(1, -20, 0, 18)
    label.Position = UDim2.new(0, 10, 0, offsetY)
    label.Text = text
    label.TextSize = 16
    label.Font = Enum.Font.Gotham
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.AutoButtonColor = false
    label.Parent = parent

    return label
end

local function ClearList()
    for _, object in ipairs(List:GetChildren()) do
        if object:IsA("GuiObject") then
            object:Destroy()
        end
    end
end

local function displayPage()
    ClearList()

    local start = ((currentPage - 1) * Configuration.wordsPerPage) + 1
    local finish = math.min(
        start + Configuration.wordsPerPage - 1,
        #allWords
    )

    local offset = 5

    for i = start, finish do
        local word = allWords[i]
        local label = createWordLabel(List, word, offset)

        label.MouseButton1Click:Connect(function()
            Input.Text = word
            handleWord(word)
        end)

        offset += 19
    end
end

local function updateTopWords(input)
    input = tostring(input or ""):lower()

    if input == "" then
        displayPage()
        return
    end

    ClearList()

    local matching = GetMatchingWords(
        input,
        Configuration.wordsPerPage
    )

    table.sort(matching, function(a, b)
        if Configuration.useShortestWords then
            if #a ~= #b then
                return #a < #b
            end
        else
            if #a ~= #b then
                return #a > #b
            end
        end

        local scoreA = GetKillerScore(a)
        local scoreB = GetKillerScore(b)

        if scoreA ~= scoreB then
            return scoreA > scoreB
        end

        return a < b
    end)

    local offset = 5

    for _, word in ipairs(matching) do
        local label = createWordLabel(List, word, offset)

        label.MouseButton1Click:Connect(function()
            Input.Text = word
            handleWord(word)
        end)

        offset += 19
    end
end

Input:GetPropertyChangedSignal("Text"):Connect(function()
    updateTopWords(Input.Text)
end)

local Dragging = false
local DragStart
local StartPosition

Main.InputBegan:Connect(function(input)
    if input.UserInputType ~= Enum.UserInputType.MouseButton1
        and input.UserInputType ~= Enum.UserInputType.Touch then
        return
    end

    Dragging = true
    DragStart = input.Position
    StartPosition = Main.Position

    input.Changed:Connect(function()
        if input.UserInputState == Enum.UserInputState.End then
            Dragging = false
        end
    end)
end)

UserInputService.InputChanged:Connect(function(input)
    if not Dragging then
        return
    end

    if input.UserInputType ~= Enum.UserInputType.MouseMovement
        and input.UserInputType ~= Enum.UserInputType.Touch then
        return
    end

    local delta = input.Position - DragStart

    Main.Position = UDim2.new(
        StartPosition.X.Scale,
        StartPosition.X.Offset + delta.X,
        StartPosition.Y.Scale,
        StartPosition.Y.Offset + delta.Y
    )
end)

task.spawn(function()
    if not loadDictionary() then
        Notification(
            "Zosyn's Auto Typer",
            "Failed to load dictionary.",
            5
        )
        return
    end

    displayPage()

    local wasInGame = false

    while screenGui.Parent do
        local frame = GetInGameFrame()

        if frame and frame.Visible then
            if not wasInGame then
                wasInGame = true
                Active = true
                ResetRound()
            end

            local wordObject = frame:FindFirstChild("CurrentWord")

            if wordObject ~= currentWordObject then
                currentWordObject = wordObject
                lastLetters = ""
            end

            if currentWordObject then
                local letters = GetCurrentGameWord()

                if letters ~= lastLetters then
                    lastLetters = letters

                    if letters ~= ""
                        and Active
                        and not TypingWord
                        and IsMyTurn() then

                        local reactionDelay =
                            Configuration.reactionSpeed

                        if Configuration.randomReactionSpeed then
                            reactionDelay = math.random(
                                Configuration.randomReactionSpeedMinimum,
                                Configuration.randomReactionSpeedMaximum
                            ) / 1000
                        end

                        local expectedLetters = letters
                        local expectedToken = roundToken

                        task.delay(reactionDelay, function()
                            if not Active
                                or TypingWord
                                or expectedToken ~= roundToken
                                or not IsMyTurn() then
                                return
                            end

                            local currentLetters = GetCurrentGameWord()

                            if currentLetters == expectedLetters then
                                handleWord(currentLetters)
                            end
                        end)
                    end
                end
            end
        else
            if wasInGame then
                wasInGame = false
                Active = false
                ResetRound()
            end
        end

        task.wait(0.03)
    end
end)

Notification(
    "Zosyn's Auto Typer",
    "Loaded.",
    3
)
