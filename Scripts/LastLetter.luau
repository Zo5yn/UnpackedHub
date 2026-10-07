--[[
    Zosyn's Auto Typer
    Enhanced • Mistake Learning • Modern UI
]]

if not game:IsLoaded() then
    game.Loaded:Wait()
end

----------------------------------------------------------------
-- Unload previous instance if already loaded
----------------------------------------------------------------
local env = (getgenv and getgenv()) or _G

if env.ZosynAutoTyperInstance and env.ZosynAutoTyperInstance.Parent then
    pcall(function()
        env.ZosynAutoTyperInstance:Destroy()
    end)
end

----------------------------------------------------------------
-- Services
----------------------------------------------------------------
local HttpService          = game:GetService("HttpService")
local CoreGui              = game:GetService("CoreGui")
local Players              = game:GetService("Players")
local VirtualInputManager  = game:GetService("VirtualInputManager")
local UserInputService     = game:GetService("UserInputService")
local RunService           = game:GetService("RunService")
local TweenService         = game:GetService("TweenService")
local LogService           = game:GetService("LogService")
local StarterGui           = game:GetService("StarterGui")

local cloneref = cloneref or function(o) return o end
local gethui   = gethui   or function() return CoreGui end

CoreGui             = cloneref(CoreGui)
Players             = cloneref(Players)
VirtualInputManager = cloneref(VirtualInputManager)
UserInputService    = cloneref(UserInputService)
RunService          = cloneref(RunService)
TweenService        = cloneref(TweenService)
LogService          = cloneref(LogService)
StarterGui          = cloneref(StarterGui)

local request = (syn and syn.request)
    or (http and http.request)
    or http_request
    or (fluxus and fluxus.request)
    or request

local LocalPlayer = Players.LocalPlayer

----------------------------------------------------------------
-- Theme
----------------------------------------------------------------
local THEME = {
    Background   = Color3.fromRGB(16, 17, 21),
    Surface      = Color3.fromRGB(24, 26, 32),
    SurfaceHover = Color3.fromRGB(34, 38, 48),
    Accent       = Color3.fromRGB(88, 166, 255),
    AccentDim    = Color3.fromRGB(55, 110, 180),
    Text         = Color3.fromRGB(230, 233, 240),
    SubText      = Color3.fromRGB(130, 138, 155),
    Success      = Color3.fromRGB(80, 210, 140),
    Warning      = Color3.fromRGB(255, 185, 70),
    Error        = Color3.fromRGB(255, 95, 95),
    Border       = Color3.fromRGB(40, 44, 55),
}

----------------------------------------------------------------
-- Configuration
----------------------------------------------------------------
local CONFIG_FILE   = "ZosynAutoTyper_Config.json"
local MISTAKES_FILE = "Zosyn_Mistakes.json"
local WORD_FILE     = "zosyn_words.txt"
local WORD_URL      = "https://raw.githubusercontent.com/skrylor/english-words/refs/heads/main/merged_english.txt"

Config = Config or {
    CPM                 = 520,
    BlatantMode         = false,
    HumanizeTyping      = true,
    FingerModel         = true,
    ErrorRate           = 2,
    ThinkDelay          = 0.7,
    RiskyMistakes       = false,

    SortMode            = "Random",
    PreferredLength     = 6,
    SuffixFilter        = "",
    LengthFilter        = 0,

    AutoPlay            = true,   -- always on
    PanicMode           = true,

    NotificationLibrary = "Akali",
    ToggleKey           = Enum.KeyCode.RightControl,
    MinCPM              = 40,
    MaxCPMLegit         = 1400,
    MaxCPMBlatant       = 2800,
}

local function SaveConfig()
    if writefile then
        pcall(function()
            writefile(CONFIG_FILE, HttpService:JSONEncode(Config))
        end)
    end
end

local function LoadConfig()
    if isfile and isfile(CONFIG_FILE) then
        local ok, data = pcall(function()
            return HttpService:JSONDecode(readfile(CONFIG_FILE))
        end)
        if ok and type(data) == "table" then
            for k, v in pairs(data) do
                if k ~= "AutoPlay" then
                    Config[k] = v
                end
            end
        end
    end
    Config.AutoPlay = true
end
LoadConfig()

----------------------------------------------------------------
-- Notification system
----------------------------------------------------------------
local Akali

local function Notification(title, text, duration)
    duration = duration or 4
    if Config.NotificationLibrary == "Akali" then
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

----------------------------------------------------------------
-- Mistakes system
----------------------------------------------------------------
local Mistakes = {}

local function LoadMistakes()
    if isfile and isfile(MISTAKES_FILE) then
        local ok, data = pcall(function()
            return HttpService:JSONDecode(readfile(MISTAKES_FILE))
        end)
        if ok and type(data) == "table" then
            for word, _ in pairs(data) do
                Mistakes[tostring(word):lower()] = true
            end
        end
    end
end

local function SaveMistakes()
    if writefile then
        pcall(function()
            writefile(MISTAKES_FILE, HttpService:JSONEncode(Mistakes))
        end)
    end
end

LoadMistakes()

local function RememberMistake(word)
    word = word:lower()
    if not Mistakes[word] then
        Mistakes[word] = true
        SaveMistakes()
        Notification("Mistake Saved", "Ignored: " .. word, 3)
    end
end

----------------------------------------------------------------
-- Word list
----------------------------------------------------------------
local Words   = {}
local Buckets = {}
local UsedWords = {}   -- cleared when match ends

