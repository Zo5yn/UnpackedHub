if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Configuration = {
    useShortestWords = false; -- "false" if you want longest words or "true" if you want shortest words
    notificationLibrary = "Akali"; -- "BocusLuke" or "Akali" both credits go to them
    typingSpeed = 0.1; -- Typing speed (seconds between each letter)
    typeEnterSpeed = 0.02; -- typing enter speed
    randomTypeEnterSpeed = true; -- Randomized typing enter speed
    randomTypeEnterSpeedMinimum = 20; -- ms (0.02 in task.wait and wait) 
    randomTypeEnterSpeedMaximum = 40; -- ms (0.04 in task.wait and wait) 
    reactionSpeed = 0.1; -- reaction speed
    randomReactionSpeed = true; -- Randomized typing enter speed
    randomReactionSpeedMinimum = 20; -- ms (0.02 in task.wait and wait) 
    randomReactionSpeedMaximum = 40; -- ms (0.04 in task.wait and wait) 
    idealLength = 6; -- Ideal length
    wordsPerPage = 10; -- Words per page
    randomTypingSpeed = true; -- Randomized typing speed
    randomTypingSpeedMinimum = 70; -- ms (0.07 in task.wait and wait) 
    randomTypingSpeedMaximum = 200; -- ms (0.2 in task.wait and wait) 
}

local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")
local UserInputService = game:GetService("UserInputService")
local StarterGui = game:GetService("StarterGui")
local LogService = game:GetService("LogService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local Active = false
local TypingWord = false
local dictionaryLoaded = false
local dictionary = {}
local allWords = {}
local commonWords = {}
local usedWords = {}
local currentPage = 1
local prefixCache = {}
local trollWord = nil
local env = {}

local CUSTOM_DICTIONARY = {
    "gealousies";
    "gealousy";
    "gealous";
    "gealing";
    "gealed";
    "geals";
    "yoyoyoyoyo";
    "yoyodyne";
    "yoyogi";
    "yoyomf";
    "yoyoda";
    "yoyos";
    "yoyow";
    "ippons";
    "ippoo";
    "ippon";
    "elloughton";
    "ellomenos";
    "ellobius";
    "ellora";
    "ellore";
    "elloes";
}

local function Notification(title, text, duration)
    if Configuration.notificationLibrary == "Akali" then
        pcall(function()
            local Akali = loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/Libraries/Akali.lua"))()
            if Akali and Akali.Notify then
                Akali:Notify(title, text, duration)
            end
        end)
    elseif Configuration.notificationLibrary == "BocusLuke" then
        pcall(function()
            StarterGui:SetCore("SendNotification", {
                Title = title;
                Text = text;
                Duration = duration;
            })
        end)
    else
        pcall(function()
            StarterGui:SetCore("SendNotification", {
                Title = title;
                Text = text;
                Duration = duration;
            })
        end)
    end
end

local function IsMyTurn()
    local InGame = playerGui:FindFirstChild("InGame")
    if not InGame then
        return false
    end

    local Frame = InGame:FindFirstChild("Frame")
    if not Frame then
        return false
    end

    local CurrentWord = Frame:FindFirstChild("CurrentWord")
    if not CurrentWord then
        return false
    end

    local Turn = Frame:FindFirstChild("Turn")
    if Turn then
        if Turn:IsA("TextLabel") or Turn:IsA("TextButton") then
            local Text = Turn.Text:lower()
            if Text ~= "" then
                if Text:find(player.Name:lower(), 1, true) or Text:find(player.DisplayName:lower(), 1, true) then
                    return true
                end
            end
        end
    end

    local PlayerName = Frame:FindFirstChild("PlayerName")
    if PlayerName and (PlayerName:IsA("TextLabel") or PlayerName:IsA("TextButton")) then
        local Text = PlayerName.Text:lower()
        if Text:find(player.Name:lower(), 1, true) or Text:find(player.DisplayName:lower(), 1, true) then
            return true
        end
    end

    local CurrentPlayer = Frame:FindFirstChild("CurrentPlayer")
    if CurrentPlayer and (CurrentPlayer:IsA("TextLabel") or CurrentPlayer:IsA("TextButton")) then
        local Text = CurrentPlayer.Text:lower()
        if Text:find(player.Name:lower(), 1, true) or Text:find(player.DisplayName:lower(), 1, true) then
            return true
        end
    end

    for _, Object in ipairs(Frame:GetDescendants()) do
        if Object:IsA("TextLabel") or Object:IsA("TextButton") then
            local Name = Object.Name:lower()
            if Name:find("turn", 1, true) or Name:find("player", 1, true) then
                local Text = Object.Text:lower()
                if Text:find(player.Name:lower(), 1, true) or Text:find(player.DisplayName:lower(), 1, true) then
                    return true
                end
            end
        end
    end

    return true
end

local function GetKillerScore(word)
    local Score = 0

    for i = 1, #word do
        local Character = word:sub(i, i)

        if Character == "q" then
            Score += 10
        elseif Character == "j" then
            Score += 9
        elseif Character == "x" then
            Score += 8
        elseif Character == "z" then
            Score += 8
        elseif Character == "v" then
            Score += 7
        elseif Character == "k" then
            Score += 6
        elseif Character == "w" then
            Score += 5
        elseif Character == "y" then
            Score += 4
        elseif Character == "f" then
            Score += 3
        elseif Character == "b" then
            Score += 3
        elseif Character == "p" then
            Score += 2
        elseif Character == "g" then
            Score += 2
        end
    end

    return Score
end

local function GetCurrentGameWord()
    local InGame = playerGui:FindFirstChild("InGame")
    if not InGame then
        return ""
    end

    local Frame = InGame:FindFirstChild("Frame")
    if not Frame then
        return ""
    end

    local CurrentWord = Frame:FindFirstChild("CurrentWord")
    if not CurrentWord then
        return ""
    end

    local Objects = {}

    for _, Object in ipairs(CurrentWord:GetDescendants()) do
        if Object:IsA("GuiObject") then
            local Text = ""

            if Object:IsA("TextLabel") or Object:IsA("TextButton") or Object:IsA("TextBox") then
                Text = Object.Text or ""
            end

            Text = Text:gsub("%s+", "")

            if Text ~= "" then
                table.insert(Objects, {
                    Object = Object;
                    Text = Text;
                    Position = Object.AbsolutePosition.X;
                    Name = tonumber(Object.Name) or math.huge;
                })
            end
        end
    end

    table.sort(Objects, function(a, b)
        if a.Position ~= b.Position then
            return a.Position < b.Position
        end

        return a.Name < b.Name
    end)

    local letters = ""
    local censored = false

    for _, Data in ipairs(Objects) do
        local Text = Data.Text

        if Text:find("â€¢", 1, true) or Text:find("*", 1, true) then
            censored = true
        end

        if #Text <= 1 then
            letters ..= Text
        end
    end

    letters = letters:gsub("%s+", ""):lower()

    return letters, censored
end

local function FindWordRange(prefix)
    if prefix == "" then
        return 1, #allWords
    end

    local Cached = prefixCache[prefix]
    if Cached then
        return Cached[1], Cached[2]
    end

    local Low = 1
    local High = #allWords

    while Low <= High do
        local Mid = math.floor((Low + High) / 2)

        if allWords[Mid] < prefix then
            Low = Mid + 1
        else
            High = Mid - 1
        end
    end

    local Start = Low
    local SearchPrefix = prefix

    Low = 1
    High = #allWords

    local EndPrefix = SearchPrefix
    local LastCharacter = EndPrefix:sub(-1)

    if LastCharacter ~= "" then
        EndPrefix = EndPrefix:sub(1, -2) .. string.char(string.byte(LastCharacter) + 1)
    end

    while Low <= High do
        local Mid = math.floor((Low + High) / 2)

        if allWords[Mid] < EndPrefix then
            Low = Mid + 1
        else
            High = Mid - 1
        end
    end

    local Finish = High

    prefixCache[prefix] = {
        Start;
        Finish;
    }

    return Start, Finish
end

local function GetMatchingWords(prefix, amount)
    local Results = {}

    if prefix == "" then
        return Results
    end

    local Start, Finish = FindWordRange(prefix)

    if Start > Finish then
        return Results
    end

    for i = Start, Finish do
        local Word = allWords[i]

        if Word:sub(1, #prefix) == prefix then
            if not usedWords[Word] then
                table.insert(Results, Word)

                if #Results >= amount then
                    break
                end
            end
        end
    end

    return Results
end

local function retypeWord(letters)
    for i = 1, #letters do
        local Character = letters:sub(i, i):upper()
        local KeyCode = Enum.KeyCode[Character]

        if KeyCode then
            VirtualInputManager:SendKeyEvent(true, KeyCode, false, game)
            task.wait(0.005)
            VirtualInputManager:SendKeyEvent(false, KeyCode, false, game)
        end
    end
end

local function autoTypeWord(word, currentInput)
    if TypingWord then
        return
    end

    if not word or word == "" then
        return
    end

    currentInput = currentInput or ""

    if word:sub(1, #currentInput) ~= currentInput then
        return
    end

    TypingWord = true
    trollWord = word

    local Remaining = word:sub(#currentInput + 1)

    for i = 1, #Remaining do
        if not Active or not IsMyTurn() then
            TypingWord = false
            return
        end

        local Character = Remaining:sub(i, i):upper()
        local KeyCode = Enum.KeyCode[Character]

        if KeyCode then
            VirtualInputManager:SendKeyEvent(true, KeyCode, false, game)
            VirtualInputManager:SendKeyEvent(false, KeyCode, false, game)

            local Delay = Configuration.typingSpeed

            if Configuration.randomTypingSpeed then
                Delay = math.random(Configuration.randomTypingSpeedMinimum, Configuration.randomTypingSpeedMaximum) / 1000
            end

            task.wait(Delay)
        end
    end

    local ActualWord = GetCurrentGameWord()

    if ActualWord ~= "" and ActualWord ~= word:lower() then
        local Amount = math.max(1, #ActualWord - #currentInput)

        for _ = 1, Amount do
            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Backspace, false, game)
            VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Backspace, false, game)
            task.wait(0.01)
        end

        retypeWord(Remaining)
    end

    local EnterDelay = Configuration.typeEnterSpeed

    if Configuration.randomTypeEnterSpeed then
        EnterDelay = math.random(Configuration.randomTypeEnterSpeedMinimum, Configuration.randomTypeEnterSpeedMaximum) / 1000
    end

    task.wait(EnterDelay)

    if Active and IsMyTurn() then
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
    end

    usedWords[word] = true
    TypingWord = false
end

local function handleWord(letters)
    if TypingWord then
        return
    end

    local input = tostring(letters or ""):lower()

    if input == "" then
        return
    end

    local candidates = GetMatchingWords(input, 5000)

    table.sort(candidates, function(a, b)
        local DistanceA = math.abs(#a - Configuration.idealLength)
        local DistanceB = math.abs(#b - Configuration.idealLength)

        if DistanceA ~= DistanceB then
            return DistanceA < DistanceB
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

        local ScoreA = GetKillerScore(a)
        local ScoreB = GetKillerScore(b)

        if ScoreA ~= ScoreB then
            return ScoreA > ScoreB
        end

        return a < b
    end)

    if #candidates > 0 then
        trollWord = candidates[1]
        autoTypeWord(trollWord, input)
    else
        task.wait(0.1)
    end
end

local function loadFromJSON(content)
    local Success, Data = pcall(function()
        return HttpService:JSONDecode(content)
    end)

    if not Success or type(Data) ~= "table" then
        return false
    end

    local Words = {}

    for Word, Value in pairs(Data) do
        if type(Word) == "string" and type(Value) ~= "table" then
            table.insert(Words, Word:lower())
        elseif type(Value) == "string" then
            table.insert(Words, Value:lower())
        end
    end

    if #Words == 0 then
        return false
    end

    for _, Word in ipairs(Words) do
        if Word:match("^[a-z]+$") then
            table.insert(allWords, Word)
        end
    end

    return #allWords > 0
end

local function loadFromText(content)
    local Count = 0

    for Word in content:gmatch("[^\r\n]+") do
        Word = Word:lower():gsub("^%s+", ""):gsub("%s+$", "")

        local FirstWord = Word:match("^([^%s]+)")

        if FirstWord then
            FirstWord = FirstWord:lower()

            if FirstWord:match("^[a-z]+$") then
                table.insert(allWords, FirstWord)
                Count += 1
            end
        end
    end

    return Count > 0
end

local function loadDictionary()
    if dictionaryLoaded then
        return true
    end

    allWords = {}
    dictionary = {}
    prefixCache = {}

    if isfile and readfile and isfile("ZosynWordList.txt") then
        local Success, Content = pcall(readfile, "ZosynWordList.txt")

        if Success and Content then
            loadFromText(Content)
        end
    end

    if #allWords == 0 then
        local URLs = {
            "https://raw.githubusercontent.com/QuavixAlt/-Q7-Zx-N-3L-8mT2P-EwHkA9cFrXyS/refs/heads/main/words.txt";
            "https://raw.githubusercontent.com/dwyl/english-words/refs/heads/master/words_dictionary.json";
            "https://raw.githubusercontent.com/first20hours/google-10000-english/master/google-10000-english-usa-no-swears.txt";
            "https://raw.githubusercontent.com/skrylor/english-words/refs/heads/main/merged_english.txt";
        }

        for _, URL in ipairs(URLs) do
            local Success, Content = pcall(function()
                return game:HttpGet(URL)
            end)

            if Success and Content and Content ~= "" then
                if URL:find("json", 1, true) then
                    loadFromJSON(Content)
                else
                    loadFromText(Content)
                end
            end

            if #allWords > 0 then
                break
            end
        end
    end

    for _, Word in ipairs(CUSTOM_DICTIONARY) do
        table.insert(allWords, Word:lower())
    end

    if #allWords == 0 then
        return false
    end

    local NewWords = {}
    local Seen = {}

    for _, Word in ipairs(allWords) do
        Word = tostring(Word):lower()

        if Word:match("^[a-z]+$") and not Seen[Word] then
            Seen[Word] = true
            table.insert(NewWords, Word)
        end
    end

    allWords = NewWords

    table.sort(allWords)

    for _, Word in ipairs(allWords) do
        dictionary[Word] = true
    end

    dictionaryLoaded = true

    return true
end

local function createWordLabel(parent, text, size, offsetY)
    local Label = Instance.new("TextButton")

    Label.BackgroundTransparency = 1
    Label.BorderSizePixel = 0
    Label.Size = UDim2.new(1, -20, 0, size)
    Label.Position = UDim2.new(0, 10, 0, offsetY)
    Label.Text = text
    Label.TextSize = 16
    Label.Font = Enum.Font.Gotham
    Label.TextColor3 = Color3.fromRGB(255, 255, 255)
    Label.AutoButtonColor = false
    Label.Parent = parent

    return Label
end

local screenGui

if gethui then
    screenGui = Instance.new("ScreenGui")
    screenGui.Parent = gethui()
else
    screenGui = Instance.new("ScreenGui")
    screenGui.Parent = game:GetService("CoreGui")
end

screenGui.Name = tostring(math.random(0, 999999999))
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true

env.GuiName = screenGui.Name

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.new(0, 350, 0, 300)
Main.Position = UDim2.new(0.5, -175, 0.5, -150)
Main.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
Main.BorderSizePixel = 0
Main.Parent = screenGui

local Dragging = false
local DragStart
local StartPosition

Main.InputBegan:Connect(function(InputObject)
    if InputObject.UserInputType == Enum.UserInputType.MouseButton1 or InputObject.UserInputType == Enum.UserInputType.Touch then
        Dragging = true
        DragStart = InputObject.Position
        StartPosition = Main.Position

        InputObject.Changed:Connect(function()
            if InputObject.UserInputState == Enum.UserInputState.End then
                Dragging = false
            end
        end)
    end
end)

UserInputService.InputChanged:Connect(function(InputObject)
    if not Dragging then
        return
    end

    if InputObject.UserInputType ~= Enum.UserInputType.MouseMovement and InputObject.UserInputType ~= Enum.UserInputType.Touch then
        return
    end

    local Delta = InputObject.Position - DragStart

    Main.Position = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
end)

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 8)
Corner.Parent = Main

local Title = Instance.new("TextLabel")
Title.Name = "Title"
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

local function displayPage()
    for _, Object in ipairs(List:GetChildren()) do
        if Object:IsA("GuiObject") then
            Object:Destroy()
        end
    end

    local Start = ((currentPage - 1) * Configuration.wordsPerPage) + 1
    local Finish = math.min(Start + Configuration.wordsPerPage - 1, #allWords)

    local Offset = 5

    for i = Start, Finish do
        local Word = allWords[i]
        local Label = createWordLabel(List, Word, 18, Offset)

        Label.MouseButton1Click:Connect(function()
            Input.Text = Word
            handleWord(Word)
        end)

        Offset += 19
    end
end

local function updateTopWords(input)
    input = tostring(input or ""):lower()

    if input == "" then
        displayPage()
        return
    end

    for _, Object in ipairs(List:GetChildren()) do
        if Object:IsA("GuiObject") then
            Object:Destroy()
        end
    end

    local Matching = GetMatchingWords(input, Configuration.wordsPerPage)

    table.sort(Matching, function(a, b)
        if Configuration.useShortestWords then
            if #a ~= #b then
                return #a < #b
            end
        else
            if #a ~= #b then
                return #a > #b
            end
        end

        local ScoreA = GetKillerScore(a)
        local ScoreB = GetKillerScore(b)

        if ScoreA ~= ScoreB then
            return ScoreA > ScoreB
        end

        return a < b
    end)

    local Offset = 5

    for _, Word in ipairs(Matching) do
        local Label = createWordLabel(List, Word, 18, Offset)

        Label.MouseButton1Click:Connect(function()
            Input.Text = Word
            handleWord(Word)
        end)

        Offset += 19
    end
end

Input:GetPropertyChangedSignal("Text"):Connect(function()
    updateTopWords(Input.Text)
end)

local function ResetRound()
    usedWords = {}
    trollWord = nil
    TypingWord = false
    currentPage = 1
end

task.spawn(function()
    if not loadDictionary() then
        Notification("Zosyn's Auto Typer", "Failed to load dictionary.", 5)
        return
    end

    displayPage()

    task.wait(0.5)

    local InGame = playerGui:FindFirstChild("InGame")
    local InGameFrame = InGame and InGame:FindFirstChild("Frame")

    if InGameFrame and InGameFrame.Visible then
        Active = true
        Notification("Zosyn's Auto Typer", "Auto typer enabled", 5)
    else
        Active = false
        ResetRound()
        Notification("Zosyn's Auto Typer", "Auto typer disabled", 5)
    end

    if InGameFrame then
        InGameFrame:GetPropertyChangedSignal("Visible"):Connect(function()
            if InGameFrame.Visible then
                Active = true
                ResetRound()
                Notification("Zosyn's Auto Typer", "Auto typer enabled", 5)
            else
                Active = false
                ResetRound()
                Notification("Zosyn's Auto Typer", "Auto typer disabled", 5)
            end
        end)
    else
        Notification("Zosyn's Auto Typer", "Game event join error", 5)
    end

    local currentWord

    if InGameFrame then
        currentWord = InGameFrame:FindFirstChild("CurrentWord")
    end

    local function CheckWord()
        local letters = GetCurrentGameWord()

        if not IsMyTurn() then
            if TypingWord then
                TypingWord = false
            end

            return
        end

        if letters ~= "" and Active and not TypingWord then
            local ReactionDelay = Configuration.reactionSpeed

            if Configuration.randomReactionSpeed then
                ReactionDelay = math.random(Configuration.randomReactionSpeedMinimum, Configuration.randomReactionSpeedMaximum) / 1000
            end

            task.wait(ReactionDelay)

            if Active and not TypingWord and IsMyTurn() then
                handleWord(letters)
            end
        end
    end

    if currentWord then
        currentWord.ChildAdded:Connect(function()
            task.delay(0.05, function()
                CheckWord()
            end)
        end)

        currentWord.ChildRemoved:Connect(function()
            task.delay(0.05, function()
                CheckWord()
            end)
        end)

        local initialLetters = GetCurrentGameWord()

        if initialLetters ~= "" and Active and IsMyTurn() and not TypingWord then
            handleWord(initialLetters)
        end
    end

    while screenGui.Parent do
        local InGameNow = playerGui:FindFirstChild("InGame")
        local InGameFrameNow = InGameNow and InGameNow:FindFirstChild("Frame")

        if InGameFrameNow and InGameFrameNow.Visible then
            Active = true

            local CurrentWordNow = InGameFrameNow:FindFirstChild("CurrentWord")

            if CurrentWordNow and CurrentWordNow ~= currentWord then
                currentWord = CurrentWordNow

                currentWord.ChildAdded:Connect(function()
                    task.delay(0.05, function()
                        CheckWord()
                    end)
                end)

                currentWord.ChildRemoved:Connect(function()
                    task.delay(0.05, function()
                        CheckWord()
                    end)
                end)
            end

            CheckWord()
        else
            if Active then
                Active = false
                ResetRound()
            end
        end

        task.wait(0.15)
    end
end)