local function FetchAndLoadWords()
    local loadingGui = Instance.new("ScreenGui")
    loadingGui.Name = "ZosynLoading"
    loadingGui.Parent = gethui()

    local frame = Instance.new("Frame", loadingGui)
    frame.Size = UDim2.new(0, 260, 0, 85)
    frame.Position = UDim2.new(0.5, -130, 0.42, 0)
    frame.BackgroundColor3 = THEME.Background
    frame.BorderSizePixel = 0
    Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 12)

    local stroke = Instance.new("UIStroke", frame)
    stroke.Color = THEME.Accent
    stroke.Transparency = 0.6
    stroke.Thickness = 1.5

    local title = Instance.new("TextLabel", frame)
    title.Size = UDim2.new(1, 0, 0, 32)
    title.BackgroundTransparency = 1
    title.Text = "Zosyn's Auto Typer"
    title.TextColor3 = THEME.Accent
    title.Font = Enum.Font.GothamBold
    title.TextSize = 16

    local status = Instance.new("TextLabel", frame)
    status.Size = UDim2.new(1, -16, 0, 28)
    status.Position = UDim2.new(0, 8, 0, 40)
    status.BackgroundTransparency = 1
    status.Text = "Loading dictionary..."
    status.TextColor3 = THEME.Text
    status.Font = Enum.Font.Gotham
    status.TextSize = 13

    local function setStatus(t, c)
        status.Text = t
        if c then status.TextColor3 = c end
        RunService.RenderStepped:Wait()
    end

    -- One-time download only
    if not isfile(WORD_FILE) then
        setStatus("Downloading word list (first time)...", THEME.Warning)
        local ok, res = pcall(function()
            return request({ Url = WORD_URL, Method = "GET" })
        end)

        if ok and res and res.Body then
            writefile(WORD_FILE, res.Body)
            setStatus("Downloaded successfully!", THEME.Success)
        else
            setStatus("Download failed!", THEME.Error)
            task.wait(1.5)
            loadingGui:Destroy()
            return
        end
        task.wait(0.4)
    else
        setStatus("Loading cached dictionary...", THEME.Success)
        task.wait(0.3)
    end

    setStatus("Parsing words...", THEME.Warning)
    local seen = {}
    if isfile(WORD_FILE) then
        local content = readfile(WORD_FILE)
        for w in content:gmatch("[^\r\n]+") do
            local clean = w:gsub("[%s%c]+", ""):lower()
            if #clean >= 3 and #clean <= 22 and not seen[clean] and not Mistakes[clean] then
                seen[clean] = true
                table.insert(Words, clean)
            end
        end
    end

    table.sort(Words)
    for _, w in ipairs(Words) do
        local c = w:sub(1, 1)
        Buckets[c] = Buckets[c] or {}
        table.insert(Buckets[c], w)
    end

    setStatus(string.format("Loaded %d words", #Words), THEME.Success)
    task.wait(0.45)
    loadingGui:Destroy()
end

FetchAndLoadWords()

----------------------------------------------------------------
-- Helpers
----------------------------------------------------------------
local function Tween(obj, props, time, style)
    local info = TweenInfo.new(time or 0.18, style or Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local t = TweenService:Create(obj, info, props)
    t:Play()
    return t
end

local HardLetterScores = {
    x = 10, z = 9, q = 9, j = 8, v = 6, k = 5, b = 4, f = 3, w = 3, y = 2, g = 2, p = 2
}

local function GetKillerScore(word)
    return HardLetterScores[word:sub(-1)] or 0
end

local function shuffle(t)
    for i = #t, 2, -1 do
        local j = math.random(i)
        t[i], t[j] = t[j], t[i]
    end
    return t
end

----------------------------------------------------------------
-- Game helpers
----------------------------------------------------------------
local isMyTurnLogDetected = false
local logRequiredLetters  = ""
local turnExpiryTime      = 0
local lastCompletedWord   = ""   -- to detect when opponent finishes a word

LogService.MessageOut:Connect(function(msg)
    local wordPart, timePart = msg:match("Word:%s*([A-Za-z]+)%s+Time to respond:%s*(%d+)")
    if wordPart and timePart then
        isMyTurnLogDetected = true
        logRequiredLetters  = wordPart
        turnExpiryTime      = tick() + tonumber(timePart)
    end
end)

local function GetCurrentGameWord(providedFrame)
    local frame = providedFrame
    if not frame then
        local gui = LocalPlayer:FindFirstChild("PlayerGui")
        local inGame = gui and gui:FindFirstChild("InGame")
        frame = inGame and inGame:FindFirstChild("Frame")
    end

    local container = frame and frame:FindFirstChild("CurrentWord")
    if not container then return "", false end

    local letterData = {}
    for _, c in ipairs(container:GetChildren()) do
        if c:IsA("GuiObject") and c.Visible then
            local txt = c:FindFirstChild("Letter")
            if txt and txt:IsA("TextLabel") and txt.TextTransparency < 1 then
                table.insert(letterData, {
                    X  = c.AbsolutePosition.X,
                    Id = tonumber(c.Name) or 0,
                    T  = tostring(txt.Text)
                })
            end
        end
    end

    table.sort(letterData, function(a, b)
        if math.abs(a.X - b.X) > 2 then return a.X < b.X end
        return a.Id < b.Id
    end)

    local detected, censored = "", false
    for _, d in ipairs(letterData) do
        if d.T:find("#") or d.T:find("%*") or d.T:find("•") then
            censored = true
        end
        detected = detected .. d.T
    end

    return detected:lower():gsub("%s+", ""), censored
end

local function IsMyTurn(providedFrame)
    if isMyTurnLogDetected then
        if tick() < turnExpiryTime then
            return true, logRequiredLetters
        else
            isMyTurnLogDetected = false
        end
    end

    local frame = providedFrame
    if not frame then
        local gui = LocalPlayer:FindFirstChild("PlayerGui")
        local inGame = gui and gui:FindFirstChild("InGame")
        frame = inGame and inGame:FindFirstChild("Frame")
    end

    local typeLbl = frame and frame:FindFirstChild("Type")
    if typeLbl and typeLbl:IsA("TextLabel") then
        local text = typeLbl.Text
        if text:sub(1, #LocalPlayer.Name) == LocalPlayer.Name
            or text:sub(1, #LocalPlayer.DisplayName) == LocalPlayer.DisplayName then
            local char = text:match("starting with:%s*([A-Za-z])")
            return true, char
        end
    end

    if frame then
        for _, obj in ipairs(frame:GetDescendants()) do
            if (obj:IsA("TextLabel") or obj:IsA("TextButton")) and obj.Text ~= "" then
                local t = obj.Text:lower()
                local n = obj.Name:lower()
                if (n:find("turn") or n:find("player") or n:find("current"))
                    and (t:find(LocalPlayer.Name:lower(), 1, true)
                         or t:find(LocalPlayer.DisplayName:lower(), 1, true)) then
                    return true, nil
                end
            end
        end
    end

    return false, nil
end

----------------------------------------------------------------
-- Typing engine
----------------------------------------------------------------
local isTyping = false
local lastTypingStart = 0
local lastKey = nil

local KEY_POS = {}
do
    local rows = { "qwertyuiop", "asdfghjkl", "zxcvbnm" }
    for y, row in ipairs(rows) do
        for x = 1, #row do
            KEY_POS[row:sub(x, x)] = { x = x + (y == 2 and 0.5 or y == 3 and 1 or 0), y = y }
        end
    end
end

local function KeyDistance(a, b)
    a, b = a and a:lower(), b and b:lower()
    local pa, pb = KEY_POS[a], KEY_POS[b]
    if not pa or not pb then return 1 end
    local dx, dy = pa.x - pb.x, pa.y - pb.y
    return math.sqrt(dx * dx + dy * dy)
end

local function CalculateDelay(prev, next)
    if Config.BlatantMode then
        return 60 / Config.CPM
    end

    local base = 60 / Config.CPM
    local variance = base * 0.32
    local extra = 0

    if Config.HumanizeTyping and Config.FingerModel and prev and next and prev ~= "" then
        extra = KeyDistance(prev, next) * 0.016 * (520 / math.max(140, Config.CPM))
    end

    if Config.HumanizeTyping then
        local noise = ((math.random() + math.random() + math.random()) / 3 * 2 - 1) * variance
        return math.max(0.007, base + extra + noise)
    end
    return base
end

local function SimulateKey(charOrKey)
    if typeof(charOrKey) == "string" and #charOrKey == 1 then
        local ok = pcall(function()
            VirtualInputManager:SendTextInput(charOrKey)
        end)
        if not ok then
            local key = Enum.KeyCode[charOrKey:upper()]
            if key then
                VirtualInputManager:SendKeyEvent(true, key, false, game)
                task.wait(0.011)
                VirtualInputManager:SendKeyEvent(false, key, false, game)
            end
        end
        return
    end

    local key = typeof(charOrKey) == "EnumItem" and charOrKey or Enum.KeyCode[tostring(charOrKey):upper()]
    if key then
        local hold = Config.BlatantMode and 0.003 or math.clamp(11 / Config.CPM, 0.011, 0.04)
        pcall(function()
            VirtualInputManager:SendKeyEvent(true, key, false, game)
            task.wait(hold)
            VirtualInputManager:SendKeyEvent(false, key, false, game)
        end)
    end
end

local function ClearInputCompletely()
    local focused = UserInputService:GetFocusedTextBox()
    if focused and focused.TextEditable then
        focused.Text = ""
        return
    end
    for _ = 1, 50 do
        local box = UserInputService:GetFocusedTextBox()
        if not box or box.Text == "" then break end
        SimulateKey(Enum.KeyCode.Backspace)
        task.wait(0.012)
    end
end

local function PressEnter()
    SimulateKey(Enum.KeyCode.Return)
    lastKey = nil
end

local function GetGameTextBox()
    local gui = LocalPlayer:FindFirstChild("PlayerGui")
    local inGame = gui and gui:FindFirstChild("InGame")
    if inGame then
        for _, c in ipairs(inGame:GetDescendants()) do
            if c:IsA("TextBox") and c.Visible then return c end
        end
    end
    return UserInputService:GetFocusedTextBox()
end

local function SmartType(targetWord, currentDetected, isCorrection)
    if isTyping then
        if tick() - lastTypingStart > 12 then
            isTyping = false
        else
            return
        end
    end

    isTyping = true
    lastTypingStart = tick()

    local box = GetGameTextBox()
    if box then
        box:CaptureFocus()
        task.wait(0.07)
    end

    pcall(function()
        if isCorrection or (currentDetected and currentDetected ~= "" and targetWord:sub(1, #currentDetected) ~= currentDetected) then
            ClearInputCompletely()
            task.wait(0.1)
            currentDetected = ""
        end

        local toType = targetWord:sub(#currentDetected + 1)

        for i = 1, #toType do
            if not IsMyTurn() then break end

            local ch = toType:sub(i, i)

            if Config.ErrorRate > 0 and math.random() < (Config.ErrorRate / 100) then
                local letters = "abcdefghijklmnopqrstuvwxyz"
                local typo
                repeat
                    typo = letters:sub(math.random(1, 26), math.random(1, 26))
                until typo ~= ch

                SimulateKey(typo)
                task.wait(CalculateDelay(lastKey, typo))
                lastKey = typo

                if Config.RiskyMistakes then
                    task.wait(0.05)
                    PressEnter()
                else
                    task.wait(Config.ThinkDelay * (0.45 + math.random() * 0.55))
                    SimulateKey(Enum.KeyCode.Backspace)
                    lastKey = nil
                    task.wait(0.035)
                end
            end

            SimulateKey(ch)
            task.wait(CalculateDelay(lastKey, ch))
            lastKey = ch

            if Config.HumanizeTyping and math.random() < 0.022 then
                task.wait(0.1 + math.random() * 0.3)
            end
        end

        if not Config.RiskyMistakes then
            task.wait(0.08)
            local final = GetGameTextBox()
            if final and final.Text:lower() ~= targetWord then
                ClearInputCompletely()
                isTyping = false
                return
            end
        end

        PressEnter()

        local accepted = false
        local start = tick()
        while tick() - start < 1.35 do
            local nowWord = GetCurrentGameWord()
            if nowWord == "" or (nowWord ~= targetWord and nowWord ~= currentDetected) then
                accepted = true
                break
            end
            task.wait(0.05)
        end

        if not accepted then
            RememberMistake(targetWord)
            UsedWords[targetWord] = true
            ClearInputCompletely()
            task.wait(0.15)
        else
            UsedWords[targetWord] = true
            lastCompletedWord = targetWord
            isMyTurnLogDetected = false
        end
    end)

    isTyping = false
end

----------------------------------------------------------------
-- UI
----------------------------------------------------------------
local Parent = (function()
    local ok, h = pcall(gethui)
    return (ok and h) or CoreGui
end)()

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ZosynAutoTyper_" .. math.random(100000, 999999)
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = Parent

env.ZosynAutoTyperInstance = ScreenGui   -- store for unload

-- Main container
local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.new(0, 300, 0, 480)
Main.Position = UDim2.new(0.75, 0, 0.22, 0)
Main.BackgroundColor3 = THEME.Background
Main.BorderSizePixel = 0
Main.Active = true
Main.ClipsDescendants = true
Main.Parent = ScreenGui
Main.BackgroundTransparency = 1
Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 14)

local mainStroke = Instance.new("UIStroke", Main)
mainStroke.Color = THEME.Border
mainStroke.Thickness = 1.2
mainStroke.Transparency = 1

-- Fade in main
Tween(Main, {BackgroundTransparency = 0}, 0.35)
Tween(mainStroke, {Transparency = 0.25}, 0.35)

-- Dragging
do
    local dragging, dragStart, startPos
    Main.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = Main.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then dragging = false end
            end)
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - dragStart
            Main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
end

-- Header
local Header = Instance.new("Frame", Main)
Header.Size = UDim2.new(1, 0, 0, 44)
Header.BackgroundColor3 = THEME.Surface
Header.BorderSizePixel = 0
Instance.new("UICorner", Header).CornerRadius = UDim.new(0, 14)

local headerFix = Instance.new("Frame", Header)
headerFix.Size = UDim2.new(1, 0, 0, 14)
headerFix.Position = UDim2.new(0, 0, 1, -14)
headerFix.BackgroundColor3 = THEME.Surface
headerFix.BorderSizePixel = 0

local Title = Instance.new("TextLabel", Header)
Title.Size = UDim2.new(1, -90, 1, 0)
Title.Position = UDim2.new(0, 14, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "Zosyn's Auto Typer"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 15
Title.TextColor3 = THEME.Text
Title.TextXAlignment = Enum.TextXAlignment.Left

local SettingsBtn = Instance.new("TextButton", Header)
SettingsBtn.Size = UDim2.new(0, 34, 0, 34)
SettingsBtn.Position = UDim2.new(1, -76, 0, 5)
SettingsBtn.BackgroundColor3 = THEME.SurfaceHover
SettingsBtn.Text = "⚙"
SettingsBtn.Font = Enum.Font.GothamBold
SettingsBtn.TextSize = 15
SettingsBtn.TextColor3 = THEME.SubText
Instance.new("UICorner", SettingsBtn).CornerRadius = UDim.new(0, 8)

local CloseBtn = Instance.new("TextButton", Header)
CloseBtn.Size = UDim2.new(0, 34, 0, 34)
CloseBtn.Position = UDim2.new(1, -38, 0, 5)
CloseBtn.BackgroundColor3 = THEME.SurfaceHover
CloseBtn.Text = "×"
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.TextSize = 18
CloseBtn.TextColor3 = THEME.Error
Instance.new("UICorner", CloseBtn).CornerRadius = UDim.new(0, 8)

CloseBtn.MouseButton1Click:Connect(function()
    Tween(Main, {BackgroundTransparency = 1}, 0.25)
    Tween(mainStroke, {Transparency = 1}, 0.25)
    task.wait(0.2)
    ScreenGui:Destroy()
    env.ZosynAutoTyperInstance = nil
end)

-- Hover animations
SettingsBtn.MouseEnter:Connect(function()
    Tween(SettingsBtn, {BackgroundColor3 = THEME.AccentDim, TextColor3 = THEME.Text}, 0.15)
end)
SettingsBtn.MouseLeave:Connect(function()
    Tween(SettingsBtn, {BackgroundColor3 = THEME.SurfaceHover, TextColor3 = THEME.SubText}, 0.15)
end)

CloseBtn.MouseEnter:Connect(function()
    Tween(CloseBtn, {BackgroundColor3 = Color3.fromRGB(60, 25, 25)}, 0.15)
end)
CloseBtn.MouseLeave:Connect(function()
    Tween(CloseBtn, {BackgroundColor3 = THEME.SurfaceHover}, 0.15)
end)

-- Status
local StatusLabel = Instance.new("TextLabel", Main)
StatusLabel.Size = UDim2.new(1, -24, 0, 18)
StatusLabel.Position = UDim2.new(0, 12, 0, 50)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = "Ready • " .. #Words .. " words"
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.TextSize = 12
StatusLabel.TextColor3 = THEME.SubText
StatusLabel.TextXAlignment = Enum.TextXAlignment.Left

-- Search
local SearchBox = Instance.new("TextBox", Main)
SearchBox.Size = UDim2.new(1, -24, 0, 30)
SearchBox.Position = UDim2.new(0, 12, 0, 74)
SearchBox.BackgroundColor3 = THEME.Surface
SearchBox.Text = ""
SearchBox.PlaceholderText = "Type prefix to filter..."
SearchBox.PlaceholderColor3 = THEME.SubText
SearchBox.TextColor3 = THEME.Text
SearchBox.Font = Enum.Font.Gotham
SearchBox.TextSize = 13
SearchBox.ClearTextOnFocus = false
Instance.new("UICorner", SearchBox).CornerRadius = UDim.new(0, 8)

local searchStroke = Instance.new("UIStroke", SearchBox)
searchStroke.Color = THEME.Border
searchStroke.Thickness = 1
searchStroke.Transparency = 0.4

SearchBox.Focused:Connect(function()
    Tween(searchStroke, {Color = THEME.Accent, Transparency = 0.1}, 0.2)
end)
SearchBox.FocusLost:Connect(function()
    Tween(searchStroke, {Color = THEME.Border, Transparency = 0.4}, 0.2)
end)

-- Word list
local Scroll = Instance.new("ScrollingFrame", Main)
Scroll.Size = UDim2.new(1, -24, 1, -200)
Scroll.Position = UDim2.new(0, 12, 0, 112)
Scroll.BackgroundTransparency = 1
Scroll.ScrollBarThickness = 3
Scroll.ScrollBarImageColor3 = THEME.Accent
Scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
Scroll.BorderSizePixel = 0

local ListLayout = Instance.new("UIListLayout", Scroll)
ListLayout.Padding = UDim.new(0, 4)
ListLayout.SortOrder = Enum.SortOrder.LayoutOrder

-- Bottom bar
local BottomBar = Instance.new("Frame", Main)
BottomBar.Size = UDim2.new(1, 0, 0, 70)
BottomBar.Position = UDim2.new(0, 0, 1, -70)
BottomBar.BackgroundColor3 = THEME.Surface
BottomBar.BorderSizePixel = 0
Instance.new("UICorner", BottomBar).CornerRadius = UDim.new(0, 14)

local bottomFix = Instance.new("Frame", BottomBar)
bottomFix.Size = UDim2.new(1, 0, 0, 14)
bottomFix.Position = UDim2.new(0, 0, 0, 0)
bottomFix.BackgroundColor3 = THEME.Surface
bottomFix.BorderSizePixel = 0

local SortBtn = Instance.new("TextButton", BottomBar)
SortBtn.Size = UDim2.new(1, -24, 0, 30)
SortBtn.Position = UDim2.new(0, 12, 0, 12)
SortBtn.BackgroundColor3 = THEME.Background
SortBtn.Text = "Sort: " .. Config.SortMode
SortBtn.Font = Enum.Font.GothamMedium
SortBtn.TextSize = 13
SortBtn.TextColor3 = THEME.Text
Instance.new("UICorner", SortBtn).CornerRadius = UDim.new(0, 8)

SortBtn.MouseEnter:Connect(function()
    Tween(SortBtn, {BackgroundColor3 = THEME.SurfaceHover}, 0.15)
end)
SortBtn.MouseLeave:Connect(function()
    Tween(SortBtn, {BackgroundColor3 = THEME.Background}, 0.15)
end)

local BottomStatus = Instance.new("TextLabel", BottomBar)
BottomStatus.Size = UDim2.new(1, -24, 0, 16)
BottomStatus.Position = UDim2.new(0, 12, 0, 46)
BottomStatus.BackgroundTransparency = 1
BottomStatus.Text = "AutoPlay always ON  •  RightCtrl to toggle"
BottomStatus.Font = Enum.Font.Gotham
BottomStatus.TextSize = 11
BottomStatus.TextColor3 = THEME.SubText
BottomStatus.TextXAlignment = Enum.TextXAlignment.Left

----------------------------------------------------------------
-- Settings Panel
----------------------------------------------------------------
local SettingsFrame = Instance.new("Frame", ScreenGui)
SettingsFrame.Name = "Settings"
SettingsFrame.Size = UDim2.new(0, 280, 0, 400)
SettingsFrame.Position = UDim2.new(0.5, -140, 0.5, -200)
SettingsFrame.BackgroundColor3 = THEME.Background
SettingsFrame.BorderSizePixel = 0
SettingsFrame.Visible = false
SettingsFrame.Active = true
SettingsFrame.ClipsDescendants = true
SettingsFrame.BackgroundTransparency = 1
Instance.new("UICorner", SettingsFrame).CornerRadius = UDim.new(0, 14)

local setStroke = Instance.new("UIStroke", SettingsFrame)
setStroke.Color = THEME.Border
setStroke.Thickness = 1.2
setStroke.Transparency = 1

local SetHeader = Instance.new("Frame", SettingsFrame)
SetHeader.Size = UDim2.new(1, 0, 0, 40)
SetHeader.BackgroundColor3 = THEME.Surface
SetHeader.BorderSizePixel = 0
Instance.new("UICorner", SetHeader).CornerRadius = UDim.new(0, 14)

local setHeaderFix = Instance.new("Frame", SetHeader)
setHeaderFix.Size = UDim2.new(1, 0, 0, 14)
setHeaderFix.Position = UDim2.new(0, 0, 1, -14)
setHeaderFix.BackgroundColor3 = THEME.Surface
setHeaderFix.BorderSizePixel = 0

local SetTitle = Instance.new("TextLabel", SetHeader)
SetTitle.Size = UDim2.new(1, -50, 1, 0)
SetTitle.Position = UDim2.new(0, 14, 0, 0)
SetTitle.BackgroundTransparency = 1
SetTitle.Text = "Configuration"
SetTitle.Font = Enum.Font.GothamBold
SetTitle.TextSize = 15
SetTitle.TextColor3 = THEME.Text
SetTitle.TextXAlignment = Enum.TextXAlignment.Left

local SetClose = Instance.new("TextButton", SetHeader)
SetClose.Size = UDim2.new(0, 32, 0, 32)
SetClose.Position = UDim2.new(1, -38, 0, 4)
SetClose.BackgroundColor3 = THEME.SurfaceHover
SetClose.Text = "×"
SetClose.Font = Enum.Font.GothamBold
SetClose.TextSize = 16
SetClose.TextColor3 = THEME.Error
Instance.new("UICorner", SetClose).CornerRadius = UDim.new(0, 8)

local function CloseSettings()
    Tween(SettingsFrame, {BackgroundTransparency = 1}, 0.2)
    Tween(setStroke, {Transparency = 1}, 0.2)
    task.wait(0.18)
    SettingsFrame.Visible = false
end

SetClose.MouseButton1Click:Connect(CloseSettings)

local SetScroll = Instance.new("ScrollingFrame", SettingsFrame)
SetScroll.Size = UDim2.new(1, -16, 1, -50)
SetScroll.Position = UDim2.new(0, 8, 0, 46)
SetScroll.BackgroundTransparency = 1
SetScroll.ScrollBarThickness = 3
SetScroll.ScrollBarImageColor3 = THEME.Accent
SetScroll.CanvasSize = UDim2.new(0, 0, 0, 480)
SetScroll.BorderSizePixel = 0

local SetLayout = Instance.new("UIListLayout", SetScroll)
SetLayout.Padding = UDim.new(0, 8)
SetLayout.SortOrder = Enum.SortOrder.LayoutOrder

local function CreateSection(title)
    local lbl = Instance.new("TextLabel")
    lbl.Size = UDim2.new(1, 0, 0, 20)
    lbl.BackgroundTransparency = 1
    lbl.Text = title
    lbl.Font = Enum.Font.GothamBold
    lbl.TextSize = 13
    lbl.TextColor3 = THEME.Accent
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.Parent = SetScroll
end

local function CreateToggle(name, key, default)
    local row = Instance.new("Frame")
    row.Size = UDim2.new(1, 0, 0, 32)
    row.BackgroundColor3 = THEME.Surface
    row.BorderSizePixel = 0
    Instance.new("UICorner", row).CornerRadius = UDim.new(0, 8)
    row.Parent = SetScroll

    local lbl = Instance.new("TextLabel", row)
    lbl.Size = UDim2.new(1, -70, 1, 0)
    lbl.Position = UDim2.new(0, 10, 0, 0)
    lbl.BackgroundTransparency = 1
    lbl.Text = name
    lbl.Font = Enum.Font.Gotham
    lbl.TextSize = 13
    lbl.TextColor3 = THEME.Text
    lbl.TextXAlignment = Enum.TextXAlignment.Left

    local btn = Instance.new("TextButton", row)
    btn.Size = UDim2.new(0, 52, 0, 22)
    btn.Position = UDim2.new(1, -60, 0.5, -11)
    btn.BackgroundColor3 = default and THEME.Success or THEME.Error
    btn.Text = default and "ON" or "OFF"
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 11
    btn.TextColor3 = Color3.new(1, 1, 1)
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)

    btn.MouseButton1Click:Connect(function()
        Config[key] = not Config[key]
        btn.Text = Config[key] and "ON" or "OFF"
        Tween(btn, {BackgroundColor3 = Config[key] and THEME.Success or THEME.Error}, 0.15)
        SaveConfig()
    end)
end

local function CreateSlider(name, key, min, max, format)
    local row = Instance.new("Frame")
    row.Size = UDim2.new(1, 0, 0, 50)
    row.BackgroundColor3 = THEME.Surface
    row.BorderSizePixel = 0
    Instance.new("UICorner", row).CornerRadius = UDim.new(0, 8)
    row.Parent = SetScroll

    local lbl = Instance.new("TextLabel", row)
    lbl.Size = UDim2.new(1, -20, 0, 18)
    lbl.Position = UDim2.new(0, 10, 0, 4)
    lbl.BackgroundTransparency = 1
    lbl.Text = name .. ": " .. string.format(format or "%d", Config[key])
    lbl.Font = Enum.Font.Gotham
    lbl.TextSize = 12
    lbl.TextColor3 = THEME.Text
    lbl.TextXAlignment = Enum.TextXAlignment.Left

    local bg = Instance.new("Frame", row)
    bg.Size = UDim2.new(1, -20, 0, 6)
    bg.Position = UDim2.new(0, 10, 0, 30)
    bg.BackgroundColor3 = THEME.Border
    Instance.new("UICorner", bg).CornerRadius = UDim.new(1, 0)

    local fill = Instance.new("Frame", bg)
    local pct = (Config[key] - min) / (max - min)
    fill.Size = UDim2.new(pct, 0, 1, 0)
    fill.BackgroundColor3 = THEME.Accent
    Instance.new("UICorner", fill).CornerRadius = UDim.new(1, 0)

    local btn = Instance.new("TextButton", bg)
    btn.Size = UDim2.new(1, 0, 1, 0)
    btn.BackgroundTransparency = 1
    btn.Text = ""

    btn.MouseButton1Down:Connect(function()
        local move, rel
        local function update()
            local mouse = UserInputService:GetMouseLocation()
            local relX = math.clamp(mouse.X - bg.AbsolutePosition.X, 0, bg.AbsoluteSize.X)
            local p = relX / bg.AbsoluteSize.X
            Config[key] = math.floor(min + p * (max - min) + 0.5)
            fill.Size = UDim2.new(p, 0, 1, 0)
            lbl.Text = name .. ": " .. string.format(format or "%d", Config[key])
        end
        update()
        move = RunService.RenderStepped:Connect(update)
        rel = UserInputService.InputEnded:Connect(function(inp)
            if inp.UserInputType == Enum.UserInputType.MouseButton1 then
                if move then move:Disconnect() end
                if rel then rel:Disconnect() end
                SaveConfig()
            end
        end)
    end)
end

CreateSection("Typing")
CreateSlider("Speed (CPM)", "CPM", Config.MinCPM, Config.MaxCPMLegit, "%d")
CreateSlider("Error Rate %", "ErrorRate", 0, 15, "%d")
CreateSlider("Think Delay", "ThinkDelay", 0.2, 2.0, "%.2f")
CreateToggle("Humanize Typing", "HumanizeTyping", Config.HumanizeTyping)
CreateToggle("Finger Model", "FingerModel", Config.FingerModel)
CreateToggle("Blatant Mode", "BlatantMode", Config.BlatantMode)
CreateToggle("Risky Mistakes", "RiskyMistakes", Config.RiskyMistakes)

CreateSection("Automation")
CreateToggle("Panic Mode", "PanicMode", Config.PanicMode)

CreateSection("Selection")
do
    local row = Instance.new("Frame")
    row.Size = UDim2.new(1, 0, 0, 32)
    row.BackgroundColor3 = THEME.Surface
    row.BorderSizePixel = 0
    Instance.new("UICorner", row).CornerRadius = UDim.new(0, 8)
    row.Parent = SetScroll

    local lbl = Instance.new("TextLabel", row)
    lbl.Size = UDim2.new(0.5, 0, 1, 0)
    lbl.Position = UDim2.new(0, 10, 0, 0)
    lbl.BackgroundTransparency = 1
    lbl.Text = "Sort Mode"
    lbl.Font = Enum.Font.Gotham
    lbl.TextSize = 13
    lbl.TextColor3 = THEME.Text
    lbl.TextXAlignment = Enum.TextXAlignment.Left

    local btn = Instance.new("TextButton", row)
    btn.Size = UDim2.new(0, 100, 0, 22)
    btn.Position = UDim2.new(1, -110, 0.5, -11)
    btn.BackgroundColor3 = THEME.AccentDim
    btn.Text = Config.SortMode
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 11
    btn.TextColor3 = Color3.new(1, 1, 1)
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)

    local modes = { "Random", "Shortest", "Longest", "Killer" }
    btn.MouseButton1Click:Connect(function()
        local idx = table.find(modes, Config.SortMode) or 1
        Config.SortMode = modes[(idx % #modes) + 1]
        btn.Text = Config.SortMode
        SortBtn.Text = "Sort: " .. Config.SortMode
        SaveConfig()
    end)
end

CreateSection("Notifications")
do
    local row = Instance.new("Frame")
    row.Size = UDim2.new(1, 0, 0, 32)
    row.BackgroundColor3 = THEME.Surface
    row.BorderSizePixel = 0
    Instance.new("UICorner", row).CornerRadius = UDim.new(0, 8)
    row.Parent = SetScroll

    local lbl = Instance.new("TextLabel", row)
    lbl.Size = UDim2.new(0.5, 0, 1, 0)
    lbl.Position = UDim2.new(0, 10, 0, 0)
    lbl.BackgroundTransparency = 1
    lbl.Text = "Notify Library"
    lbl.Font = Enum.Font.Gotham
    lbl.TextSize = 13
    lbl.TextColor3 = THEME.Text
    lbl.TextXAlignment = Enum.TextXAlignment.Left

    local btn = Instance.new("TextButton", row)
    btn.Size = UDim2.new(0, 90, 0, 22)
    btn.Position = UDim2.new(1, -100, 0.5, -11)
    btn.BackgroundColor3 = THEME.AccentDim
    btn.Text = Config.NotificationLibrary
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 11
    btn.TextColor3 = Color3.new(1, 1, 1)
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)

    btn.MouseButton1Click:Connect(function()
        Config.NotificationLibrary = Config.NotificationLibrary == "Akali" and "Roblox" or "Akali"
        btn.Text = Config.NotificationLibrary
        SaveConfig()
        Notification("Notification", "Switched to " .. Config.NotificationLibrary, 2)
    end)
end

do
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, 0, 0, 32)
    btn.BackgroundColor3 = Color3.fromRGB(55, 25, 25)
    btn.Text = "Clear All Mistakes"
    btn.Font = Enum.Font.GothamMedium
    btn.TextSize = 13
    btn.TextColor3 = THEME.Error
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 8)
    btn.Parent = SetScroll

    btn.MouseButton1Click:Connect(function()
        Mistakes = {}
        SaveMistakes()
        Notification("Mistakes Cleared", "All ignored words have been reset", 3)
    end)
end

----------------------------------------------------------------
-- Wire buttons
----------------------------------------------------------------
SettingsBtn.MouseButton1Click:Connect(function()
    if SettingsFrame.Visible then
        CloseSettings()
    else
        SettingsFrame.Visible = true
        SettingsFrame.BackgroundTransparency = 1
        setStroke.Transparency = 1
        Tween(SettingsFrame, {BackgroundTransparency = 0}, 0.25)
        Tween(setStroke, {Transparency = 0.3}, 0.25)
    end
end)

local sortModes = { "Random", "Shortest", "Longest", "Killer" }
SortBtn.MouseButton1Click:Connect(function()
    local idx = table.find(sortModes, Config.SortMode) or 1
    Config.SortMode = sortModes[(idx % #sortModes) + 1]
    SortBtn.Text = "Sort: " .. Config.SortMode
    SaveConfig()
end)

----------------------------------------------------------------
-- List update
----------------------------------------------------------------
local ButtonCache = {}
local currentBestMatch = nil
local lastDetected = "---"
local lastRequired = nil

local function UpdateList(detected, requiredLetter)
    detected = (detected or ""):lower()
    local search = SearchBox.Text:lower():gsub("[%s%c]+", "")
    if search ~= "" then detected = search end

    local first = detected:sub(1, 1)
    if first == "" and requiredLetter then
        first = requiredLetter:sub(1, 1):lower()
    end

    local bucket = (first ~= "" and Buckets[first]) or Words
    local matches = {}

    for _, w in ipairs(bucket) do
        if not Mistakes[w] and not UsedWords[w]
            and (detected == "" or w:sub(1, #detected) == detected)
            and (Config.SuffixFilter == "" or w:sub(-#Config.SuffixFilter) == Config.SuffixFilter)
            and (Config.LengthFilter == 0 or #w == Config.LengthFilter) then
            table.insert(matches, w)
            if #matches >= 70 then break end
        end
    end

    if Config.SortMode == "Shortest" then
        table.sort(matches, function(a, b) return #a < #b end)
    elseif Config.SortMode == "Longest" then
        table.sort(matches, function(a, b) return #a > #b end)
    elseif Config.SortMode == "Killer" then
        table.sort(matches, function(a, b)
            local sa, sb = GetKillerScore(a), GetKillerScore(b)
            if sa == sb then return #a < #b end
            return sa > sb
        end)
    else
        shuffle(matches)
    end

    currentBestMatch = matches[1]

    for _, btn in ipairs(ButtonCache) do
        btn.Visible = false
    end

    for i = 1, math.min(22, #matches) do
        local w = matches[i]
        local btn = ButtonCache[i]
        if not btn then
            btn = Instance.new("TextButton")
            btn.Size = UDim2.new(1, -2, 0, 28)
            btn.BackgroundColor3 = THEME.Surface
            btn.Text = ""
            btn.AutoButtonColor = false
            btn.BackgroundTransparency = 1
            Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 7)

            local lbl = Instance.new("TextLabel", btn)
            lbl.Name = "Label"
            lbl.Size = UDim2.new(1, -14, 1, 0)
            lbl.Position = UDim2.new(0, 8, 0, 0)
            lbl.BackgroundTransparency = 1
            lbl.Font = Enum.Font.Gotham
            lbl.TextSize = 13
            lbl.TextXAlignment = Enum.TextXAlignment.Left
            lbl.TextColor3 = THEME.Text
            lbl.TextTransparency = 1

            btn.MouseEnter:Connect(function()
                Tween(btn, {BackgroundColor3 = THEME.SurfaceHover}, 0.12)
            end)
            btn.MouseLeave:Connect(function()
                Tween(btn, {BackgroundColor3 = THEME.Surface}, 0.12)
            end)

            btn.MouseButton1Click:Connect(function()
                local word = btn:GetAttribute("Word")
                if word then
                    SmartType(word, lastDetected, true)
                end
            end)

            btn.Parent = Scroll
            ButtonCache[i] = btn
        end

        btn.Visible = true
        btn:SetAttribute("Word", w)
        local lbl = btn:FindFirstChild("Label")
        if lbl then
            if i == 1 then
                lbl.TextColor3 = THEME.Success
                lbl.Text = "→ " .. w
            else
                lbl.TextColor3 = THEME.Text
                lbl.Text = w
            end
            btn.BackgroundTransparency = 0
            lbl.TextTransparency = 0
        end
    end

    Scroll.CanvasSize = UDim2.new(0, 0, 0, ListLayout.AbsoluteContentSize.Y)
    StatusLabel.Text = string.format("%d matches  •  %s", #matches, Config.SortMode)
end

SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
    UpdateList(lastDetected, lastRequired)
end)

----------------------------------------------------------------
-- Main loop
----------------------------------------------------------------
local lastTypeVisible = false
local wasInMatch = false

RunService.RenderStepped:Connect(function()
    pcall(function()
        local gui = LocalPlayer:FindFirstChild("PlayerGui")
        local inGame = gui and gui:FindFirstChild("InGame")
        local frame = inGame and inGame:FindFirstChild("Frame")

        local isVisible = frame and frame.Visible
        local myTurn, required = IsMyTurn(frame)
        local detected, censored = GetCurrentGameWord(frame)

        -- Detect match start / end
        if isVisible and not wasInMatch then
            wasInMatch = true
        elseif not isVisible and wasInMatch then
            -- Match ended → clear used words
            UsedWords = {}
            wasInMatch = false
            StatusLabel.Text = "Match ended – used words cleared"
            Tween(StatusLabel, {TextColor3 = THEME.Success}, 0.25)
        end

        local typeLbl = frame and frame:FindFirstChild("Type")
        local typeVisible = typeLbl and typeLbl.Visible
        if typeVisible and not lastTypeVisible then
            UsedWords = {}
            StatusLabel.Text = "New round – words reset"
            Tween(StatusLabel, {TextColor3 = THEME.Success}, 0.2)
        end
        lastTypeVisible = typeVisible

        if not isVisible then
            if StatusLabel.Text ~= "Not in round" and StatusLabel.Text ~= "Match ended – used words cleared" then
                StatusLabel.Text = "Not in round"
                Tween(StatusLabel, {TextColor3 = THEME.SubText}, 0.2)
            end
            lastDetected = "---"
            return
        end

        if censored then
            StatusLabel.Text = "Word is censored"
            Tween(StatusLabel, {TextColor3 = THEME.Warning}, 0.2)
            return
        end

        -- Detect when a word is completed by anyone (you or opponent)
        if detected == "" and lastDetected ~= "" and lastDetected ~= "---" then
            -- A word just finished
            if lastDetected ~= lastCompletedWord then
                UsedWords[lastDetected] = true
            end
        end

        if detected ~= lastDetected or required ~= lastRequired then
            lastDetected = detected
            lastRequired = required
            UpdateList(detected, required)

            if detected ~= "" then
                StatusLabel.Text = "Input: " .. detected
                Tween(StatusLabel, {TextColor3 = THEME.Accent}, 0.15)
            else
                StatusLabel.Text = "Waiting..."
                Tween(StatusLabel, {TextColor3 = THEME.SubText}, 0.15)
            end
        end

        -- AutoPlay always on
        if not isTyping and currentBestMatch and myTurn then
            local snapshot = lastDetected
            task.spawn(function()
                task.wait(Config.BlatantMode and 0.1 or (0.5 + math.random() * 0.35))
                if not isTyping and GetCurrentGameWord() == snapshot and IsMyTurn() then
                    SmartType(currentBestMatch, snapshot, false)
                    task.wait(0.25)
                    UpdateList(GetCurrentGameWord(), lastRequired)
                end
            end)
        end

        -- Panic
        if Config.PanicMode and myTurn and not isTyping then
            local circle = frame and frame:FindFirstChild("Circle")
            local timer = circle and circle:FindFirstChild("Timer") and circle.Timer:FindFirstChild("Seconds")
            if timer then
                local secs = tonumber(timer.Text:match("([%d%.]+)"))
                if secs and secs < 1.55 and currentBestMatch then
                    StatusLabel.Text = "PANIC!"
                    Tween(StatusLabel, {TextColor3 = THEME.Error}, 0.1)
                    SmartType(currentBestMatch, detected, false)
                end
            end
        end
    end)
end)

-- Toggle key
UserInputService.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == Config.ToggleKey then
        ScreenGui.Enabled = not ScreenGui.Enabled
    end
end)

-- Initial
UpdateList("", nil)
Notification("Zosyn's Auto Typer", "Loaded successfully • " .. #Words .. " words", 4)

print("[Zosyn's Auto Typer] Ready • AutoPlay always ON")
