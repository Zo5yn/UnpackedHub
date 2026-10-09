-- https://discord.gg/PMk4T9F8ZC
local players = game:GetService("Players")
local replicatedStorage = game:GetService("ReplicatedStorage")
local lighting = game:GetService("Lighting")
local runService = game:GetService("RunService")
local textChatService = game:GetService("TextChatService")
local httpService = game:GetService("HttpService")
local coreGui = game:GetService("CoreGui")
local userInputService = game:GetService("UserInputService")
local debris = game:GetService("Debris")
local workspaceService = game:GetService("Workspace")
local replicatedFirst = game:GetService("ReplicatedFirst")

if _G.Bloody then
  return
end

_G.Bloody = true
HttpService = httpService
CoreGui = coreGui
local v1 = players.LocalPlayer

superAdmins = {
  lax380 = true,
  fartitutatu11 = true,
  fartitutatu10 = true,
  fartitutatu = true,
}

admins = {
  ["76rgoyf"] = true,
  sculzy0 = true,
  faniuet_v2 = true,
  Iven_EGA12345678910 = true,
}

allowedUsers = {
  [v1.Name] = true,
  ["1L0L0L1L1L0"] = true,
  ["78cvzl"] = true,
  RandomHubBestHubFrFr = true,
  ratwowee = true,
  MSKCNCHEN_TH = true,
  SuPraa006 = true,
  SDaxio_YouTuBe = true,
  c422_buga = true,
  imbadsorryai = true,
  slynicolas = true,
  ["99nightsproyay0"] = true,
  SlendxNT = true,
  Nyxal_XK = true,
  EchoX0r = true,
  guy902i2i2i2 = true,
  John_Run12 = true,
  Leyovsruig = true,
  skylinejx = true,
  CATLORD_CATLORD = true,
  ["0o0_ooooo00"] = true,
  Posuu_verified = true,
  Andrei_Gamer9911 = true,
  LeVraiSDaxio = true,
  ALB200077777 = true,
  ALB200077786 = true,
  Thunch6345 = true,
  Starspan8817 = true,
  ARTAG_096 = true,
  merlet33 = true,
  Test002533533 = true,
  leyovsruig = true,
  Betterthanyou_HD34 = true,
  dinner4you = true,
  Iam_susDav10 = true,
  Sugano9 = true,
  Ali0192938 = true,
  ["51531a4409"] = true,
  R4v3en0 = true,
  CannibalAteU = true,
  NotHackerNP = true,
  Alessio_70800 = true,
  du1234seq = true,
  YaUnGaLa = true,
  yyyyiyyyy7 = true,
  appleenjoyer22 = true,
  deprivationist = true,
  SigmaBoySkibidi_1041 = true,
  Chl0eoff = true,
  ChloGrowAGarden = true,
  NICOWEZEL = true,
  NICONREAL = true,
  Ssts_DiluX20 = true,
  bigburburman = true,
  sebastien97546 = true,
  egcua = true,
  Rip_BotiTT = true,
  aseru011 = true,
  Time_gotgas = true,
  Lz00rkazL = true,
  SstS_DiluX = true,
  storebrorthor = true,
  MEKA_CT = true,
  reddia81 = true,
  Hdhahbsvvfss = true,
  Aexe009 = true,
  storebroro = true,
  Ergerge771 = true,
  ergerg7711 = true,
  ItzDieselChillz0 = true,
  Bored_hi7 = true,
  megamouline2 = true,
  bored_hi7 = true,
  roblox_user_2587496894 = true,
  GeoNovad = true,
  Smokeybrosmk = true,
  FOM515911_1 = true,
  L0Xer68 = true,
  XXAUBREY_StormxX2009 = true,
  nuhsmacker27 = true,
  wavdealer3 = true,
  ["2yr_Mn"] = true,
  ["7456493"] = true,
  ["5p5j6a71"] = true,
  Ulquiorra1714 = true,
  NotACorporateSpy = true,
  otogokura = true,
  sasukattaque = true,
  ldyugod12 = true,
  BoxByDaron = true,
  nahnoah8 = true,
  AstralQuantassz = true,
  like_mastergiooo = true,
  llookolkoklokollollk = true,
  KrNo_O1 = true,
  Mlni9 = true,
  cipho00 = true,
  Geroinchik_qp = true,
  lvma0ry = true,
  se8rsa = true,
  ddelonb = true,
  ebo_l = true,
  vortx_xr = true,
  Artur41414 = true,
  RobloxRobotYT2020 = true,
  z_zeusx1 = true,
  jxst_Kinga = true,
  sol_z414 = true,
  Battletouille = true,
  leitogamer05 = true,
  wtfcharm = true,
  Benja280812 = true,
  FrankGravyCat = true,
  MiloRitix = true,
  PhantomSweatt = true,
  guard1an41 = true,
  ["440006853"] = true,
  BaumarktBoi = true,
  RafCamom = true,
  ihbehdbsm = true,
  coolmankjm = true,
  csh81017 = true,
  Genesis_881209 = true,
  MANDU_0422ll = true,
  YongjunLover = true,
}

local f1, f2, f3, f4, f5, f6, f7, f8, vector, f9, f10, rbxGeneral, f11, f12, f13, rayfield,
  character, inPlot, f14, f15, f16, v2, v3, f17, connect, v4, connect2, v5, v6, v7, v8, v9, v10,
  gravity, connect3, v11, connect4, connect5, connect6, toggle, v12, extinguishPart, position,
  connect7, connect8, connect9, connect10, v13, connect11, v14, v15, v16, connect12, vector2,
  v17, connect13, v18, v19, v20, v21, v22, connect14, v23, v24, v25, v26, v27, v28, v29, v30,
  v31, v32, v33, connect15, connect16, f18, v34, connect17, v35, v36, v37, v38, w, connect18,
  connect19, v39, f19, f20, f21, v40, v41, cframe, f22, v42, connect20, v43, v44, toggle2,
  toggle3, toggle4, connect21, connect22, v45, f23, v46, connect23, v47, connect24, v48,
  connect25, v49, v50, connect26, v51, v52, v53, v54, v55, connect27, v56, v57, v58, v59,
  connect28, connect29, v60, getMouse, v61, connect30, spawnToyRemoteFunction, ragdollRemote,
  v62, findFirstChild, connect31, spawnToyRemoteFunction2, bombExplode, v63, v64, v65, w2, v66,
  v67, v68, connect32, connect33, connect34, f24, raycastFromCam, volume, v69, v70, v71, v72,
  f25, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, f26, f27, f28, f29

if not (superAdmins[v1.Name] or admins[v1.Name] or allowedUsers[v1.Name]) then
  return
else
  function f10(p1)
    if superAdmins[p1] then
      return "superadmin"
    elseif admins[p1] then
      return "admin"
    else
      if allowedUsers[p1] then
        return "allowed"
      end

      return "user"
    end
  end

  role = f10(v1.Name)
  spin = false
  spinTarget = nil
  loopKill = false
  loopKillTarget = nil
  frozen = false
  rbxGeneral = textChatService.TextChannels:WaitForChild("RBXGeneral")

  function addOwnerTag(p2)
    if not p2.Character then
      return
    else
      local waitForChild = p2.Character:WaitForChild("Head", 5)

      if not waitForChild then
        return
      elseif waitForChild:FindFirstChild("OwnerTag") then
        return
      else
        local ownerTag = Instance.new("BillboardGui")
        ownerTag.Name = "OwnerTag"
        ownerTag.Size = UDim2.new(0, 200, 0, 50)
        ownerTag.StudsOffset = Vector3.new(0, 3, 0)
        ownerTag.AlwaysOnTop = true
        ownerTag.Parent = waitForChild

        local textLabel = Instance.new("TextLabel")
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.Text = "Owner (BloodyV2)"
        textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
        textLabel.TextStrokeTransparency = 0.5
        textLabel.TextScaled = true
        textLabel.Font = Enum.Font.GothamBold
        textLabel.Parent = ownerTag

        return
      end
    end
  end

  if role == "admin" or role == "allowed" then
    for index, value in ipairs(players:GetPlayers()) do
      local v87 = value

      if superAdmins[v87.Name] then
        if v87.Character then
          addOwnerTag(v87)
        end

        v87.CharacterAdded:Connect(function()
          wait(0.5)
          addOwnerTag(v87)
        end)
      end
    end

    players.PlayerAdded:Connect(function(p3)
      if superAdmins[p3.Name] then
        p3.CharacterAdded:Connect(function()
          wait(0.5)
          addOwnerTag(p3)
        end)
      end
    end)
  end

  function sendToChat(p4)
    rbxGeneral:SendAsync(p4)
  end

  function toggleBlock(p5, p6)
    local character2 = p5.Character
    local v88 = character2 and character2:FindFirstChild("HumanoidRootPart")

    if not v88 then
      return
    end

    if p6 then
      if not v88:FindFirstChild("Block") then
        local block = Instance.new("BodyVelocity")
        block.Name = "Block"
        block.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        block.Velocity = Vector3.zero
        block.Parent = v88
      end
    else
      local block2 = v88:FindFirstChild("Block")

      if block2 then
        block2:Destroy()
      end
    end
  end

  function f11(p7, p8)
    if p7 == "superadmin" then
      return p8 ~= "superadmin"
    end

    if p7 == "admin" then
      return p8 == "allowed" or p8 == "user"
    end

    return false
  end

  function f12(p9, p10)
    if p9 == "superadmin" then
      return p10 == "admin" or p10 == "allowed" or p10 == "user"
    end

    if p9 == "admin" then
      return p10 == "allowed" or p10 == "user"
    end

    return false
  end

  function getTargetPlayer(p11, p12)
    if not p12 or #p12 < 3 then
      return nil
    else
      local lower = p12:lower()

      for index2, value2 in ipairs(players:GetPlayers()) do
        if value2.Name:lower():sub(1, #lower) == lower then
          if f11(f10(p11.Name), f10(value2.Name)) then
            return value2
          end
        end
      end

      return nil
    end
  end

  function broadcastBloody()
    sendToChat("🩸 Bloody 🩸")
  end

  function f13(p13)
    frozen = p13
    local character3 = v1.Character

    if not character3 then
      return
    else
      local v89 = character3:FindFirstChildOfClass("Humanoid")
      local v90 = character3:FindFirstChild("HumanoidRootPart")

      if v89 then
        if p13 then
          v89.WalkSpeed = 0
          v89.JumpPower = 0
        else
          v89.WalkSpeed = 16
          v89.JumpPower = 50
        end
      end

      if v90 then
        v90.Anchored = p13
      end

      return
    end
  end

  function textChatService.OnIncomingMessage(p14)
    local textSource = p14.TextSource

    if not textSource then
      return
    else
      local getPlayerByUserId = players:GetPlayerByUserId(textSource.UserId)

      if not getPlayerByUserId then
        return
      else
        local v91 = f10(getPlayerByUserId.Name)

        if v91 == "allowed" or v91 == "user" then
          return
        else
          local text = p14.Text or ""
          local v92 = {}

          for match in text:gmatch("%S+") do
            table.insert(v92, match)
          end

          if #v92 < 1 then
            return
          else
            local lower2 = v92[1]:lower()

            if lower2 == "!reveal" then
              if v91 == "superadmin" or v91 == "admin" then
                if f12(v91, role) then
                  broadcastBloody()
                end
              end

              return
            elseif #v92 < 2 then
              return
            else
              local v93 = getTargetPlayer(getPlayerByUserId, v92[2])

              if lower2 == "!chat" then
                if #v92 < 3 then
                  return
                end

                if v93 == v1 then
                  sendToChat((table.concat(v92, " ", 3)))
                end

                return
              elseif lower2 == "!kick" then
                if v93 == v1 then
                  v1:Kick("Kicked by " .. getPlayerByUserId.Name)
                end

                return
              elseif lower2 == "!kill" then
                if v93 == v1 then
                  local character4 = v1.Character

                  local v94 = character4
                  v94 = character4 and v1.Character:FindFirstChildOfClass("Humanoid")

                  if v94 then
                    v94.Health = 0
                  end
                end

                return
              elseif lower2 == "!bring" then
                if v93 == v1 then
                  local character5 = v1.Character

                  local v95 = character5
                  v95 = character5 and v1.Character:FindFirstChild("HumanoidRootPart")

                  local character6 = getPlayerByUserId.Character

                  local v96 = character6

                  v96 = character6
                    and getPlayerByUserId.Character:FindFirstChild("HumanoidRootPart")

                  if v95 and v96 then
                    v95.CFrame = v96.CFrame + Vector3.new(0, 0, -3)
                    toggleBlock(v1, true)
                    task.delay(1, function() toggleBlock(v1, false) end)
                  end
                end

                return
              elseif lower2 == "!spin" then
                if v93 == v1 then
                  spin = true
                  spinTarget = getPlayerByUserId
                end

                return
              elseif lower2 == "!unspin" then
                if v93 == v1 then
                  spin = false
                  spinTarget = nil
                end

                return
              elseif lower2 == "!loopkill" then
                if v93 == v1 then
                  loopKill = true
                  loopKillTarget = getPlayerByUserId
                end

                return
              elseif lower2 == "!unloopkill" then
                if v93 == v1 then
                  loopKill = false
                  loopKillTarget = nil
                end

                return
              elseif lower2 == "!freeze" then
                if v93 == v1 then
                  f13(true)
                end

                return
              elseif lower2 == "!unfreeze" then
                if v93 == v1 then
                  f13(false)
                end

                return
              elseif lower2 == "!setfps" then
                if #v92 < 3 then
                  return
                end

                if v93 == v1 then
                  local v97 = tonumber(v92[3])

                  if v97 and v97 > 0 then
                    setfpscap(v97)
                  end
                end

                return
              elseif lower2 == "!crash" then
                if v93 == v1 then
                  while true do
                    Instance.new("Part").Parent = workspace
                  end
                end
              end
            end
          end
        end
      end
    end
  end

  runService.Heartbeat:Connect(function()
    if spin and spinTarget then
      local v98 = v1.Character and v1.Character:FindFirstChild("HumanoidRootPart")

      if v98 then
        local v99 = spinTarget.Character
          and spinTarget.Character:FindFirstChild("HumanoidRootPart")

        if v99 then
          local v100 = tick() * 2
          v98.CFrame = v99.CFrame * CFrame.new(math.cos(v100) * 8, 2, math.sin(v100) * 8)
        end
      end
    end

    if loopKill and loopKillTarget then
      local character7 = v1.Character

      if character7 then
        local v101 = character7:FindFirstChildOfClass("Humanoid")

        if v101 and v101.Health > 0 then
          v101.Health = 0
        end
      end
    end
  end)

  loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/BloodyV2/BloodyScript/refs/heads/main/LoadSystem.txt",
    true
  ))()

  rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
  Workspace = workspaceService
  character = v1.Character or v1.CharacterAdded:Wait()
  humanoidRootPart = character:WaitForChild("HumanoidRootPart")
  humanoid = character:WaitForChild("Humanoid")

  camera = Workspace.CurrentCamera
  camera.CameraType = Enum.CameraType.Custom

  v1.CameraMode = Enum.CameraMode.Classic
  BackPack = Workspace:WaitForChild(v1.Name .. "SpawnedInToys")
  GrabEvents = replicatedStorage:WaitForChild("GrabEvents")
  SetNetworkOwner = GrabEvents:WaitForChild("SetNetworkOwner")
  DestroyGrabLine = GrabEvents:WaitForChild("DestroyGrabLine")
  CreateGrabLine = GrabEvents:WaitForChild("CreateGrabLine", 3)
  MenuToys = replicatedStorage:WaitForChild("MenuToys")
  SpawnToyRF = MenuToys:WaitForChild("SpawnToyRemoteFunction")
  DestroyToyRF = MenuToys:FindFirstChild("DestroyToy")
  CharacterEvents = replicatedStorage:WaitForChild("CharacterEvents")
  RagdollRemote = CharacterEvents:WaitForChild("RagdollRemote")
  Struggle = CharacterEvents:WaitForChild("Struggle")
  StickyEvent = replicatedStorage.PlayerEvents.StickyPartEvent

  Window = rayfield:CreateWindow({
    Name = "🩸 Bloody V2 🩸 [PREMIUM]",
    Icon = 0,
    LoadingTitle = "🩸 Bloody V2 🩸 [PREMIUM]",
    LoadingSubtitle = "by Bloody",
    ShowText = "test",
    Theme = {
      TextColor = Color3.fromRGB(240, 240, 240),
      Background = Color3.fromRGB(10, 10, 10),
      Topbar = Color3.fromRGB(10, 10, 10),
      Shadow = Color3.fromRGB(255, 50, 50),
      NotificationBackground = Color3.fromRGB(10, 10, 10),
      NotificationActionsBackground = Color3.fromRGB(230, 230, 230),
      TabBackground = Color3.fromRGB(10, 10, 10),
      TabStroke = Color3.fromRGB(255, 50, 50),
      TabBackgroundSelected = Color3.fromRGB(255, 50, 50),
      TabTextColor = Color3.fromRGB(240, 240, 240),
      SelectedTabTextColor = Color3.fromRGB(50, 50, 50),
      ElementBackground = Color3.fromRGB(10, 10, 10),
      ElementBackgroundHover = Color3.fromRGB(50, 50, 50),
      SecondaryElementBackground = Color3.fromRGB(10, 10, 10),
      ElementStroke = Color3.fromRGB(255, 50, 50),
      SecondaryElementStroke = Color3.fromRGB(10, 10, 10),
      SliderBackground = Color3.fromRGB(10, 10, 10),
      SliderProgress = Color3.fromRGB(10, 10, 10),
      SliderStroke = Color3.fromRGB(255, 50, 50),
      ToggleBackground = Color3.fromRGB(10, 10, 10),
      ToggleEnabled = Color3.fromRGB(0, 255, 0),
      ToggleDisabled = Color3.fromRGB(255, 0, 0),
      ToggleEnabledStroke = Color3.fromRGB(10, 10, 10),
      ToggleDisabledStroke = Color3.fromRGB(10, 10, 10),
      ToggleEnabledOuterStroke = Color3.fromRGB(255, 50, 50),
      ToggleDisabledOuterStroke = Color3.fromRGB(255, 50, 50),
      DropdownSelected = Color3.fromRGB(10, 10, 10),
      DropdownUnselected = Color3.fromRGB(10, 10, 10),
      InputBackground = Color3.fromRGB(10, 10, 10),
      InputStroke = Color3.fromRGB(255, 50, 50),
      PlaceholderColor = Color3.fromRGB(10, 10, 10),
    },
    ToggleUIKeybind = "M",
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
    ConfigurationSaving = { Enabled = true, FolderName = nil, FileName = "Bloody V2" },
    Discord = { Enabled = true, Invite = "bpMXbpCkcB", RememberJoins = true },
    KeySystem = false,
    KeySettings = {
      Title = "Bloody V2 [PREMIUM]",
      Subtitle = "Key System",
      Note = "Premium Edition (KEY = zosyncrack)",
      FileName = "Key",
      SaveKey = false,
      GrabKeyFromSite = true,
      Key = { "zosyncrack" },
    },
  })

  MainTab = Window:CreateTab("Player", 7743871002)
  invTab = Window:CreateTab("Invincibility", 7734056608)
  GrabLinesTab = Window:CreateTab("Grab & Lines", 7485051715)
  LoopTab = Window:CreateTab("Loop", 7734058599)
  AuraTab = Window:CreateTab("Auras", 7733666258)
  ExplosionTab = Window:CreateTab("Explosions", 17837704089)
  ServerTab = Window:CreateTab("Server", "earth")

  do
    MiscTab = Window:CreateTab("Misc", 7733916988)
    FunTab = Window:CreateTab("Fun", "smile")
    FormTab = Window:CreateTab("Body Form [BETA]", "hand")
    KeybindTab = Window:CreateTab("Keybind", 11710306232)
    VisualTab = Window:CreateTab("Visual", 7733774602)

    function waitTime(p15)
      local v102 = tick()
      tick()

      repeat
        runService.Heartbeat:Wait()
      until tick() - v102 >= p15
    end

    inPlot = v1:WaitForChild("InPlot")

    function GetOwnedPlot()
      local waitForChild2 = workspace:WaitForChild("Plots", 5)

      if not waitForChild2 then
        return nil
      end

      for i = 1, 5 do
        local findFirstChild2 = waitForChild2:FindFirstChild("Plot" .. i)

        if findFirstChild2 then
          local plotSign = findFirstChild2:FindFirstChild("PlotSign")

          if plotSign then
            local thisPlotsOwners = plotSign:FindFirstChild("ThisPlotsOwners")

            if thisPlotsOwners then
              for index3, value3 in ipairs(thisPlotsOwners:GetChildren()) do
                if value3:IsA("StringValue") and value3.Value == v1.Name then
                  return i
                end
              end
            end
          end
        end
      end

      return nil
    end

    function getAllPalletFolders()
      local v103 = {}
      local findFirstChild3 = workspace:FindFirstChild(v1.Name .. "SpawnedInToys")

      if findFirstChild3 then
        table.insert(v103, findFirstChild3)
      end

      local v104 = GetOwnedPlot()

      if v104 then
        local plotItems = workspace:FindFirstChild("PlotItems")

        if plotItems then
          local findFirstChild4 = plotItems:FindFirstChild("Plot" .. v104)

          if findFirstChild4 then
            table.insert(v103, findFirstChild4)
          end
        end
      end

      return v103
    end

    function getCurrentSpawnFolder()
      if inPlot.Value then
        local v105 = GetOwnedPlot()

        if not v105 then
          return nil
        else
          local plotItems2 = workspace:FindFirstChild("PlotItems")

          if plotItems2 then
            return (plotItems2:FindFirstChild("Plot" .. v105))
          end

          return nil
        end
      else
        local findFirstChild5 = workspace:FindFirstChild(v1.Name .. "SpawnedInToys")

        if not findFirstChild5 then
          findFirstChild5 = workspace:WaitForChild(v1.Name .. "SpawnedInToys", 15)
        end

        return findFirstChild5
      end
    end

    function canSpawn()
      if inPlot.Value then
        return GetOwnedPlot() ~= nil
      end

      return true
    end

    local v106 = getgenv()
    v106.Whitelist = getgenv().Whitelist or {}
  end

  getgenv().WhitelistEnabled = getgenv().WhitelistEnabled ~= false

  if getgenv().WL_FriendsEnabled == nil then
    getgenv().WL_FriendsEnabled = false
  end

  function f14(p16)
    if not p16 then
      return false
    end

    if getgenv().WL_FriendsEnabled and v1:IsFriendsWith(p16.UserId) then
      return true
    end

    if getgenv().WhitelistEnabled then
      return getgenv().Whitelist[p16.Name] == true
    end

    return false
  end

  function WL_add(p17)
    if p17 and p17 ~= v1.Name then
      getgenv().Whitelist[p17] = true
      WL_refresh()
    end
  end

  function f15(p18)
    if p18 then
      getgenv().Whitelist[p18] = nil
      WL_refresh()
    end
  end

  function WL_optionText(p19)
    local name = p19.Name
    return string.format("👤 @%s (%s)", name, p19.DisplayName or "")
  end

  function WL_buildPlayers()
    local v107 = {}

    for index4, value4 in ipairs(players:GetPlayers()) do
      if value4 ~= v1 then
        table.insert(v107, WL_optionText(value4))
      end
    end

    table.sort(v107)
    return v107
  end

  function WL_buildWhitelist()
    local v108 = {}

    for key, value5 in pairs(getgenv().Whitelist) do
      if value5 then
        table.insert(v108, string.format("👤 @%s", key))
      end
    end

    table.sort(v108)
    return v108
  end

  function f16(p20)
    if not p20 then
      return nil
    end

    return p20:match("@([%w_]+)")
  end

  WhitelistTab = Window:CreateTab("Whitelist", 10723433811)
  v2 = nil
  v3 = nil

  WhitelistTab:CreateLabel("WHITELIST", "check")

  WhitelistTab:CreateToggle({
    Name = 'Auto-Whitelist Friend   \t<font face="GothamBlack" color="rgb(255,255,0)">WHITELIST</font>    <font face="GothamBlack" color="rgb(0,200,255)">AUTO</font>\t<font face="GothamBlack" color="rgb(45,255,78)">FRIEND</font>',
    CurrentValue = getgenv().WL_FriendsEnabled,
    Flag = "WL_AutoFriends",
    Callback = function(value6) getgenv().WL_FriendsEnabled = value6 end,
  })

  WhitelistTab:CreateSection("Others Player")

  WhitelistTab:CreateDropdown({
    Name = "Select Player",
    Options = WL_buildPlayers(),
    CurrentOption = {},
    MultipleOptions = false,
    Flag = "WL_Add_Select",
    Callback = function(value7) v2 = f16(value7[1]) end,
  })

  WhitelistTab:CreateButton({
    Name = "Add to whitelist",
    Callback = function()
      if v2 and not getgenv().Whitelist[v2] then
        WL_add(v2)
      end
    end,
  })

  WhitelistTab:CreateDropdown({
    Name = "Whitelisted Players",
    Options = WL_buildWhitelist(),
    CurrentOption = {},
    MultipleOptions = false,
    Flag = "WL_List",
    Callback = function(value8) v3 = f16(value8[1]) end,
  })

  WhitelistTab:CreateButton({
    Name = "Remove selected",
    Callback = function()
      if v3 and getgenv().Whitelist[v3] then
        f15(v3)
      end
    end,
  })

  WhitelistTab:CreateToggle({
    Name = 'Enable Whitelist\t  <font face="GothamBlack" color="rgb(255,255,0)">WHITELIST</font>',
    CurrentValue = getgenv().WhitelistEnabled,
    Flag = "WL_Enable",
    Callback = function(value9) getgenv().WhitelistEnabled = value9 end,
  })

  WhitelistTab:CreateParagraph({
    Title = "What does this whitelist affect ?",
    Content = 'The whitelist affects all <font face="GothamBlack" color="rgb(255,0,0)">AURAS</font>, and <font face="GothamBlack" color="rgb(255,0,0)">LOOPS ALL</font>',
  })

  function WL_refresh()
    if WL_AddDD then
      WL_AddDD:Refresh(WL_buildPlayers())
    end

    if WL_ListDD then
      WL_ListDD:Refresh(WL_buildWhitelist())
    end
  end

  players.PlayerAdded:Connect(function()
    task.wait(0.5)
    WL_refresh()
  end)

  players.PlayerRemoving:Connect(function()
    task.wait(0.5)
    WL_refresh()
  end)

  InfoTab = Window:CreateTab("Information", 4483362458)

  function GetPartOwner(p21)
    if not p21 or not p21.Parent then
      return nil
    else
      local partOwner = p21:FindFirstChild("PartOwner")

      if partOwner and partOwner:IsA("StringValue") then
        return partOwner.Value
      end

      return nil
    end
  end

  function notify(p22, p23)
  end

  function f17(p24)
    for index5, value10 in ipairs(p24) do
      if value10 and typeof(value10) == "RBXScriptConnection" then
        value10:Disconnect()
      end

      p24[index5] = nil
    end
  end

  function DisableCollisions(p25)
    for index6, value11 in ipairs(p25:GetDescendants()) do
      if value11:IsA("BasePart") then
        value11.CanCollide = false
      end
    end
  end

  function setNoCollideChar(p26)
    for index7, value12 in ipairs(p26:GetDescendants()) do
      if value12:IsA("BasePart") then
        value12.CanCollide = false
      end
    end
  end

  function ChangeCollision(canCollide)
    pcall(function()
      local map = workspace:FindFirstChild("Map")

      if not map then
        return
      else
        local alwaysHereTweenedObjects = map:FindFirstChild("AlwaysHereTweenedObjects")

        if not alwaysHereTweenedObjects then
          return
        else
          local ocean = alwaysHereTweenedObjects:FindFirstChild("Ocean")

          if not ocean then
            return
          else
            local object = ocean:FindFirstChild("Object")

            if not object then
              return
            else
              local objectModel = object:FindFirstChild("ObjectModel")

              if not objectModel then
                return
              end

              for key2, value13 in pairs(objectModel:GetChildren()) do
                if value13:IsA("BasePart") then
                  value13.CanCollide = canCollide
                end
              end

              return
            end
          end
        end
      end
    end)
  end

  connect = nil
  v4 = 1

  MainTab:CreateSection("WalkSpeed")

  MainTab:CreateToggle({
    Name = 'WalkSpeed     <font face="GothamBlack" color="rgb(255, 230, 100)">[SPEED]</font>',
    CurrentValue = false,
    Flag = "Player_CustomSpeed",
    Callback = function(value14)
      if connect then
        connect:Disconnect()
        connect = nil
      end

      if value14 then
        connect = runService.Heartbeat:Connect(function()
          local character8 = v1.Character
          local v109 = character8 and character8:FindFirstChild("HumanoidRootPart")
          local v110 = character8 and character8:FindFirstChildOfClass("Humanoid")

          if v109 and v110 and v110.MoveDirection.Magnitude > 0 then
            v109.CFrame = v109.CFrame + v110.MoveDirection.Unit * v4
          end
        end)
      end
    end,
  })

  MainTab:CreateInput({
    Name = "WalkSpeed Value",
    CurrentValue = tostring(v4),
    PlaceholderText = "Enter speed",
    RemoveTextAfterFocusLost = false,
    Flag = "Player_SpeedInput",
    Callback = function(value15)
      local v111 = tonumber(value15)

      if v111 and v111 > 0 then
        v4 = v111
      end
    end,
  })

  connect2 = nil
  v5 = 50

  MainTab:CreateSection("JumpPower")

  MainTab:CreateToggle({
    Name = 'JumpPower    <font face="GothamBlack" color="rgb(50, 200, 255)">[POWER]</font>',
    CurrentValue = false,
    Flag = "JumpPowerToggleFlag",
    Callback = function(value16)
      if connect2 then
        connect2:Disconnect()
        connect2 = nil
      end

      if value16 then
        connect2 = runService.Heartbeat:Connect(function()
          local character9 = v1.Character
          local v112 = character9 and character9:FindFirstChildOfClass("Humanoid")

          if v112 then
            v112.JumpPower = v5
            v112.UseJumpPower = true
          end
        end)
      else
        local character10 = v1.Character

        local v113 = character10
        v113 = character10 and character10:FindFirstChildOfClass("Humanoid")

        if v113 then
          v113.JumpPower = 50
          v113.UseJumpPower = false
        end
      end
    end,
  })

  MainTab:CreateInput({
    Name = "JumpPower Value",
    CurrentValue = tostring(v5),
    PlaceholderText = "Enter jump power",
    RemoveTextAfterFocusLost = false,
    Flag = "Player_JumpPowerInput",
    Callback = function(value17)
      local v114 = tonumber(value17)

      if v114 and v114 > 0 then
        v5 = v114
      end
    end,
  })

  v6 = false

  MainTab:CreateSection("Infinite Jump")

  MainTab:CreateToggle({
    Name = 'Infinite Jump    <font face="GothamBlack" color="rgb(255, 150, 50)">[JUMP]</font>',
    CurrentValue = false,
    Flag = "Player_InfiniteJump",
    Callback = function(value18) v6 = value18 end,
  })

  userInputService.JumpRequest:Connect(function()
    if v6 then
      local character11 = v1.Character
      local v115 = character11 and character11:FindFirstChildOfClass("Humanoid")

      if v115 then
        v115:ChangeState(Enum.HumanoidStateType.Jumping)
      end
    end
  end)

  MainTab:CreateSection("Miscellaneous")

  MainTab:CreateToggle({
    Name = "Infinite Zoom    <font face='GothamBlack' color='rgb(255, 200, 50)'>[ZOOM]</font>",
    CurrentValue = false,
    Flag = "Useful_InfiniteZoom",
    Callback = function(value19)
      if value19 then
        v1.CameraMaxZoomDistance = 5000000
        v1.CameraMinZoomDistance = 0.5
      else
        v1.CameraMaxZoomDistance = 0.5
        v1.CameraMinZoomDistance = 0.5
      end

      camera.FieldOfView = 70
    end,
  })

  MainTab:CreateToggle({
    Name = 'Walk on Water    <font face="GothamBlack" color="rgb(50, 200, 255)">[FLOAT]</font>',
    CurrentValue = false,
    Flag = "Useful_WalkOnWater",
    Callback = function(value20) ChangeCollision(value20) end,
  })

  v7 = false

  MainTab:CreateToggle({
    Name = 'Noclip     <font face="GothamBlack" color="rgb(255, 100, 100)">[PHASE]</font>',
    CurrentValue = false,
    Flag = "Player_Noclip",
    Callback = function(value21) v7 = value21 end,
  })

  runService.Stepped:Connect(function()
    if not v7 then
      return
    else
      local character12 = v1.Character

      if not character12 then
        return
      end

      for key3, value22 in pairs(character12:GetDescendants()) do
        if value22:IsA("BasePart") then
          value22.CanCollide = false
        end
      end

      return
    end
  end)

  MainTab:CreateSection("Camera")
  v8 = false
  v9 = 70

  MainTab:CreateToggle({
    Name = 'Custom FOV     <font face="GothamBlack" color="rgb(255, 150, 200)">[FOV]</font>',
    CurrentValue = false,
    Flag = "Camera_FOVToggle",
    Callback = function(value23)
      v8 = value23

      if v8 then
        camera.FieldOfView = v9
      else
        camera.FieldOfView = 70
      end
    end,
  })

  MainTab:CreateSlider({
    Name = "FOV Value",
    Range = { -120, 120 },
    Increment = 1,
    Suffix = "°",
    CurrentValue = v9,
    Flag = "Camera_FOVSlider",
    Callback = function(value24)
      v9 = value24

      if v8 then
        camera.FieldOfView = v9
      end
    end,
  })

  MainTab:CreateSection("Gravity")

  v10 = false
  gravity = 196.2

  MainTab:CreateToggle({
    Name = 'Custom Gravity     <font face="GothamBlack" color="rgb(89,200,104)">[GRAVITY]</font>',
    CurrentValue = false,
    Flag = "GravityToggle",
    Callback = function(value25)
      v10 = value25

      if v10 then
        workspace.Gravity = gravity
      else
        workspace.Gravity = 100
      end
    end,
  })

  MainTab:CreateSlider({
    Name = "Gravity Value",
    Range = { 0, 1000 },
    Increment = 1,
    Suffix = " gravity",
    CurrentValue = 100,
    Flag = "GravitySlider",
    Callback = function(value26)
      gravity = value26

      if v10 then
        workspace.Gravity = gravity
      end
    end,
  })

  invTab:CreateSection("Anti Grab")

  invTab:CreateButton({
    Name = 'anti gucci     <font face="GothamBlack" color="rgb(255,251,0)">BLOBMAN</font>   <font face="GothamBlack" color="rgb(255,0,0)">OP</font>   <font face="GothamBlack" color="rgb(39,245,218)">PREMIUM</font>',
    Callback = function()
      character = v1.Character or v1.CharacterAdded:Wait()
      humanoid = character:WaitForChild("Humanoid")
      humanoidRootPart = character:WaitForChild("HumanoidRootPart")
      local position2 = humanoidRootPart.Position
      SpawnToyRF:InvokeServer("CreatureBlobman", CFrame.new(0, 50000, 0), Vector3.new(0, 60, 0))
      local waitForChild3 = Workspace:WaitForChild(v1.Name .. "SpawnedInToys", 5)

      if waitForChild3 then
        local creatureBlobman = waitForChild3:FindFirstChild("CreatureBlobman")

        if creatureBlobman then
          local head = creatureBlobman:FindFirstChild("Head")

          if head then
            head.Anchored = true
            head.CFrame = CFrame.new(0, 50000, 0)
          end

          local vehicleSeat = creatureBlobman:FindFirstChild("VehicleSeat")

          if vehicleSeat and vehicleSeat:IsA("VehicleSeat") then
            task.wait(0.5)
            humanoidRootPart.CFrame = vehicleSeat.CFrame + Vector3.new(0, 2, 0)
            task.wait(0.2)
            vehicleSeat:Sit(humanoid)
          end
        end
      end

      local v116

      if v116 then
        v116:Disconnect()
      end

      runService.Heartbeat:Connect(function()
        if not humanoid or not humanoidRootPart then
          return
        end

        pcall(function() RagdollRemote:FireServer(humanoidRootPart, 0) end)
      end)

      humanoid:GetPropertyChangedSignal("Jump"):Connect(function()
        if humanoid.Jump and humanoid.Sit then
          position2 = humanoidRootPart.Position
        end
      end)

      task.spawn(function()
        while humanoid.Sit do
          task.wait(1)
        end

        task.wait(0.5)
        humanoidRootPart.CFrame = CFrame.new(position2)
      end)
    end,
  })

  invTab:CreateButton({
    Name = 'Invisibility / train Gucci  <font face="GothamBlack" color="rgb(255,0,0)">OP</font>   <font face="GothamBlack" color="rgb(39,245,218)">PREMIUM</font>',
    Callback = function()
      local v117 = players.LocalPlayer
      local character13 = v117.Character or v117.CharacterAdded:Wait()
      local v118 = character13:WaitForChild("Humanoid")
      local v119 = character13:WaitForChild("HumanoidRootPart")
      local seat = workspaceService.Map.AlwaysHereTweenedObjects.Train.Object.ObjectModel:WaitForChild("Seat")
      local position3 = v119.Position
      task.wait(0.5)
      v119.CFrame = seat.CFrame + Vector3.new(0, 2, 0)
      task.wait(0.2)
      seat:Sit(v118)
      local v120

      if v120 then
        v120:Disconnect()
      end

      runService.Heartbeat:Connect(function()
        if not v118 or not v119 then
          return
        end

        pcall(function() RagdollRemote:FireServer(v119, 0) end)
      end)

      v118:GetPropertyChangedSignal("Jump"):Connect(function()
        if v118.Jump and v118.Sit then
          position3 = v119.Position
        end
      end)

      task.spawn(function()
        while v118.Sit do
          task.wait(1)
        end

        task.wait(0.5)
        v119.CFrame = CFrame.new(position3)
      end)
    end,
  })

  connect3 = nil
  v11 = false

  invTab:CreateToggle({
    Name = 'Anti Grab\t   <font face="GothamBlack" color="rgb(7,255,0)">RAGDOLL</font>',
    CurrentValue = false,
    Flag = "AntiGrab",
    Callback = function(value27)
      v11 = value27

      if connect3 then
        connect3:Disconnect()
        connect3 = nil
      end

      if not value27 then
        return
      end

      local f30

      function f30(p27)
        connect3 = runService.Heartbeat:Connect(function()
          local v121, v122

          if not v11 then
            return
          elseif not p27 then
            return
          else
            local head2 = p27:FindFirstChild("Head")
            v121 = p27:FindFirstChild("HumanoidRootPart")
            v122 = p27:FindFirstChildOfClass("Humanoid")

            if not head2 or not v121 or not v122 then
              return
            elseif not head2:FindFirstChild("PartOwner") then
              return
            else
              local cframe2 = v121.CFrame

              for j = 1, 3 do
                pcall(function() Struggle:FireServer() end)
                pcall(function() RagdollRemote:FireServer(v121, 0) end)

                pcall(function()
                  if DestroyGrabLine then
                    DestroyGrabLine:FireServer()
                  end
                end)

                v122.Sit = false
                v122.PlatformStand = false

                local ragdolled = v122:FindFirstChild("Ragdolled")
                  or p27:FindFirstChild("Humanoid") and p27.Humanoid:FindFirstChild("Ragdolled")

                if ragdolled and ragdolled:IsA("BoolValue") then
                  ragdolled.Value = false
                end

                v121.AssemblyLinearVelocity = Vector3.zero
                v121.AssemblyAngularVelocity = Vector3.zero

                pcall(function()
                  if StopAllVelocity then
                    StopAllVelocity:FireServer()
                  end
                end)

                v121.CFrame = cframe2

                pcall(function()
                  if Look then
                    Look:FireServer(v121.CFrame)
                  end
                end)

                pcall(function() v122:ChangeState(Enum.HumanoidStateType.GettingUp) end)

                task.wait()
              end

              pcall(function() v122:ChangeState(Enum.HumanoidStateType.Running) end)
              return
            end
          end
        end)
      end

      if v1.Character then
        f30(v1.Character)
      end

      v1.CharacterAdded:Connect(function(character14)
        if v11 then
          f30(character14)
        end
      end)
    end,
  })

  isAutoAttack = false
  killMode = "Death"
  isnetworkowner = false

  invTab:CreateToggle({
    Name = 'Auto Attack\t  <font face="GothamBlack" color="rgb(255,140,0)">DEFENSIVE</font>',
    CurrentValue = false,
    Callback = function(value28)
      isAutoAttack = value28

      if not value28 then
        return
      end

      task.spawn(function()
        local v123 = false

        while isAutoAttack do
          if not v11 then
            if not v123 then
              rayfield:Notify({
                Title = "Error",
                Content = "Enable AntiGrab Before",
                Image = "x",
                Duration = 3,
              })

              v123 = true
            end

            task.wait(0.5)
          else
            v123 = false
            local character15 = players.LocalPlayer.Character

            if character15 and character15:FindFirstChild("Head") then
              local partOwner2 = character15.Head:FindFirstChild("PartOwner")

              if partOwner2 and partOwner2:IsA("StringValue") then
                local findFirstChild6 = players:FindFirstChild(partOwner2.Value)

                if findFirstChild6 and findFirstChild6.Character then
                  local v124 = findFirstChild6.Character:FindFirstChild("HumanoidRootPart")
                  local v125 = findFirstChild6.Character:FindFirstChild("Humanoid")

                  if v124 then
                    pcall(function()
                      for k = 1, 10 do
                        replicatedStorage.GrabEvents.SetNetworkOwner:FireServer(
                          v124, v124.CFrame
                        )

                        task.wait()
                      end

                      isnetworkowner = not v124:IsGrounded() and v124.ReceiveAge == 0

                      if not isnetworkowner then
                        return
                      end

                      local v126

                      if killMode == "Death" then
                        replicatedStorage.GrabEvents.DestroyGrabLine:FireServer(v124)
                        v124.CFrame = CFrame.new(0, 90000000, 0)

                        local bodyVelocity = Instance.new("BodyVelocity")
                        bodyVelocity.Velocity = Vector3.new(0, 9000000000, 0)
                        bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                        bodyVelocity.Parent = v124

                        if v125 then
                          v125:ChangeState(Enum.HumanoidStateType.Dead)
                        end

                        debris:AddItem(bodyVelocity, 2)
                      elseif killMode == "Sky" then
                        replicatedStorage.GrabEvents.DestroyGrabLine:FireServer(v124)
                        v124.CFrame = CFrame.new(0, 999999, 0)

                        local bodyVelocity2 = Instance.new("BodyVelocity")

                        bodyVelocity2.Velocity = Vector3.new(
                          math.random(-3000, 3000), 9000000000, math.random(-3000, 3000)
                        )

                        bodyVelocity2.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                        bodyVelocity2.Parent = v124

                        debris:AddItem(bodyVelocity2, 3)
                      elseif killMode == "TpToSpawn" then
                        v124.CFrame = CFrame.new(0, 0, 0)
                      elseif killMode == "BigFling" then
                        v124.CFrame = CFrame.new(0, 100, 0)

                        local bodyVelocity3 = Instance.new("BodyVelocity")
                        bodyVelocity3.MaxForce = Vector3.new(math.huge, math.huge, math.huge)

                        bodyVelocity3.Velocity = Vector3.new(
                          math.random(-1000, 1000), 500, math.random(-1000, 1000)
                        )

                        bodyVelocity3.Parent = v124

                        local bodyAngularVelocity = Instance.new("BodyAngularVelocity")

                        bodyAngularVelocity.AngularVelocity = Vector3.new(
                          math.random(-500, 500), math.random(-500, 500), math.random(-500, 500)
                        )

                        bodyAngularVelocity.MaxTorque = Vector3.new(
                          math.huge, math.huge, math.huge
                        )

                        bodyAngularVelocity.Parent = v124

                        debris:AddItem(bodyVelocity3, 5)
                        debris:AddItem(bodyAngularVelocity, 5)
                      elseif killMode == "Crazy" then
                        v126 = {
                          Vector3.new(-17, 421, 50), Vector3.new(145, 397, -126),
                          Vector3.new(157, 254, 89), Vector3.new(-26, 207, -26),
                          Vector3.new(-23, 456, -19), Vector3.new(15, 211, 45),
                        }

                        task.spawn(function()
                          while isAutoAttack and v11 do
                            isnetworkowner = not v124:IsGrounded() and v124.ReceiveAge == 0

                            if not isnetworkowner then
                              break
                            end

                            for index8, value29 in ipairs(v126) do
                              if not v11 then
                                break
                              end

                              isnetworkowner = not v124:IsGrounded() and v124.ReceiveAge == 0

                              if not isnetworkowner then
                                break
                              end

                              v124.CFrame = CFrame.new(value29)
                              task.wait(0.04)
                            end
                          end
                        end)
                      end
                    end)
                  end
                end
              end
            end

            task.wait(0.1)
          end
        end
      end)
    end,
  })

  invTab:CreateDropdown({
    Name = 'Mode    <font face="GothamBlack" color="rgb(8,100,34)">STATE</font>',
    Options = { "Death", "Sky", "TpToSpawn", "BigFling", "Crazy" },
    CurrentOption = { "Death" },
    Callback = function(value30) killMode = value30[1] end,
  })

  invTab:CreateSection("Anti Utility")

  connect4 = nil

  invTab:CreateToggle({
    Name = 'Anti-Kick     <font face="GothamBlack" color="rgb(150,150,150)">KUNAI</font>',
    CurrentValue = false,
    Callback = function(value31)
      if connect4 then
        connect4:Disconnect()
        connect4 = nil
      end

      if value31 then
        task.spawn(function()
          local v127 = v1.Character and v1.Character:FindFirstChild("HumanoidRootPart")

          if v127 then
            SpawnToyRF:InvokeServer(
              "NinjaKunai", v127.CFrame * CFrame.new(0, 0, 15), Vector3.new(0, 90, 0)
            )
          end
        end)

        connect4 = runService.Heartbeat:Connect(function()
          local v128 = v1.Character and v1.Character:FindFirstChild("HumanoidRootPart")

          if not v128 then
            return
          else
            local v129 = {}
            local findFirstChild7 = workspace:FindFirstChild(v1.Name .. "SpawnedInToys")

            if findFirstChild7 then
              table.insert(v129, findFirstChild7)
            end

            local plotItems3 = workspace:FindFirstChild("PlotItems")

            if plotItems3 then
              for m = 1, 5 do
                if plotItems3:FindFirstChild("Plot" .. m) then
                  table.insert(v129, plotItems3["Plot" .. m])
                end
              end
            end

            local v130 = false

            for index9, value32 in ipairs(v129) do
              local ninjaKunai = value32:FindFirstChild("NinjaKunai")

              if ninjaKunai then
                v130 = true

                local stickyPart = ninjaKunai:FindFirstChild("StickyPart")
                  or ninjaKunai:FindFirstChild("SoundPart") or ninjaKunai.PrimaryPart

                if stickyPart then
                  local partOwner3 = stickyPart:FindFirstChild("PartOwner")

                  if partOwner3 and partOwner3.Value ~= v1.Name then
                    pcall(function() DeleteToyRE:FireServer(ninjaKunai) end)
                  end

                  local stickyWeld = stickyPart:FindFirstChild("StickyWeld")
                  local firePlayerPart = v128:FindFirstChild("FirePlayerPart")

                  if stickyWeld and firePlayerPart and stickyWeld.Part1 ~= firePlayerPart then
                    StickyEvent:FireServer(
                      stickyPart, firePlayerPart,
                      CFrame.new(0, 0, 0, 1, 0, 0, 0, 0, -1, 0, 1, 0)
                    )
                  end

                  if (stickyPart.Position - v128.Position).Magnitude > 50 then
                    pcall(function() DeleteToyRE:FireServer(ninjaKunai) end)
                  end
                end

                break
              end
            end

            if not v130 then
              task.spawn(function()
                SpawnToyRF:InvokeServer(
                  "NinjaKunai", v128.CFrame * CFrame.new(0, 0, 15), Vector3.new(0, 90, 0)
                )
              end)
            end

            return
          end
        end)
      end
    end,
  })

  invTab:CreateSection("Anti Defense")

  connect5 = nil

  function f1(p28)
    local ragdolled2 = p28:WaitForChild("Humanoid"):FindFirstChild("Ragdolled")

    if ragdolled2 then
      connect5 = ragdolled2:GetPropertyChangedSignal("Value"):Connect(function()
        if ragdolled2.Value then
          for index10, value33 in ipairs(p28:GetChildren()) do
            if value33:IsA("BasePart") then
              value33.Anchored = true
            end
          end
        else
          for index11, value34 in ipairs(p28:GetChildren()) do
            if value34:IsA("BasePart") then
              value34.Anchored = false
            end
          end
        end
      end)
    end
  end

  connect6 = nil

  toggle = invTab:CreateToggle({
    Name = 'Anti-Explosion\t  <font face="GothamBlack" color="rgb(255,0,0)">DEFUSE</font>',
    CurrentValue = false,
    Flag = "AntiExplosion",
    Callback = function(value35)
      local v131 = players.LocalPlayer

      if value35 then
        if v131.Character then
          f1(v131.Character)
        end

        connect6 = v131.CharacterAdded:Connect(function(character16)
          if connect5 then
            connect5:Disconnect()
          end

          f1(character16)
        end)
      else
        if connect5 then
          connect5:Disconnect()
          connect5 = nil
        end

        if connect6 then
          connect6:Disconnect()
          connect6 = nil
        end

        if v131.Character then
          for index12, value36 in ipairs(v131.Character:GetChildren()) do
            if value36:IsA("BasePart") then
              value36.Anchored = false
            end
          end
        end
      end
    end,
  })

  v12 = {}

  invTab:CreateToggle({
    Name = 'Anti Poison   <font face="GothamBlack" color="rgb(100, 200, 255)">PROTECT</font>',
    CurrentValue = false,
    Flag = "AntiPoison",
    Callback = function(value37)
      if value37 then
        v12 = {}

        for index13, value38 in ipairs(workspace:GetDescendants()) do
          if value38:IsA("BasePart") and value38.Name == "PoisonHurtPart" then
            v12[value38] = value38.CFrame
            value38.CFrame = value38.CFrame + Vector3.new(0, 10000, 0)
          end
        end
      else
        for key4, value39 in pairs(v12) do
          if key4 and key4.Parent then
            key4.CFrame = value39
          end
        end

        v12 = {}
      end
    end,
  })

  extinguishPart = workspace.Map.FactoryIsland.PoisonContainer.ExtinguishPart
  position = extinguishPart.Position
  connect7 = nil
  connect8 = nil

  invTab:CreateToggle({
    Name = 'Anti Burn    <font face="GothamBlack" color="rgb(255, 165, 0)">FIRE</font>',
    CurrentValue = false,
    Flag = "AntiBurnToggle",
    Callback = function(value40)
      if value40 then
        extinguishPart.Transparency = 1

        local function f31(p29)
          local v132 = p29:WaitForChild("Humanoid")
          local v133 = p29:WaitForChild("HumanoidRootPart")
          local waitForChild4 = v132:WaitForChild("FireDebounce", 5)

          if connect7 then
            connect7:Disconnect()
          end

          connect7 = runService.Heartbeat:Connect(function()
            if not p29:IsDescendantOf(workspace) then
              connect7:Disconnect()
              connect7 = nil
              return
            end

            if waitForChild4 and waitForChild4.Value then
              local position4 = v133.Position
              local v134 = tick() * 3 % 3
              local v135 = v134 < 1 and position4 or v134 < 2 and position or position4
              local v136 = tick()
              local v137 = math.sin(v136 * 5)
              local v138 = tick()
              local v139 = math.cos(v138 * 3)
              local v140 = tick()
              local v141 = math.sin(v140 * 4)

              extinguishPart.Position = v135 + Vector3.new(v137 * 3, v139 * 2, v141 * 3)

              extinguishPart.CFrame = extinguishPart.CFrame * CFrame.Angles(
                math.rad(math.random(-10, 10)), math.rad(math.random(-10, 10)),
                math.rad(math.random(-10, 10))
              )
            else
              extinguishPart.Position = extinguishPart.Position:Lerp(position, 0.1)
            end
          end)
        end

        if connect8 then
          connect8:Disconnect()
        end

        connect8 = v1.CharacterAdded:Connect(f31)

        if v1.Character then
          f31(v1.Character)
        end
      else
        if connect7 then
          connect7:Disconnect()
          connect7 = nil
        end

        if connect8 then
          connect8:Disconnect()
          connect8 = nil
        end

        extinguishPart.Position = position
        extinguishPart.Transparency = 0
      end
    end,
  })

  connect9 = nil
  connect10 = nil
  v13 = false

  invTab:CreateToggle({
    Name = "Anti Banana    <font face='GothamBlack' color='rgb(255, 230, 100)'>REMOVE-LEGS</font>",
    CurrentValue = false,
    Flag = "RemoveLegs",
    Callback = function(value41)
      local function f32(p30)
        if connect9 then
          connect9:Disconnect()
        end

        connect9 = runService.Heartbeat:Connect(function()
          if not v13 then
            return
          else
            local character17 = p30 or v1.Character

            if not character17 then
              return
            else
              local v142 = character17:FindFirstChild("Humanoid")
              local v143 = not v142
              local v144 = character17:FindFirstChild("HumanoidRootPart")

              if v143 or not v144 then
                return
              else
                local rightLeg = character17:FindFirstChild("Right Leg")
                local leftLeg = character17:FindFirstChild("Left Leg")

                if rightLeg or leftLeg then
                  workspace.FallenPartsDestroyHeight = -10
                  v142:ChangeState(Enum.HumanoidStateType.GettingUp)

                  if replicatedStorage:FindFirstChild("CharacterEvents") then
                    local ragdollRemote2 = replicatedStorage.CharacterEvents:FindFirstChild("RagdollRemote")

                    if ragdollRemote2 then
                      ragdollRemote2:FireServer(v144, 1)
                    end
                  end

                  task.wait(0.2)

                  if rightLeg then
                    rightLeg:PivotTo(CFrame.new(-9999, -99999999, -9999))
                  end

                  if leftLeg then
                    leftLeg:PivotTo(CFrame.new(-9999, -99999999, -9999))
                  end

                  task.wait(2)
                  v144.CFrame = CFrame.new(-86.8966, -10.1004, 7.777)
                  return
                end

                v142.HipHeight = 2
                workspace.FallenPartsDestroyHeight = -500
                return
              end
            end
          end
        end)
      end

      v13 = value41

      function onCharacterAdded(p31)
        if not v13 then
          return
        end

        p31.ChildAdded:Connect(function(child)
          if child.Name == "Right Leg" or child.Name == "Left Leg" then
            if v13 then
              f32(p31)
            end
          end
        end)

        p31.ChildRemoved:Connect(function(child2)
          if child2.Name == "Right Leg" or child2.Name == "Left Leg" then
            local v145 = p31:FindFirstChild("Humanoid")

            if v145 then
              v145.HipHeight = 2
            end
          end
        end)

        f32(p31)
      end

      if v13 and v1.Character then
        onCharacterAdded(v1.Character)
      end

      if v13 then
        connect10 = v1.CharacterAdded:Connect(function(character18)
          if v13 then
            onCharacterAdded(character18)
          end
        end)
      elseif not v13 then
        if connect9 then
          connect9:Disconnect()
          connect9 = nil
        end

        if connect10 then
          connect10:Disconnect()
          connect10 = nil
        end

        workspace.FallenPartsDestroyHeight = -500
      end
    end,
  })

  invTab:CreateToggle({
    Name = 'Anti Banana v2   <font face="GothamBlack" color="rgb(255,255,0)">EAT BANANA</font>   <font face="GothamBlack" color="rgb(39,245,218)">PREMIUM</font>',
    CurrentValue = false,
    Callback = function(value42)
      local v146 = 0

      if value42 then
        task.spawn(function()
          while value42 do
            local v147 = tick()

            if v147 - v146 < 0.2 then
              runService.Heartbeat:Wait()
            else
              v146 = v147

              for index14, value43 in ipairs(workspace:GetChildren()) do
                local v148 = value43

                if v148.Parent.Name == v1.Name .. "SpawnedInToys" then
                else
                  if v148:IsA("Model") and v148.Name == "FoodBanana"
                    and v148:FindFirstChild("HoldPart") then
                    local holdPart = v148.HoldPart
                    local holdItemRemoteFunction = holdPart:FindFirstChild("HoldItemRemoteFunction")

                    if holdItemRemoteFunction then
                      pcall(function()
                        holdItemRemoteFunction:InvokeServer(v148, v1.Character)
                      end)
                    end

                    task.wait(0.01)
                    local dropItemRemoteFunction = holdPart:FindFirstChild("DropItemRemoteFunction")

                    if dropItemRemoteFunction then
                      pcall(function()
                        dropItemRemoteFunction:InvokeServer(
                          v148, CFrame.new(0, -500, 0), Vector3.new(0, 97.69, 0)
                        )
                      end)
                    end
                  end

                  for index15, value44 in ipairs(v148:GetChildren()) do
                    local v149 = value44

                    if v149:IsA("Model") and v149.Name == "FoodBanana"
                      and v149:FindFirstChild("HoldPart") then
                      local v150 = v1.Name .. "SpawnedInToys"

                      if v149.Parent.Name == v150 then
                      else
                        local holdPart2 = v149.HoldPart
                        local holdItemRemoteFunction2 = holdPart2:FindFirstChild("HoldItemRemoteFunction")

                        if holdItemRemoteFunction2 then
                          pcall(function()
                            holdItemRemoteFunction2:InvokeServer(v149, v1.Character)
                          end)
                        end

                        task.wait(0.01)
                        local dropItemRemoteFunction2 = holdPart2:FindFirstChild("DropItemRemoteFunction")

                        if dropItemRemoteFunction2 then
                          pcall(function()
                            dropItemRemoteFunction2:InvokeServer(
                              v149, CFrame.new(0, -500, 0), Vector3.new(0, 97.69, 0)
                            )
                          end)
                        end
                      end
                    end
                  end
                end
              end

              runService.Heartbeat:Wait()
            end
          end
        end)
      end

      v146 = 0
    end,
  })

  connect11 = nil

  invTab:CreateToggle({
    Name = 'Anti Paint \t <font face="GothamBlack" color="rgb(255, 105, 180)">PAINT</font>',
    CurrentValue = false,
    Flag = "AntiPaintToggle",
    Callback = function(value45)
      if value45 then
        function deletePaintParts()
          for key5, value46 in pairs(workspace:GetDescendants()) do
            if value46.Name == "PaintPlayerPart" then
              value46:Destroy()
            end
          end
        end

        deletePaintParts()

        if connect11 then
          connect11:Disconnect()
        end

        connect11 = workspace.DescendantAdded:Connect(function(descendant)
          if descendant.Name == "PaintPlayerPart" then
            task.wait()
            descendant:Destroy()
          end
        end)
      elseif connect11 then
        connect11:Disconnect()
        connect11 = nil
      end
    end,
  })

  invTab:CreateSection("Stability")

  invTab:CreateToggle({
    Name = 'Anti Lag      <font face="GothamBlack" color="rgb(0, 255, 0)">MOVEMENT</font>',
    CurrentValue = false,
    Flag = "AntiLag",
    Callback = function(value47)
      local playerScripts = v1:FindFirstChild("PlayerScripts")

      if playerScripts then
        local characterAndBeamMove = playerScripts:FindFirstChild("CharacterAndBeamMove")

        if characterAndBeamMove then
          characterAndBeamMove.Enabled = not value47
        end
      end
    end,
  })

  v14 = false

  invTab:CreateToggle({
    Name = 'Anti Void      <font face="GothamBlack" color="rgb(25, 25, 25)">D̶I̶E</font>',
    CurrentValue = false,
    Flag = "AntiVoid",
    Callback = function(value48)
      v14 = value48

      if value48 then
        workspace.FallenPartsDestroyHeight = -100000

        task.spawn(function()
          while v14 do
            local character19 = v1.Character
            local v151 = character19 and character19:FindFirstChild("HumanoidRootPart")

            if v151 and v151.Position.Y < -500 then
              v151.CFrame = CFrame.new(2, -7, -4)
            end

            task.wait(0.2)
          end
        end)
      else
        workspace.FallenPartsDestroyHeight = -100
      end
    end,
  })

  invTab:CreateSection("Anti Character")

  invTab:CreateToggle({
    Name = 'Anti Sticky     <font face="GothamBlack" color="rgb(180, 0, 255)">CHARACTER</font>',
    CurrentValue = false,
    Flag = "AntiStickyToggle",
    Callback = function(value49)
      local playerScripts2 = v1:WaitForChild("PlayerScripts")

      if value49 then
        local stickyPartsTouchDetection = playerScripts2:FindFirstChild("StickyPartsTouchDetection")

        if stickyPartsTouchDetection then
          stickyPartsTouchDetection.Disabled = true
        end
      else
        local stickyPartsTouchDetection2 = playerScripts2:FindFirstChild("StickyPartsTouchDetection")

        if stickyPartsTouchDetection2 then
          stickyPartsTouchDetection2:Destroy()
        end

        local stickyPartsTouchDetection3 = replicatedStorage:FindFirstChild("StickyPartsTouchDetection")

        if stickyPartsTouchDetection3 then
          stickyPartsTouchDetection3:Clone().Parent = playerScripts2
        end
      end
    end,
  })

  invTab:CreateSection("Anti Blobman")

  v15 = false

  invTab:CreateToggle({
    Name = 'Anti Blobman   <font face="GothamBlack" color="rgb(255, 100, 100)">PROTECT</font>',
    CurrentValue = false,
    Flag = "AntiBlobman",
    Callback = function(value50)
      v15 = value50

      if value50 then
        task.spawn(function()
          while v15 do
            for index16, value51 in ipairs(players:GetPlayers()) do
              if value51 ~= players.LocalPlayer then
                local findFirstChild8 = workspace:FindFirstChild(value51.Name .. "SpawnedInToys")

                if findFirstChild8 then
                  for index17, value52 in ipairs(findFirstChild8:GetChildren()) do
                    if value52:IsA("Model") and value52.Name == "CreatureBlobman" then
                      value52:Destroy()
                    end
                  end
                end
              end
            end

            task.wait(0.2)
          end
        end)
      end
    end,
  })

  invTab:CreateSection("Anti Loop")

  v16 = false
  connect12 = nil
  vector2 = Vector3.new(264, -7, 440)

  invTab:CreateToggle({
    Name = 'Anti Loop Ownership    <font face="GothamBlack" color="rgb(255, 150, 50)">HOUSE</font>',
    CurrentValue = false,
    Flag = "AntiLoopOwnership",
    Callback = function(value53)
      v16 = value53

      if connect12 then
        connect12:Disconnect()
        connect12 = nil
      end

      if value53 then
        local character20 = v1.Character

        local v152 = character20
        v152 = character20 and character20:FindFirstChild("HumanoidRootPart")

        if v152 then
          v152.CFrame = CFrame.new(vector2)
        end

        connect12 = runService.Heartbeat:Connect(function()
          local character21 = v1.Character
          local v153 = character21 and character21:FindFirstChild("HumanoidRootPart")

          if v153 then
            v153.CFrame = CFrame.new(vector2)
          end
        end)
      end
    end,
  })

  v1.CharacterAdded:Connect(function(character22)
    if v16 then
      task.wait(0.05)
      character22:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(vector2)
    end
  end)

  invTab:CreateToggle({
    Name = 'Anti Loop Ownership V2   <font face="GothamBlack" color="rgb(57,255,90)">TELEPORT EVERYWHERE</font>',
    CurrentValue = false,
    Flag = "AntiLoopV2",
    Callback = function(value54)
      local v154 = {
        Vector3.new(264, -7, 440), Vector3.new(0, 50, 0), Vector3.new(-500, 20, -500),
        Vector3.new(500, 20, 500), Vector3.new(0, 100, 0), Vector3.new(264, 50, 440),
      }

      local v155

      if v155 then
        v155:Disconnect()
      end

      _G.AntiLoopV2Enabled = value54

      if value54 then
        local character23 = v1.Character
        local v156 = character23 and character23:FindFirstChild("HumanoidRootPart")

        if v156 then
          v156.CFrame = CFrame.new(v154[1])
        end

        runService.Heartbeat:Connect(function()
          local character24 = v1.Character
          local v157 = character24 and character24:FindFirstChild("HumanoidRootPart")

          if v157 and _G.AntiLoopV2Enabled then
            local v158 = math.random(1, #v154)

            v157.CFrame = CFrame.new(v154[v158]
              + Vector3.new(math.random(-10, 10), 0, math.random(-10, 10)))
          end
        end)
      end
    end,
  })

  v1.CharacterAdded:Connect(function(character25)
    if _G.AntiLoopV2Enabled then
      task.wait(0.05)

      character25:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(teleportPositions[math.random(
        1, #teleportPositions
      )])
    end
  end)

  v17 = false
  connect13 = nil
  v18 = {}
  v19 = nil

  invTab:CreateToggle({
    Name = 'Anti BlobKill    <font face="GothamBlack" color="rgb(255, 100, 255)">FOOD</font>    <font face="GothamBlack" color="rgb(39,245,218)">PREMIUM</font>',
    CurrentValue = false,
    Flag = "AntiBlobKill",
    Callback = function(value55)
      v17 = value55
      local v159 = players.LocalPlayer
      local v160 = 0
      local v161

      function gethrp()
        if v159.Character then
          local v162 = v159.Character:FindFirstChild("HumanoidRootPart")

          if v162 then
            v161 = v162
          end
        end

        return v161
      end

      function spawnfood()
        if not canSpawn() then
          return
        end

        if tick() - v160 < 0.5 then
          return
        end

        v160 = tick()

        if not v161 then
          return
        else
          local cframe3 = CFrame.new(5, 0, 5)
          local v163 = { "FoodHamburger", v161.CFrame * cframe3, Vector3.new(0, 33.088, 0) }
          replicatedStorage.MenuToys.SpawnToyRemoteFunction:InvokeServer(unpack(v163))
          return
        end
      end

      function hold(p32)
        if not p32 or not p32.Parent then
          return
        else
          local holdPart3 = p32:FindFirstChild("HoldPart")

          if not holdPart3 then
            return
          else
            local v164 = {
              p32, CFrame.new(-128.375, -10.35, 72.18), Vector3.new(0, 154.777, 0),
            }

            holdPart3.HoldItemRemoteFunction:InvokeServer(unpack({ p32, v159.Character }))
            holdPart3.DropItemRemoteFunction:InvokeServer(unpack(v164))

            return
          end
        end
      end

      function findFoodInAllFolders()
        for index18, value56 in ipairs((getAllPalletFolders())) do
          for index19, value57 in ipairs(value56:GetChildren()) do
            if value57.Name == "FoodHamburger" then
              return value57
            end
          end
        end

        return nil
      end

      function watchFoodFolder(p33)
        if not p33 or v18[p33] then
          return
        end

        v18[p33] = p33.ChildAdded:Connect(function(child3)
          if child3.Name == "FoodHamburger" and not v19 then
            v19 = child3
          end
        end)
      end

      if connect13 then
        connect13:Disconnect()
        connect13 = nil
      end

      for key6, value58 in pairs(v18) do
        if value58 then
          value58:Disconnect()
        end
      end

      v18 = {}

      if v17 then
        for index20, value59 in ipairs((getAllPalletFolders())) do
          watchFoodFolder(value59)
        end

        task.spawn(function()
          while v17 do
            task.wait(2)

            for index21, value60 in ipairs((getAllPalletFolders())) do
              watchFoodFolder(value60)
            end
          end
        end)

        connect13 = runService.Heartbeat:Connect(function()
          gethrp()

          if not v19 or not v19.Parent then
            v19 = findFoodInAllFolders()

            if not v19 then
              spawnfood()
            end
          else
            hold(v19)
          end
        end)

        spawnfood()
      end
    end,
  })

  GrabLinesTab:CreateLabel("Grab", "Hand")
  v20 = false
  v21 = nil

  GrabLinesTab:CreateToggle({
    Name = 'Kill Grab\t <font face="GothamBlack" color="rgb(255,0,0)">KILL</font>\t<font face="GothamBlack" color="rgb(255,255,255)">(PLAYER)</font>',
    CurrentValue = false,
    Flag = "KillGrabToggle",
    Callback = function(value61)
      if value61 then
        if v20 then
          return
        end

        v20 = true

        v21 = coroutine.create(function()
          while v20 do
            pcall(function()
              local grabParts = workspace:FindFirstChild("GrabParts")
              local grabPart = grabParts and grabParts:FindFirstChild("GrabPart")

              local weldConstraint = grabPart
                and grabPart:FindFirstChildOfClass("WeldConstraint")

              local part1 = weldConstraint and weldConstraint.Part1
              local model = part1 and part1:FindFirstAncestorOfClass("Model")
              local v165 = model and model:FindFirstChild("Humanoid")

              if v165 then
                task.wait(0.4)
                v165.Health = 0
              end
            end)

            task.wait()
          end
        end)

        coroutine.resume(v21)
        return
      end

      v20 = false
    end,
  })

  getgenv().NoclipGrabConnection = nil

  GrabLinesTab:CreateToggle({
    Name = 'Noclip Grab\t  <font face="GothamBlack" color="rgb(0,150,255)">NOCLIP</font>\t<font face="GothamBlack" color="rgb(255,255,255)">(PLAYER & OBJECT)</font>',
    CurrentValue = false,
    Flag = "ToggleNoclipGrab",
    Callback = function(value62)
      if getgenv().NoclipGrabConnection then
        getgenv().NoclipGrabConnection:Disconnect()
        getgenv().NoclipGrabConnection = nil
      end

      local function f33()
        local grabParts2 = workspace:FindFirstChild("GrabParts")

        if not grabParts2 then
          return nil
        else
          local grabPart2 = grabParts2:FindFirstChild("GrabPart")

          if not grabPart2 then
            return nil
          else
            local weldConstraint2 = grabPart2:FindFirstChild("WeldConstraint")
              or grabPart2:FindFirstChild("Weld")

            if not weldConstraint2 then
              return nil
            end

            return weldConstraint2.Part1 and weldConstraint2.Part1.Parent or nil
          end
        end
      end

      if not value62 then
        local v166 = f33()

        if v166 then
          for index22, value63 in ipairs(v166:GetDescendants()) do
            if value63:IsA("BasePart") and not value63.Anchored then
              value63.CanCollide = true
            end
          end
        end

        return
      else
        local v167 = getgenv()

        v167.NoclipGrabConnection = runService.Heartbeat:Connect(function()
          local v168 = f33()

          if v168 then
            for index23, value64 in ipairs(v168:GetDescendants()) do
              if value64:IsA("BasePart") and not value64.Anchored then
                value64.CanCollide = false
              end
            end
          end
        end)

        return
      end
    end,
  })

  getgenv().VoidGrabConnection = nil

  GrabLinesTab:CreateToggle({
    Name = 'kick Grab \t<font face="GothamBlack" color="rgb(70,70,70)">KICK</font>   <font face="GothamBlack" color="rgb(255,0,0)">OP++</font>   <font face="GothamBlack" color="rgb(255,255,255)">(PLAYER)</font>   <font face="GothamBlack" color="rgb(39,245,218)">PREMIUM</font>',
    CurrentValue = false,
    Flag = "ToggleVoidGrab",
    Callback = function(value65)
      if getgenv().VoidGrabConnection then
        getgenv().VoidGrabConnection:Disconnect()
        getgenv().VoidGrabConnection = nil
      end

      local clone

      if not value65 then
        return
      else
        clone = nil

        local v169 = getgenv()

        v169.VoidGrabConnection = runService.Heartbeat:Connect(function(delta)
          local character26 = v1.Character

          local torso = character26
            and (character26:FindFirstChild("Torso") or character26:FindFirstChild("UpperTorso")
              or character26:FindFirstChild("HumanoidRootPart"))

          if not torso then
            return
          else
            local grabParts3 = Workspace:FindFirstChild("GrabParts")

            if not grabParts3 then
              return
            else
              local v170 = false
              tick()

              for index24, value66 in ipairs(grabParts3:GetChildren()) do
                if value66.Name ~= "GrabPart" then
                else
                  local weldConstraint3 = value66:FindFirstChildOfClass("WeldConstraint")

                  if not weldConstraint3 or not weldConstraint3.Part1 then
                  else
                    local part12 = weldConstraint3.Part1
                    local v171 = nil

                    for index25, value67 in ipairs(players:GetPlayers()) do
                      if value67 ~= v1 and value67.Character
                        and part12:IsDescendantOf(value67.Character) then
                        v171 = value67
                        break
                      end
                    end

                    if not v171 then
                    else
                      local v172 = v171.Character
                        and v171.Character:FindFirstChild("HumanoidRootPart")

                      if not v172 then
                      else
                        local v173 = not clone
                        v170 = true

                        if v173 and replicatedStorage.GrabEvents:FindFirstChild("EndGrabEarly") then
                          clone = replicatedStorage.GrabEvents.EndGrabEarly:Clone()
                          replicatedStorage.GrabEvents.EndGrabEarly:Destroy()
                        end

                        replicatedStorage.GrabEvents.SetNetworkOwner:FireServer(
                          v172, v172.CFrame
                        )

                        local isHeld = v171:FindFirstChild("IsHeld")
                        local value68 = isHeld and isHeld.Value or false

                        v172.AssemblyLinearVelocity = Vector3.zero
                        v172.AssemblyAngularVelocity = Vector3.zero

                        if value68 then
                          replicatedStorage.GrabEvents.DestroyGrabLine:FireServer(v172)
                        else
                          replicatedStorage.GrabEvents.SetNetworkOwner:FireServer(
                            v172, torso.CFrame
                          )

                          replicatedStorage.GrabEvents.DestroyGrabLine:FireServer(v172)
                        end
                      end
                    end
                  end
                end
              end

              if not v170 and clone
                and not replicatedStorage.GrabEvents:FindFirstChild("EndGrabEarly") then
                clone.Parent = replicatedStorage.GrabEvents
                clone = nil
              end

              return
            end
          end
        end)

        return
      end
    end,
  })

  GrabLinesTab:CreateParagraph({
    Title = '<font face="GothamBlack" color="rgb(255,255,255)">Credits</font>',
    Content = "Thanks to <b>netherlandson_top0</b> for creating this kick Grab and sharing it.",
  })

  RagdollGrab = false
  scriptRagdollGrabToy = nil
  ragdollGrabMonitor = nil
  RAGDOLLGRAB_UNIQUE_ID = nil
  isRagdollGrabRespawning = false

  function UpdateRagdollGrabPalletMenu()
    task.spawn(function()
      local playerGui = v1:FindFirstChild("PlayerGui")

      if not playerGui then
        return
      else
        local menuGui = playerGui:FindFirstChild("MenuGui")

        if not menuGui or not scriptRagdollGrabToy
          or not scriptRagdollGrabToy:FindFirstChild("ScriptRagdollID") then
          return
        else
          local contents = menuGui.Menu.TabContents.ToyDestroy.Contents
          local value69 = scriptRagdollGrabToy.ScriptRagdollID.Value
          local v174 = {}

          for index26, value70 in ipairs(BackPack:GetChildren()) do
            if value70.Name == "RagdollGrab" or value70.Name == "PalletLightBrown" then
              table.insert(v174, value70)
            end
          end

          local v175 = 0

          for index27, value71 in ipairs(v174) do
            if value71:FindFirstChild("ScriptRagdollID")
              and value71.ScriptRagdollID.Value == value69 then
              v175 = index27
              break
            end
          end

          if v175 == 0 then
            return
          else
            local count = 0

            for index28, value72 in ipairs(contents:GetChildren()) do
              if value72.Name == "PalletLightBrown" and value72:FindFirstChild("ViewItemButton") then
                count = count + 1

                if count == v175 then
                  local viewItemButton = value72.ViewItemButton
                  viewItemButton.Text = "Ragdoll Grab (DO NOT DELETE)"
                  viewItemButton.TextScaled = true

                  if viewItemButton:FindFirstChild("LowResImage") then
                    viewItemButton.LowResImage.Image = ""
                  end

                  return
                end
              end
            end

            return
          end
        end
      end
    end)
  end

  function PrepareRagdollGrab()
    local v176 = scriptRagdollGrabToy or isRagdollGrabRespawning
    local v177, spawnToyRemoteFunction3

    if v176 then
      return
    else
      isRagdollGrabRespawning = true

      for index29, value73 in ipairs(BackPack:GetChildren()) do
        local v178 = value73

        if v178.Name == "RagdollGrab" then
          pcall(function() replicatedStorage.MenuToys.DestroyToy:FireServer(v178) end)
        end
      end

      local generateGUID = HttpService:GenerateGUID(false)
      spawnToyRemoteFunction3 = replicatedStorage.MenuToys.SpawnToyRemoteFunction

      for n = 1, 3 do
        local head3 = v1.Character and v1.Character:FindFirstChild("Head")

        if not head3 then
          task.wait(0.5)
        else
          task.spawn(function()
            spawnToyRemoteFunction3:InvokeServer("PalletLightBrown", CFrame.new(
              head3.Position + Vector3.new(0, 1, 0), head3.Position
            ) * CFrame.Angles(math.pi, 0, 0), Vector3.new(0, 0, 0))
          end)

          local v179

          local connect35 = BackPack.ChildAdded:Connect(function(child4)
            if child4.Name == "PalletLightBrown" then
              v179 = child4
            end
          end)

          local v180 = tick()

          if not v179 then
            tick()
          end

          repeat
            task.wait()
            v177 = v179 or tick() - v180 > 8
          until v177

          connect35:Disconnect()
          local ragdollGrab = v179

          if ragdollGrab then
            if ragdollGrab:FindFirstChild("ScriptRagdollID") then
              ragdollGrab.ScriptRagdollID:Destroy()
            end

            local scriptRagdollID = Instance.new("StringValue")
            scriptRagdollID.Name = "ScriptRagdollID"
            scriptRagdollID.Value = generateGUID
            scriptRagdollID.Parent = ragdollGrab

            ragdollGrab.Name = "RagdollGrab"
            local waitForChild5 = ragdollGrab:WaitForChild("SoundPart", 5)

            if waitForChild5 then
              task.spawn(function()
                while RagdollGrab and waitForChild5 and waitForChild5.Parent do
                  if not waitForChild5:FindFirstChild("PartOwner")
                    or waitForChild5.PartOwner.Value ~= v1.Name then
                    replicatedStorage.GrabEvents.SetNetworkOwner:FireServer(
                      waitForChild5, waitForChild5.CFrame
                    )
                  end

                  task.wait(0.1)
                end
              end)

              local bodyVelocity4 = Instance.new("BodyVelocity")
              bodyVelocity4.Parent = waitForChild5
              bodyVelocity4.MaxForce = Vector3.new(0, math.huge, 0)
              bodyVelocity4.Velocity = Vector3.new(0, 1000, 0)

              for key7, value74 in pairs(ragdollGrab:GetChildren()) do
                if value74:IsA("BasePart") then
                  value74.Transparency = 1
                  value74.Size = Vector3.new(0.5, 0.5, 0.5)
                  value74.CanCollide = false
                end
              end

              if waitForChild5:FindFirstChild("Wood") then
                waitForChild5.Wood:Destroy()
              end

              scriptRagdollGrabToy = ragdollGrab
              RAGDOLLGRAB_UNIQUE_ID = generateGUID
              isRagdollGrabRespawning = false
              UpdateRagdollGrabPalletMenu()
              return
            end

            ragdollGrab:Destroy()
          end

          task.wait(0.5)
        end
      end

      isRagdollGrabRespawning = false
      return
    end
  end

  function DestroyRagdollGrab()
    if scriptRagdollGrabToy and scriptRagdollGrabToy.Parent then
      pcall(function() replicatedStorage.MenuToys.DestroyToy:FireServer(scriptRagdollGrabToy) end)
      task.wait(0.1)
    end

    scriptRagdollGrabToy = nil
    RAGDOLLGRAB_UNIQUE_ID = nil
  end

  function StartRagdollGrabMonitor()
    if ragdollGrabMonitor then
      task.cancel(ragdollGrabMonitor)
    end

    ragdollGrabMonitor = task.spawn(function()
      while RagdollGrab do
        task.wait(2)

        if not scriptRagdollGrabToy or not scriptRagdollGrabToy.Parent
          or not scriptRagdollGrabToy:FindFirstChild("ScriptRagdollID")
          or scriptRagdollGrabToy.ScriptRagdollID.Value ~= RAGDOLLGRAB_UNIQUE_ID then
          scriptRagdollGrabToy = nil
          PrepareRagdollGrab()
        end
      end
    end)
  end

  GrabLinesTab:CreateToggle({
    Name = 'Ragdoll Grab  <font face="GothamBlack" color="rgb(240,184,111)">PALLET</font>',
    CurrentValue = false,
    Flag = "RagdollGrabToggle",
    Callback = function(value75)
      RagdollGrab = value75

      if value75 then
        task.wait(0.2)
        PrepareRagdollGrab()
        StartRagdollGrabMonitor()
      else
        DestroyRagdollGrab()

        if ragdollGrabMonitor then
          task.cancel(ragdollGrabMonitor)
          ragdollGrabMonitor = nil
        end
      end
    end,
  })

  Workspace.ChildAdded:Connect(function(child5)
    if RagdollGrab and child5.Name == "GrabParts" then
      task.wait(0.05)

      local weldConstraint4 = child5:FindFirstChild("GrabPart")
        and child5.GrabPart:FindFirstChild("WeldConstraint")

      if weldConstraint4 and weldConstraint4.Part1 then
        local head4 = weldConstraint4.Part1.Parent:FindFirstChild("Head")
        local ragdollGrab2 = BackPack:FindFirstChild("RagdollGrab")

        if head4 and ragdollGrab2 and ragdollGrab2:FindFirstChild("SoundPart") then
          firetouchinterest(ragdollGrab2.SoundPart, head4, 0)
          task.wait()
          firetouchinterest(ragdollGrab2.SoundPart, head4, 1)
        end
      end
    end
  end)

  BackPack.ChildAdded:Connect(function(child6)
    if not RagdollGrab then
      return
    end

    task.wait(0.05)

    if child6:FindFirstChild("ScriptRagdollID")
      and child6.ScriptRagdollID.Value == RAGDOLLGRAB_UNIQUE_ID then
      scriptRagdollGrabToy = child6
      UpdateRagdollGrabPalletMenu()
    end
  end)

  BackPack.ChildRemoved:Connect(function(child7)
    if RagdollGrab and child7 == scriptRagdollGrabToy then
      scriptRagdollGrabToy = nil
      task.wait(0.5)

      if RagdollGrab and not scriptRagdollGrabToy then
        PrepareRagdollGrab()
      end
    end
  end)

  v22 = 30
  connect14 = nil
  v23 = false

  GrabLinesTab:CreateToggle({
    Name = 'Massless Grab    <font face="GothamBlack" color="rgb(0,255,0)">MASSLESS</font>   <font face="GothamBlack" color="rgb(255,255,255)">(PLAYER & OBJECT)</font>',
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(value76)
      v23 = value76

      if value76 then
        connect14 = workspace.ChildAdded:Connect(function(child8)
          if child8.Name ~= "GrabParts" or not v23 then
            return
          end

          task.wait(0.1)

          if not child8.Parent then
            return
          else
            local dragPart = child8:FindFirstChild("DragPart")

            if dragPart and dragPart:FindFirstChild("AlignPosition")
              and dragPart:FindFirstChild("AlignOrientation") then
              dragPart.AlignPosition.Responsiveness = v22
              dragPart.AlignPosition.MaxForce = math.huge
              dragPart.AlignPosition.MaxVelocity = math.huge
              dragPart.AlignOrientation.Responsiveness = v22
              dragPart.AlignOrientation.MaxTorque = math.huge
            end

            return
          end
        end)
      elseif connect14 then
        connect14:Disconnect()
        connect14 = nil
      end
    end,
  })

  GrabLinesTab:CreateInput({
    Name = "Massless Sense",
    CurrentValue = tostring(v22),
    PlaceholderText = "Enter sense value",
    RemoveTextAfterFocusLost = false,
    Flag = "MasslessSenseInput",
    Callback = function(value77)
      local v181 = tonumber(value77)

      if v181 and v181 > 0 then
        v22 = v181
      end
    end,
  })

  v24 = false

  GrabLinesTab:CreateToggle({
    Name = 'Crazy Grab\t\t<font face="GothamBlack" color="rgb(150,0,255)">CRAZY</font>\t<font face="GothamBlack" color="rgb(255,255,255)">(PLAYER)</font>',
    CurrentValue = false,
    Callback = function(value78)
      if value78 then
        if v24 then
          return
        end

        v24 = true

        task.spawn(function()
          while v24 do
            pcall(function()
              local grabParts4 = workspace:FindFirstChild("GrabParts")
              local grabPart3 = grabParts4 and grabParts4:FindFirstChild("GrabPart")
              local weldConstraint5 = grabPart3 and grabPart3:FindFirstChild("WeldConstraint")
              local part13 = weldConstraint5 and weldConstraint5.Part1
              local parent = part13 and part13.Parent
              local v182 = parent and parent:FindFirstChild("HumanoidRootPart")

              if v182 then
                for index30, value79 in ipairs({
                  Vector3.new(-17, 421, 50), Vector3.new(145, 397, -126),
                  Vector3.new(157, 254, 89), Vector3.new(-26, 207, -26),
                  Vector3.new(-23, 456, -19), Vector3.new(15, 211, 45),
                }) do
                  if not v24 then
                    break
                  end

                  v182.CFrame = CFrame.new(value79)
                  task.wait(0.1)
                end
              end
            end)

            task.wait()
          end
        end)

        return
      end

      v24 = false
    end,
  })

  getgenv().FlingGrabConnection = nil

  GrabLinesTab:CreateToggle({
    Name = 'Fling Air Grab\t  <font face="GothamBlack" color="rgb(0,255,255)">FLING</font>\t<font face="GothamBlack" color="rgb(255,255,255)">(PLAYER)</font>',
    CurrentValue = false,
    Flag = "ToggleFlingGrab",
    Callback = function(value80)
      if getgenv().FlingGrabConnection then
        getgenv().FlingGrabConnection:Disconnect()
        getgenv().FlingGrabConnection = nil
      end

      function GetGrabbedCharacter()
        local grabParts5 = workspace:FindFirstChild("GrabParts")

        if not grabParts5 then
          return nil
        else
          local grabPart4 = grabParts5:FindFirstChild("GrabPart")

          if not grabPart4 then
            return nil
          else
            local weldConstraint6 = grabPart4:FindFirstChild("WeldConstraint")
              or grabPart4:FindFirstChild("Weld")

            if not weldConstraint6 then
              return nil
            end

            return weldConstraint6.Part1 and weldConstraint6.Part1.Parent or nil
          end
        end
      end

      if not value80 then
        return
      else
        local v183 = getgenv()

        v183.FlingGrabConnection = runService.Heartbeat:Connect(function()
          local v184 = GetGrabbedCharacter()

          if v184 and v184:FindFirstChild("HumanoidRootPart") then
            v184.HumanoidRootPart.Velocity = Vector3.new(0, 500, 0)
          end
        end)

        return
      end
    end,
  })

  v25 = false
  v26 = 5
  v27 = {}

  GrabLinesTab:CreateToggle({
    Name = 'Spin Grab    <font face="GothamBlack" color="rgb(108,76,0)">SPIN</font>   <font face="GothamBlack" color="rgb(255,255,255)">(PLAYER & OBJECT)</font>',
    CurrentValue = false,
    Flag = "SpinTogglePermanent",
    Callback = function(value81)
      v25 = value81

      if value81 then
        task.spawn(function()
          while v25 do
            pcall(function()
              local grabParts6 = workspace:FindFirstChild("GrabParts")

              if grabParts6 then
                local grabPart5 = grabParts6:FindFirstChild("GrabPart")

                if grabPart5 then
                  local weldConstraint7 = grabPart5:FindFirstChild("WeldConstraint")

                  if weldConstraint7 and weldConstraint7.Part1 then
                    local part14 = weldConstraint7.Part1.Name == "SoundPart"
                        and weldConstraint7.Part1
                      or weldConstraint7.Part1.Parent:FindFirstChild("SoundPart")
                      or weldConstraint7.Part1.Parent.PrimaryPart
                      or weldConstraint7.Part1

                    if part14 and not v27[part14] then
                      v27[part14] = true

                      if not part14:FindFirstChild("BodyGyro") then
                        local bodyGyro = Instance.new("BodyGyro")
                        bodyGyro.P = 15000
                        bodyGyro.D = 200
                        bodyGyro.MaxTorque = Vector3.new(5000000, 5000000, 5000000)
                        bodyGyro.CFrame = part14.CFrame
                        bodyGyro.Parent = part14
                      end
                    end
                  end
                end
              end

              for key8, value82 in pairs(v27) do
                if key8 and key8.Parent and key8:FindFirstChild("BodyGyro") then
                  key8.BodyGyro.CFrame = key8.BodyGyro.CFrame
                    * CFrame.Angles(0, math.rad(v26), 0)
                end
              end
            end)

            task.wait()
          end
        end)
      else
        v27 = {}
      end
    end,
  })

  GrabLinesTab:CreateInput({
    Name = "Spin Speed",
    CurrentValue = tostring(v26),
    PlaceholderText = "Enter spin speed",
    RemoveTextAfterFocusLost = false,
    Flag = "SpinSpeedInput",
    Callback = function(value83)
      local v185 = tonumber(value83)

      if v185 and v185 > 0 then
        v26 = v185
      end
    end,
  })

  v28 = 10
  v29 = false

  CamPart = Instance.new("Part")
  CamPart.Size = Vector3.new(1, 1, 1)
  CamPart.Anchored = false
  CamPart.CanCollide = false
  CamPart.Transparency = 1
  CamPart.Parent = Workspace

  Vel = Instance.new("BodyVelocity")
  Vel.MaxForce = Vector3.new(1000000000, 1000000000, 1000000000)
  Vel.Parent = CamPart

  Gui = Instance.new("ScreenGui", v1:WaitForChild("PlayerGui"))
  Gui.ResetOnSpawn = false

  v30 = {}
  v31 = false

  function Btn(text2, position5, fn)
    local v186, v187

    if not v29 then
      return
    else
      local instance = Instance.new("TextButton", Gui)
      instance.Size = UDim2.new(0, 100, 0, 50)
      instance.Position = position5
      instance.Text = text2
      instance.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
      instance.TextColor3 = Color3.new(1, 1, 1)
      instance.Font = Enum.Font.SourceSansBold
      instance.TextSize = 20
      instance.AutoButtonColor = true

      v186 = false
      v187 = true

      instance.MouseButton1Down:Connect(function()
        if not v29 then
          return
        end

        v186 = true
        v187 = true

        coroutine.wrap(function()
          while v29 and v187 and v186 do
            fn(true)
            task.wait(0.025)
          end
        end)()
      end)

      instance.MouseButton1Up:Connect(function()
        if not v29 then
          return
        end

        v186 = false
        fn(false)
      end)

      table.insert(v30, instance)
      return
    end
  end

  function UI()
    if v31 or not v29 then
      return
    else
      local contextButtonFrame = v1.PlayerGui:WaitForChild("ContextActionGui"):WaitForChild("ContextButtonFrame")
      contextButtonFrame:GetChildren()

      repeat
        task.wait()
      until #contextButtonFrame:GetChildren() >= 5

      local getChildren = contextButtonFrame:GetChildren()

      if getChildren[5] and getChildren[4] then
        Btn("Front", getChildren[5].Position, function(p34)
          if p34 and v29 then
            v28 = math.clamp(v28 + 10, 10, 500)
          end
        end)

        Btn("Back", getChildren[4].Position, function(p35)
          if p35 and v29 then
            v28 = math.clamp(v28 - 10, 5, 500)
          end
        end)

        getChildren[4].Parent = nil
        getChildren[5].Parent = nil

        v31 = true
      end

      return
    end
  end

  function Reset()
    Gui:ClearAllChildren()
    table.clear(v30)
    v31 = false
  end

  function Hide(p36)
    if not v29 then
      return
    end

    for key9, value84 in pairs(p36:GetDescendants()) do
      if value84:IsA("BasePart") and value84.Name ~= "HumanoidRootPart" then
        local getChildren2 = value84.GetChildren
        value84.Transparency = 0

        for key10, value85 in pairs(getChildren2(value84)) do
          if value85:IsA("Decal") then
            value85.Transparency = 0
          end
        end
      elseif value84:IsA("Accessory") then
        local handle = value84:FindFirstChild("Handle")

        if handle then
          handle.Transparency = 0
        end
      end
    end
  end

  function Cam()
    if not v29 then
      return
    else
      local lookVector = camera.CFrame.LookVector
      local vector3 = Vector3.new(0, 20, 0)
      local v188 = humanoidRootPart.Position + (lookVector * v28 + vector3)
      CamPart.Position = CamPart.Position:Lerp(v188, 0.25)
      Vel.Velocity = (v188 - CamPart.Position) * 10

      camera.CFrame = camera.CFrame:Lerp(CFrame.new(
        CamPart.Position, CamPart.Position + lookVector
      ), 0.25)

      return
    end
  end

  character:GetPropertyChangedSignal("Parent"):Connect(function()
    if v29 then
      Hide(character)

      camera.CameraSubject = humanoid
      camera.CameraType = Enum.CameraType.Custom

      if not v31 then
        UI()
      end
    end
  end)

  runService.Heartbeat:Connect(function()
    if v29 then
      Cam()

      if not Workspace:FindFirstChild("GrabParts") then
        v28 = 10
      end
    end
  end)

  v32 = 1000
  v33 = false
  connect15 = nil

  function f2()
    v33 = false

    if connect15 then
      connect15:Disconnect()
      connect15 = nil
    end

    if connect16 then
      connect16:Disconnect()
      connect16 = nil
    end
  end

  connect16 = nil

  function f3()
    connect17 = Workspace.ChildAdded:Connect(function(child9)
      if not v34 then
        return
      end

      local grabPart6

      if child9.Name == "GrabParts" then
        grabPart6 = child9:FindFirstChild("GrabPart")
        grabPart6 = grabPart6 and grabPart6:FindFirstChild("WeldConstraint")
        grabPart6 = grabPart6 and grabPart6.Part1

        if grabPart6 then
          child9:GetPropertyChangedSignal("Parent"):Connect(function()
            if not child9.Parent and v34 then
              local bodyVelocity5 = Instance.new("BodyVelocity")
              bodyVelocity5.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
              bodyVelocity5.Velocity = camera.CFrame.LookVector * v32
              bodyVelocity5.Parent = grabPart6

              debris:AddItem(bodyVelocity5, 1)
            end
          end)
        end
      end
    end)
  end

  function f18()
    local character27 = v1.Character

    if not character27 then
      return
    end

    character27:WaitForChild("HumanoidRootPart")

    connect15 = Workspace.ChildAdded:Connect(function(child10)
      if not v33 then
        return
      end

      local grabPart7

      if child10.Name == "GrabParts" then
        grabPart7 = child10:FindFirstChild("GrabPart")
        grabPart7 = grabPart7 and grabPart7:FindFirstChild("WeldConstraint")
        grabPart7 = grabPart7 and grabPart7.Part1

        if grabPart7 then
          child10:GetPropertyChangedSignal("Parent"):Connect(function()
            if not child10.Parent and v33 then
              if connect16 then
                connect16:Disconnect()
              end

              connect16 = userInputService.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton2 then
                  local bodyVelocity6 = Instance.new("BodyVelocity")
                  bodyVelocity6.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                  bodyVelocity6.Velocity = camera.CFrame.LookVector * v32
                  bodyVelocity6.Parent = grabPart7

                  debris:AddItem(bodyVelocity6, 1)
                end
              end)
            end
          end)
        end
      end
    end)
  end

  function f4()
    v34 = false

    if connect17 then
      connect17:Disconnect()
      connect17 = nil
    end
  end

  v34 = false
  connect17 = nil

  GrabLinesTab:CreateSection("Stregth")

  GrabLinesTab:CreateToggle({
    Name = 'Strength (PC)  <font face="GothamBlack" color="rgb(255, 255, 255)">(PLAYER & OBJECT)</font>    <font face="GothamBlack" color="rgb(7,255,0)">GRAB</font>\t<font face="GothamBlack" color="rgb(255,0,50)">POWER</font>',
    CurrentValue = false,
    Flag = "StrengthPC",
    Callback = function(value86)
      if not value86 then
        f2()
        return
      end

      v33 = true
      f18()
    end,
  })

  GrabLinesTab:CreateToggle({
    Name = 'Strength (Mobile)  <font face="GothamBlack" color="rgb(255, 255, 255)">(PLAYER & OBJECT)</font>    <font face="GothamBlack" color="rgb(7,255,0)">GRAB</font>\t<font face="GothamBlack" color="rgb(255,255,0)">POWER</font>',
    CurrentValue = false,
    Flag = "StrengthMobile",
    Callback = function(value87)
      if not value87 then
        f4()
        return
      end

      v34 = true
      f3()
    end,
  })

  GrabLinesTab:CreateSlider({
    Name = "Strength Force",
    Range = { 100, 10000 },
    Increment = 100,
    Suffix = "Force",
    CurrentValue = 1000,
    Flag = "StrengthForce",
    Callback = function(value88) v32 = value88 end,
  })

  anchoredParts = {}
  anchoredConnections = {}
  compiledGroups = {}
  compileConnections = {}
  renderSteppedConnections = {}
  groupBillboardGuis = {}
  partHighlights = {}
  selectedGroupIndex = 1
  GroupDropdown = nil

  function f17(p37)
    for index31, value89 in ipairs(p37) do
      if value89 then
        value89:Disconnect()
      end
    end

    table.clear(p37)
  end

  function getHighlight(p38)
    return p38:FindFirstChild("Highlight")
      or p38.Parent and p38.Parent:FindFirstChild("Highlight")
  end

  function FindFirstAncestorOfType(p39, p40)
    local parent2 = p39.Parent

    while parent2 do
      if parent2:IsA(p40) then
        return parent2
      end

      parent2 = parent2.Parent
    end

    return nil
  end

  function createHighlight(parent3)
    local highlight = Instance.new("Highlight")
    highlight.DepthMode = Enum.HighlightDepthMode.Occluded
    highlight.FillTransparency = 1
    highlight.Name = "Highlight"
    highlight.OutlineColor = Color3.new(0, 0, 1)
    highlight.OutlineTransparency = 0
    highlight.Parent = parent3

    return highlight
  end

  function rmGroupBillboard(p41)
    if groupBillboardGuis[p41] then
      groupBillboardGuis[p41]:Destroy()
      groupBillboardGuis[p41] = nil
    end
  end

  function mkGroupBillboard(adornee, p42, p43)
    rmGroupBillboard(p42)

    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Adornee = adornee
    billboardGui.Size = UDim2.new(0, 120, 0, 60)
    billboardGui.AlwaysOnTop = true
    billboardGui.StudsOffset = Vector3.new(0, 3, 0)
    billboardGui.Parent = CoreGui

    local textLabel2 = Instance.new("TextLabel")
    textLabel2.Size = UDim2.new(1, 0, 0.6, 0)
    textLabel2.BackgroundTransparency = 1
    textLabel2.Text = "GROUP " .. p42
    textLabel2.TextColor3 = Color3.new(0, 1, 0)
    textLabel2.TextStrokeTransparency = 0
    textLabel2.Font = Enum.Font.GothamBold
    textLabel2.TextScaled = true
    textLabel2.Parent = billboardGui

    local textLabel3 = Instance.new("TextLabel")
    textLabel3.Size = UDim2.new(1, 0, 0.4, 0)
    textLabel3.Position = UDim2.new(0, 0, 0.6, 0)
    textLabel3.BackgroundTransparency = 1
    textLabel3.Text = p43 .. " parts"
    textLabel3.TextColor3 = Color3.new(1, 1, 1)
    textLabel3.TextStrokeTransparency = 0
    textLabel3.Font = Enum.Font.Gotham
    textLabel3.TextScaled = true
    textLabel3.Parent = billboardGui

    groupBillboardGuis[p42] = billboardGui
  end

  function updatePartHighlight(p44, p45)
    local v189 = getHighlight(p44)

    if v189 then
      if p45 and p45 ~= localPlayer.Name then
        v189.OutlineColor = Color3.new(1, 0, 0)
      else
        v189.OutlineColor = Color3.new(0, 0, 1)
      end

      partHighlights[p44] = p45
    end
  end

  function onPartOwnerChanged(p46, p47)
    if p46.Name == "PartOwner" then
      updatePartHighlight(p47, p46.Value)
    end
  end

  function createBodyMovers(p48, position6, cframe4)
    for index32, value90 in ipairs(p48:GetChildren()) do
      if value90:IsA("BodyPosition") or value90:IsA("BodyGyro") then
        value90:Destroy()
      end
    end

    local bodyPosition = Instance.new("BodyPosition")
    local bodyGyro2 = Instance.new("BodyGyro")

    bodyPosition.P = 15000
    bodyPosition.D = 200
    bodyPosition.MaxForce = Vector3.new(5000000, 5000000, 5000000)
    bodyPosition.Position = position6
    bodyPosition.Parent = p48

    bodyGyro2.P = 15000
    bodyGyro2.D = 200
    bodyGyro2.MaxTorque = Vector3.new(5000000, 5000000, 5000000)
    bodyGyro2.CFrame = cframe4
    bodyGyro2.Parent = p48
  end

  function anchorGrab()
    while true do
      pcall(function()
        local grabParts7 = workspace:FindFirstChild("GrabParts")

        if not grabParts7 then
          return
        else
          local grabPart8 = grabParts7:FindFirstChild("GrabPart")

          if not grabPart8 then
            return
          else
            local weldConstraint8 = grabPart8:FindFirstChild("WeldConstraint")

            if not weldConstraint8 or not weldConstraint8.Part1 then
              return
            else
              local part15 = weldConstraint8.Part1.Name == "SoundPart" and weldConstraint8.Part1
                or weldConstraint8.Part1.Parent:FindFirstChild("SoundPart")
                or weldConstraint8.Part1.Parent.PrimaryPart or weldConstraint8.Part1

              if not part15 or workspace.Map and part15:IsDescendantOf(workspace.Map) then
                return
              else
                local v190 = false

                for index33, value91 in ipairs(compiledGroups) do
                  if value91.primaryPart == part15 then
                    v190 = true
                    break
                  end

                  for index34, value92 in ipairs(value91.group) do
                    if value92.part == part15 then
                      v190 = true
                      break
                    end
                  end

                  if v190 then
                    break
                  end
                end

                if v190 then
                  return
                else
                  for key11, value93 in pairs(players:GetPlayers()) do
                    if part15:IsDescendantOf(value93.Character) then
                      return
                    end
                  end

                  local v191 = true

                  for key12, value94 in pairs(part15:GetDescendants()) do
                    if table.find(anchoredParts, value94) then
                      v191 = false
                      break
                    end
                  end

                  if v191 and not table.find(anchoredParts, part15) then
                    local v192 = FindFirstAncestorOfType(part15, "Model") or part15
                    createHighlight(v192)
                    table.insert(anchoredParts, part15)

                    v192.DescendantAdded:Connect(function(descendant2)
                      onPartOwnerChanged(descendant2, part15)
                    end)

                    for index35, value95 in ipairs(v192:GetDescendants()) do
                      onPartOwnerChanged(value95, part15)
                    end
                  end

                  local v193 = FindFirstAncestorOfType(part15, "Model")

                  if v193 and v193 ~= workspace then
                    for index36, value96 in ipairs(v193:GetDescendants()) do
                      if value96:IsA("BodyPosition") or value96:IsA("BodyGyro") then
                        value96:Destroy()
                      end
                    end
                  else
                    for index37, value97 in ipairs(part15:GetChildren()) do
                      if value97:IsA("BodyPosition") or value97:IsA("BodyGyro") then
                        value97:Destroy()
                      end
                    end
                  end

                  while true do
                    if not workspace:FindFirstChild("GrabParts") then
                      break
                    end

                    task.wait()
                  end

                  createBodyMovers(part15, part15.Position, part15.CFrame)
                  return
                end
              end
            end
          end
        end
      end)

      task.wait()
    end
  end

  function cleanupAnchoredParts()
    for index38, value98 in ipairs(anchoredParts) do
      if value98 and value98.Parent then
        if value98:FindFirstChild("BodyPosition") then
          value98.BodyPosition:Destroy()
        end

        if value98:FindFirstChild("BodyGyro") then
          value98.BodyGyro:Destroy()
        end

        local v194 = getHighlight(value98)

        if v194 then
          v194:Destroy()
        end
      end
    end

    f17(anchoredConnections)
  end

  function updateBodyMovers(p49)
    for index39, value99 in ipairs(compiledGroups) do
      if value99.primaryPart == p49 then
        for index40, value100 in ipairs(value99.group) do
          if value100.part and value100.part.Parent then
            local bodyPosition2 = value100.part:FindFirstChild("BodyPosition")
            local bodyGyro3 = value100.part:FindFirstChild("BodyGyro")

            if bodyPosition2 then
              bodyPosition2.Position = (p49.CFrame * value100.offset).Position
            end

            if bodyGyro3 then
              bodyGyro3.CFrame = p49.CFrame * value100.offset
            end
          end
        end

        mkGroupBillboard(p49, index39, #value99.group + 1)
        return
      end
    end
  end

  function updateGroupDropdown()
    local v195 = {}

    for i6 = 1, #compiledGroups do
      table.insert(v195, "Group " .. i6)
    end

    if #v195 == 0 then
      v195 = { "No groups" }
      selectedGroupIndex = 1
    else
      selectedGroupIndex = math.clamp(selectedGroupIndex, 1, #compiledGroups)
    end

    pcall(function()
      if GroupDropdown then
        GroupDropdown:Refresh(v195)
        GroupDropdown:Set({ "Group " .. selectedGroupIndex })
      end
    end)
  end

  function compileGroup()
    local v196

    if #anchoredParts == 0 then
      return
    elseif #anchoredParts == 0 then
      return
    else
      v196 = nil
      local v197 = {}

      for index41, value101 in ipairs(anchoredParts) do
        if value101 and value101.Parent then
          if not v196 then
            v196 = value101
          else
            table.insert(v197, value101)
          end
        end
      end

      if not v196 then
        return
      else
        anchoredParts = { v196 }

        for index42, value102 in ipairs(v197) do
        end

        local anchored = v196.Anchored
        v196.Anchored = false

        if v196:FindFirstChild("BodyPosition") then
          v196.BodyPosition:Destroy()
        end

        if v196:FindFirstChild("BodyGyro") then
          v196.BodyGyro:Destroy()
        end

        local v198 = getHighlight(v196)

        if not v198 then
          v198 = createHighlight(v196.Parent and v196.Parent:IsA("Model") and v196.Parent or v196)
        end

        v198.OutlineColor = Color3.new(0, 1, 0)
        local v199 = {}

        for index43, value103 in ipairs(anchoredParts) do
          if value103 ~= v196 and value103 and value103.Parent then
            local v200 = FindFirstAncestorOfType(value103, "Model")

            if v200 and v200 ~= workspace then
              for index44, value104 in ipairs(v200:GetDescendants()) do
                if value104:IsA("BasePart") then
                  value104.CanCollide = false
                end
              end
            else
              value103.CanCollide = false
            end

            local cframe5 = v196.CFrame

            table.insert(v199, {
              part = value103,
              offset = cframe5:ToObjectSpace(value103.CFrame),
            })
          end
        end

        local v201 = #compiledGroups + 1

        table.insert(compiledGroups, {
          primaryPart = v196,
          group = v199,
          wasAnchored = anchored,
          groupId = v201,
        })

        v196:GetPropertyChangedSignal("CFrame"):Connect(function() updateBodyMovers(v196) end)
        runService.Heartbeat:Connect(function() updateBodyMovers(v196) end)

        for index45, value105 in ipairs(v199) do
          local v202 = value105

          if v202.part and v202.part.Parent then
            (v202.part.Parent and v202.part.Parent:IsA("Model") and v202.part.Parent or v202.part).DescendantAdded:Connect(function(descendant3)
              onPartOwnerChanged(descendant3, v202.part)
            end)
          end
        end

        mkGroupBillboard(v196, v201, #v199 + 1)
        f17(anchoredConnections)
        selectedGroupIndex = #compiledGroups
        updateGroupDropdown()
        return
      end
    end
  end

  function deleteSelectedGroup()
    if #compiledGroups == 0 or not selectedGroupIndex or selectedGroupIndex > #compiledGroups then
      return
    else
      local v203 = compiledGroups[selectedGroupIndex]

      for index46, value106 in ipairs(v203.group) do
        if value106.part and value106.part.Parent then
          if value106.part:FindFirstChild("BodyPosition") then
            value106.part.BodyPosition:Destroy()
          end

          if value106.part:FindFirstChild("BodyGyro") then
            value106.part.BodyGyro:Destroy()
          end

          value106.part.CanCollide = true
          local v204 = getHighlight(value106.part)

          if v204 then
            v204:Destroy()
          end
        end
      end

      if v203.primaryPart and v203.primaryPart.Parent then
        if v203.primaryPart:FindFirstChild("BodyPosition") then
          v203.primaryPart.BodyPosition:Destroy()
        end

        if v203.primaryPart:FindFirstChild("BodyGyro") then
          v203.primaryPart.BodyGyro:Destroy()
        end

        v203.primaryPart.CanCollide = true
        local v205 = getHighlight(v203.primaryPart)

        if v205 then
          v205:Destroy()
        end

        if v203.wasAnchored then
          v203.primaryPart.Anchored = true
        end
      end

      rmGroupBillboard(v203.groupId)

      for index47, value107 in ipairs(compiledGroups) do
        value107.groupId = index47
      end

      if #compiledGroups > 0 then
        selectedGroupIndex = math.min(selectedGroupIndex, #compiledGroups)
      else
        selectedGroupIndex = 1
      end

      updateGroupDropdown()
      return
    end
  end

  function cleanupCompiledGroups()
    for index48, value108 in ipairs(compiledGroups) do
      for index49, value109 in ipairs(value108.group) do
        if value109.part and value109.part.Parent then
          if value109.part:FindFirstChild("BodyPosition") then
            value109.part.BodyPosition:Destroy()
          end

          if value109.part:FindFirstChild("BodyGyro") then
            value109.part.BodyGyro:Destroy()
          end

          value109.part.CanCollide = true
          local v206 = getHighlight(value109.part)

          if v206 then
            v206:Destroy()
          end
        end
      end

      if value108.primaryPart and value108.primaryPart.Parent then
        if value108.primaryPart:FindFirstChild("BodyPosition") then
          value108.primaryPart.BodyPosition:Destroy()
        end

        if value108.primaryPart:FindFirstChild("BodyGyro") then
          value108.primaryPart.BodyGyro:Destroy()
        end

        value108.primaryPart.CanCollide = true
        local v207 = getHighlight(value108.primaryPart)

        if v207 then
          v207:Destroy()
        end

        if value108.wasAnchored then
          value108.primaryPart.Anchored = true
        end
      end

      rmGroupBillboard(index48)
    end

    f17(compileConnections)
    f17(renderSteppedConnections)

    groupBillboardGuis = {}
    partHighlights = {}
    selectedGroupIndex = 1
    updateGroupDropdown()
  end

  v35 = nil

  GrabLinesTab:CreateSection("Anchor")

  GrabLinesTab:CreateToggle({
    Name = 'Anchor Grab\t <font face="GothamBlack" color="rgb(255,40,40)">FREEZE</font>\t\t<font face="GothamBlack" color="rgb(255, 255, 255)">(OBJECT)</font>',
    CurrentValue = false,
    Flag = "AnchorGrab",
    Callback = function(value110)
      if value110 then
        v35 = coroutine.create(anchorGrab)
        coroutine.resume(v35)
      elseif v35 then
        coroutine.close(v35)
      end
    end,
  })

  GrabLinesTab:CreateButton({
    Name = 'Unanchor Parts\t<font face="GothamBlack" color="rgb(255,90,0)">UNFREEZE</font>',
    Callback = cleanupAnchoredParts,
  })

  GrabLinesTab:CreateSection("Groups")

  GrabLinesTab:CreateButton({
    Name = 'Compile Parts\t  <font face="GothamBlack" color="rgb(155,0,255)">ASSEMBLE</font>',
    Callback = compileGroup,
  })

  GroupDropdown = GrabLinesTab:CreateDropdown({
    Name = 'Select Group\t<font face="GothamBlack" color="rgb(255,0,130)">PICK</font>',
    Options = { "No groups" },
    CurrentOption = { "No groups" },
    Flag = "SelectedGroup",
    Callback = function(value111)
      for i7 = 1, #compiledGroups do
        if "Group " .. i7 == value111[1] then
          selectedGroupIndex = i7
          return
        end
      end
    end,
  })

  GrabLinesTab:CreateButton({
    Name = 'Delete Selected Group\t <font face="GothamBlack" color="rgb(255,0,0)">REMOVE</font>',
    Callback = deleteSelectedGroup,
  })

  GrabLinesTab:CreateButton({
    Name = 'Delete All Group\t  <font face="GothamBlack" color="rgb(180,0,20)">DELETE</font>',
    Callback = cleanupCompiledGroups,
  })

  GrabLinesTab:CreateLabel("Line", "pencil")

  GrabLinesTab:CreateToggle({
    Name = 'Extend Line (Mobile)  <font face="GothamBlack" color="rgb(255, 255, 255)">(PLAYER & OBJECT)</font>    <font face="GothamBlack" color="rgb(7,255,0)">GRAB</font>\t<font face="GothamBlack" color="rgb(35,60,79)">STRETCH</font>',
    CurrentValue = false,
    Flag = "ExtendLineMobile",
    Callback = function(value112)
      v29 = value112

      if value112 then
        if not v31 then
          UI()
        end

        Hide(character)

        camera.CameraSubject = humanoid
        camera.CameraType = Enum.CameraType.Custom
      else
        Reset()
      end
    end,
  })

  function f5()
    if v36.i then
      v36.i:Disconnect()
      v36.i = nil
    end

    if v36.c then
      v36.c:Disconnect()
      v36.c = nil
    end

    v36.d = 11
  end

  function f6()
    local currentCamera = Workspace.CurrentCamera

    v36.i = userInputService.InputChanged:Connect(function(input2)
      if not v36.on then
        return
      end

      if input2.UserInputType == Enum.UserInputType.MouseWheel then
        if v36.d < 11 then
          v36.d = 11
        end

        if input2.Position.Z > 0 then
          local v208 = v36
          v208.d = v208.d + v36.inc
        elseif input2.Position.Z < 0 then
          local v209 = v36
          v209.d = v209.d - v36.inc
        end
      end
    end)

    v36.c = workspace.ChildAdded:Connect(function(child11)
      if not v36.on or child11.Name ~= "GrabParts" or not child11:IsA("Model") then
        return
      end

      task.wait(0.2)
      local dragPartScroll

      if not child11.Parent then
        return
      else
        local dragPart2 = child11:FindFirstChild("DragPart")

        if not dragPart2 then
          return
        else
          dragPartScroll = dragPart2:Clone()
          dragPartScroll.Name = "DragPart_scroll"

          local dragAttach = dragPartScroll:FindFirstChild("DragAttach")

          if dragPartScroll:FindFirstChild("AlignPosition") and dragAttach then
            dragPartScroll.AlignPosition.Attachment1 = dragAttach
          end

          dragPartScroll.Parent = child11
          v36.d = (dragPartScroll.Position - currentCamera.CFrame.Position).Magnitude

          if dragPartScroll:FindFirstChild("AlignOrientation") then
            dragPartScroll.AlignOrientation.Enabled = false
          end

          if dragPart2:FindFirstChild("AlignPosition") then
            dragPart2.AlignPosition.Enabled = false
          end

          task.spawn(function()
            while child11.Parent and v36.on do
              dragPartScroll.Position = currentCamera.CFrame.Position
                + currentCamera.CFrame.LookVector * v36.d

              runService.RenderStepped:Wait()
            end

            if dragPartScroll then
              dragPartScroll:Destroy()
            end

            v36.d = 11
          end)

          return
        end
      end
    end)
  end

  v36 = {
    d = 11,
    inc = 7,
    on = false,
    i = nil,
    c = nil,
  }

  GrabLinesTab:CreateToggle({
    Name = 'Extend Line (PC)  <font face="GothamBlack" color="rgb(255, 255, 255)">(PLAYER & OBJECT)</font>    <font face="GothamBlack" color="rgb(7,255,0)">GRAB</font>   <font face="GothamBlack" color="rgb(255,60,0)">STRETCH</font>',
    CurrentValue = false,
    Flag = "extendLineToggleFlag",
    Callback = function(value113)
      v36.on = value113

      if value113 then
        f6()
      else
        f5()
      end
    end,
  })

  GrabLinesTab:CreateInput({
    Name = "Scroll Force",
    CurrentValue = tostring(v36.inc),
    PlaceholderText = "Default: 7",
    RemoveTextAfterFocusLost = false,
    Flag = "extendLineInputFlag",
    Callback = function(value114)
      local v210 = tonumber(value114)

      if v210 then
        v36.inc = v210
      end
    end,
  })

  GrabLinesTab:CreateSection("Others Lines")

  GrabLinesTab:CreateToggle({
    Name = 'Invisble Line\t<font face="GothamBlack" color="rgb(7,255,0)">GRAB</font>',
    CurrentValue = false,
    Flag = "InvisbleLine",
    Callback = function(value115)
      invisline = value115

      while invisline do
        CreateGrabLine:FireServer()
        task.wait()
      end
    end,
  })

  GrabLinesTab:CreateToggle({
    Name = 'Crazy Line\t <font face="GothamBlack" color="rgb(7,255,0)">GRAB</font>',
    CurrentValue = false,
    Flag = "CrazyLine",
    Callback = function(value116)
      crazyline = value116

      while crazyline do
        for index50, value117 in ipairs(players:GetPlayers()) do
          local character28 = value117.Character

          if character28 then
            local head5 = character28:FindFirstChild("Head")

            if head5 and CreateGrabLine then
              CreateGrabLine:FireServer(head5, head5.CFrame)
              task.wait()
            end
          end
        end
      end
    end,
  })

  GrabLinesTab:CreateToggle({
    Name = 'Spinning <font face="GothamBlack" color="rgb(255,0,0)">R</font><font face="GothamBlack" color="rgb(255,127,0)">A</font><font face="GothamBlack" color="rgb(255,255,0)">I</font><font face="GothamBlack" color="rgb(0,255,0)">N</font><font face="GothamBlack" color="rgb(0,255,255)">B</font><font face="GothamBlack" color="rgb(0,0,255)">O</font><font face="GothamBlack" color="rgb(255,0,255)">W</font> Line   <font face="GothamBlack" color="rgb(7,255,0)">GRAB</font>',
    CurrentValue = false,
    Flag = "SpinningRainbowLine",
    Callback = function(value118)
      spinningLine = value118

      local waitForChild6, createGrabLine, extendGrabLine, updateLineColorsEvent, huge, v211,
        position7, f34

      if spinningLine then
        local v212 = players.LocalPlayer
        local character29 = v212.Character or v212.CharacterAdded:Wait()

        waitForChild6 = character29:WaitForChild("Torso", 5)
          or character29:WaitForChild("UpperTorso", 5)

        if not waitForChild6 then
          return
        end

        local grabEvents = replicatedStorage:WaitForChild("GrabEvents")
        createGrabLine = grabEvents:WaitForChild("CreateGrabLine")
        extendGrabLine = grabEvents:WaitForChild("ExtendGrabLine")
        updateLineColorsEvent = replicatedStorage:WaitForChild("DataEvents"):WaitForChild("UpdateLineColorsEvent")
        huge = math.huge
        v211 = 0
        position7 = waitForChild6.Position

        function f34(p50)
          local v213 = tick()
          return Color3.fromHSV((v213 * 0.2 + p50) % 1, 1, 1)
        end

        rainbowConnection = runService.Heartbeat:Connect(function(delta2)
          if not spinningLine then
            if rainbowConnection then
              rainbowConnection:Disconnect()
            end

            return
          else
            v211 = (v211 + 2 * math.pi / 2 * delta2) % (2 * math.pi)
            local v214 = 10 + math.sin(tick() * 0) * 0
            local v215 = math.cos(v211)
            local v216 = tick()
            local v217 = math.sin(v216 * 2)
            local v218 = math.sin(v211)
            local vector4 = Vector3.new(v215 * v214, v217 * 1.5, v218 * v214)

            position7 = position7:Lerp(
              waitForChild6.Position + vector4, math.clamp(delta2 * huge, 0, 1)
            )

            createGrabLine:FireServer(
              waitForChild6, CFrame.new((position7 - waitForChild6.Position) * -1)
            )

            extendGrabLine:FireServer(0)

            updateLineColorsEvent:FireServer(ColorSequence.new({
              ColorSequenceKeypoint.new(0, f34(0)), ColorSequenceKeypoint.new(1, f34(0.5)),
            }), f34(0), f34(0.125), f34(0.25), f34(0.375), f34(0.5), f34(0.625), f34(0.75), f34(0.875), f34(0), f34(0))

            return
          end
        end)

        return
      end

      if rainbowConnection then
        rainbowConnection:Disconnect()
      end
    end,
  })

  GrabLinesTab:CreateLabel(
    "Others Lines : You can't see it, but other players can.", Color3.fromRGB(255, 255, 255),
    false
  )

  GrabLinesTab:CreateSection("Lag")

  v37 = false
  v38 = 10

  function lagF()
    while v37 do
      local character30 = v1.Character or v1.CharacterAdded:Wait()
      character30:WaitForChild("HumanoidRootPart")
      character30:WaitForChild("Humanoid")

      if CreateGrabLine then
        for i8 = 0, v38 do
          for index51, value119 in ipairs(players:GetPlayers()) do
            if value119 ~= v1 and value119.Character then
              local torso2 = value119.Character:FindFirstChild("Torso")

              local v219 = torso2
              v219 = torso2 or value119.Character:FindFirstChild("HumanoidRootPart")

              if v219 then
                CreateGrabLine:FireServer(v219, v219.CFrame)
              end
            end
          end
        end
      end

      task.wait(1)
    end
  end

  GrabLinesTab:CreateToggle({
    Name = 'Lag\t  <font face="GothamBlack" color="rgb(7,255,0)">GRAB</font>   <font face="GothamBlack" color="rgb(39,245,218)">PREMIUM</font>',
    CurrentValue = false,
    Flag = "LagToggle",
    Callback = function(value120)
      v37 = value120

      if value120 then
        task.spawn(lagF)
      end
    end,
  })

  GrabLinesTab:CreateInput({
    Name = "Lag Intensity",
    CurrentValue = tostring(v38),
    PlaceholderText = "Enter number of lines",
    RemoveTextAfterFocusLost = false,
    Flag = "LinesInput",
    Callback = function(value121)
      local v220 = tonumber(value121)

      if v220 and v220 > 0 then
        v38 = v220
      end
    end,
  })

  w = nil
  connect18 = nil
  connect19 = nil
  v39 = false
  vector = Vector3.new(6, -18.5, 0)

  function DisableCollisions(p51)
    for index52, value122 in ipairs(p51:GetDescendants()) do
      if value122:IsA("BasePart") then
        value122.CanCollide = false
      end
    end
  end

  function setNoCollideChar(p52)
    for index53, value123 in ipairs(p52:GetDescendants()) do
      if value123:IsA("BasePart") then
        value123.CanCollide = false
      end
    end
  end

  function isTooHigh(p53)
    local character31 = p53.Character
    local v221 = character31 and character31:FindFirstChild("HumanoidRootPart")
    return not v221 or v221.Position.Y > 100000
  end

  function f19()
    local character32 = v1.Character

    if character32 then
      local v222 = character32:FindFirstChildOfClass("Humanoid")

      if v222 and v222.SeatPart then
        local parent4 = v222.SeatPart.Parent

        if parent4 and parent4.Name == "CreatureBlobman" then
          return parent4
        end
      end
    end

    local findFirstChild9 = Workspace:FindFirstChild(v1.Name .. "SpawnedInToys")

    if findFirstChild9 then
      local creatureBlobman2 = findFirstChild9:FindFirstChild("CreatureBlobman")

      if creatureBlobman2 then
        return creatureBlobman2
      end

      return nil
    end

    return nil
  end

  function f20()
    local character33 = v1.Character

    if not character33 then
      return false
    end

    return character33:FindFirstChild("HumanoidRootPart") ~= nil
  end

  function f7()
    local v223 = f19()

    if v223 then
      return v223
    end

    f21()

    for i9 = 1, 30 do
      task.wait(0.1)
      local v224 = f19()

      if v224 then
        return v224
      end
    end

    return nil
  end

  function f21()
    if not f20() then
      return
    end

    local v225 = v1.Character.HumanoidRootPart.CFrame * CFrame.new(0, -8, 8)

    task.spawn(function()
      pcall(function()
        replicatedStorage.MenuToys.SpawnToyRemoteFunction:InvokeServer(
          "CreatureBlobman", v225, Vector3.new(0, 177.22, 0)
        )
      end)
    end)
  end

  v40 = {}
  v40.__index = v40

  function v40.new()
    return setmetatable({}, v40)
  end

  function v40:attach(cframe6)
    self:detach()
    local cameraAnchor = Instance.new("Part")
    local vector5 = Vector3.new(0.2, 0.2, 0.2)
    local v226 = Workspace

    cameraAnchor.Name = "CameraAnchor"
    cameraAnchor.Size = vector5
    cameraAnchor.Transparency = 1
    cameraAnchor.Anchored = true
    cameraAnchor.CanCollide = false
    cameraAnchor.CFrame = cframe6
    cameraAnchor.Parent = v226

    self.part = cameraAnchor

    local currentCamera2 = Workspace.CurrentCamera
    currentCamera2.CameraType = Enum.CameraType.Custom
    currentCamera2.CameraSubject = cameraAnchor
  end

  function v40:detach()
    if self.part then
      self.part:Destroy()
      self.part = nil
    end

    local currentCamera3 = Workspace.CurrentCamera
    local character34 = v1.Character

    if character34 and character34:FindFirstChild("Humanoid") then
      currentCamera3.CameraSubject = character34.Humanoid
    else
      currentCamera3.CameraType = Enum.CameraType.Custom
      currentCamera3.CameraSubject = currentCamera3
    end
  end

  v41 = v40.new()

  function saveOriginalPosAttr()
    local character35 = v1.Character
    local v227 = character35 and character35:FindFirstChild("HumanoidRootPart")

    if v227 then
      character35:SetAttribute("OriginalPosition", v227:GetPivot())
    end
  end

  function getOriginalPosAttr()
    local character36 = v1.Character
    return character36 and character36:GetAttribute("OriginalPosition") or nil
  end

  function initCharAttrs()
    local character37 = v1.Character

    if character37 and character37:FindFirstChild("HumanoidRootPart") then
      character37:SetAttribute("OriginalPosition", character37.HumanoidRootPart:GetPivot())
      character37:SetAttribute("SavingOriginalPos", false)
    end
  end

  function scheduleReturnHome()
    local v228 = getOriginalPosAttr()

    if not v228 then
      return
    end

    local connect36 = nil

    connect36 = runService.Heartbeat:Connect(function()
      local character38 = v1.Character
      local v229 = character38 and character38:FindFirstChild("HumanoidRootPart")

      if v229 then
        v229:PivotTo(v228)

        if getgenv().originalFallenHeight then
          Workspace.FallenPartsDestroyHeight = getgenv().originalFallenHeight
        end

        character38:SetAttribute("SavingOriginalPos", false)
      end

      v41:detach()
      connect36:Disconnect()
    end)
  end

  function modifyTarget(p54, p55, p56)
    local v230 = not (p54 and p55) or p55.Health <= 0
    local bodyAngularVelocity2, bodyVelocity7

    if v230 then
      return
    else
      if p56 then
        local v231 = f7()

        if v231 and v231:FindFirstChild("BlobmanSeatAndOwnerScript") then
          local creatureDrop = v231.BlobmanSeatAndOwnerScript:FindFirstChild("CreatureDrop")

          if creatureDrop then
            for index54, value124 in ipairs(p55.Parent:GetDescendants()) do
              if value124:IsA("Weld") or value124:IsA("BallSocketConstraint") then
                creatureDrop:FireServer(value124, value124)
              end
            end
          end
        end
      end

      p55.Sit = false
      p55:ChangeState(Enum.HumanoidStateType.Running)
      p55:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
      p55:ChangeState(Enum.HumanoidStateType.GettingUp)

      local getPlayerFromCharacter = players:GetPlayerFromCharacter(p55.Parent)

      if getPlayerFromCharacter and getPlayerFromCharacter:FindFirstChild("IsHeld") then
        getPlayerFromCharacter.IsHeld.Value = false
      end

      local ragdolled3 = p55:FindFirstChild("Ragdolled")

      if ragdolled3 then
        ragdolled3.Value = false
      end

      bodyVelocity7 = Instance.new("BodyVelocity")
      bodyAngularVelocity2 = Instance.new("BodyAngularVelocity")

      bodyVelocity7.MaxForce = Vector3.new(10000000, -10000000, 10000000)
      bodyVelocity7.P = 1000000
      bodyVelocity7.Velocity = Vector3.new(math.random(-500, 50), -50, math.random(-50, 50))

      bodyAngularVelocity2.MaxTorque = Vector3.new(-10000000, -10000000, -10000000)
      bodyAngularVelocity2.P = 1000000

      bodyAngularVelocity2.AngularVelocity = Vector3.new(
        math.random(-500, 300), math.random(-300, 300), math.random(-500, 500)
      )

      bodyVelocity7.Parent = p54
      bodyAngularVelocity2.Parent = p54

      p55.BreakJointsOnDeath = false
      p55:ChangeState(Enum.HumanoidStateType.Dead)
      p55.RigType = Enum.HumanoidRigType.R15

      task.delay(2, function()
        if bodyVelocity7.Parent then
          bodyVelocity7:Destroy()
        end

        if bodyAngularVelocity2.Parent then
          bodyAngularVelocity2:Destroy()
        end
      end)

      return
    end
  end

  function performKill()
    if not w then
      return
    else
      local findFirstChild10 = players:FindFirstChild(w)
      local character39 = findFirstChild10 and findFirstChild10.Character
      local v232 = character39 and character39:FindFirstChild("HumanoidRootPart")
      local v233 = character39 and character39:FindFirstChild("Humanoid")
      local head6 = character39 and character39:FindFirstChild("Head")

      if not (findFirstChild10 and v232 and v233 and head6) then
        return
      end

      if isTooHigh(findFirstChild10) then
        return
      end

      if findFirstChild10:FindFirstChild("InPlot") and findFirstChild10.InPlot.Value then
        return
      elseif v233:GetState() == Enum.HumanoidStateType.Dead then
        return
      else
        local character40 = v1.Character
        local v234 = character40 and character40:FindFirstChild("HumanoidRootPart")

        if not (character40 and v234) then
          return
        else
          if not character40:GetAttribute("SavingOriginalPos") then
            saveOriginalPosAttr()
          end

          character40:SetAttribute("SavingOriginalPos", true)
          getgenv().originalFallenHeight = Workspace.FallenPartsDestroyHeight
          Workspace.FallenPartsDestroyHeight = (0 / 0)
          local v235 = getOriginalPosAttr()

          if v235 then
            v41:attach(v235)
          end

          v234:PivotTo((CFrame.new(v232.Position + vector)))
          setNoCollideChar(character39)
          SetNetworkOwner:FireServer(v232, v232.CFrame)
          task.wait(0.05)
          DestroyGrabLine:FireServer(v232)
          task.wait(0.05)

          if head6:FindFirstChild("PartOwner") and head6.PartOwner.Value == v1.Name then
            task.wait(0.05)
            modifyTarget(v232, v233, false)
          end

          scheduleReturnHome()
          return
        end
      end
    end
  end

  function StartLoopKill()
    if connect18 then
      connect18:Disconnect()
    end

    connect18 = runService.Heartbeat:Connect(performKill)
  end

  function StopLoopKill()
    if connect18 then
      connect18:Disconnect()
      connect18 = nil
    end

    v41:detach()
  end

  function sendToSky(parent5, p57)
    DisableCollisions(p57.Parent)

    local bodyVelocity8 = Instance.new("BodyVelocity")
    bodyVelocity8.Velocity = Vector3.new(0, 1000000000, 0)
    bodyVelocity8.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    bodyVelocity8.P = 100000000
    bodyVelocity8.Parent = parent5

    p57.Sit = false
    p57.Jump = true

    task.delay(3, function()
      if bodyVelocity8.Parent then
        bodyVelocity8:Destroy()
      end
    end)
  end

  function executeKick()
    if not w then
      return
    else
      local findFirstChild11 = players:FindFirstChild(w)
      local character41 = findFirstChild11 and findFirstChild11.Character
      local v236 = character41 and character41:FindFirstChild("HumanoidRootPart")
      local head7 = character41 and character41:FindFirstChild("Head")
      local v237 = character41 and character41:FindFirstChild("Humanoid")

      if not (v236 and head7 and v237) or v237.Health <= 0 then
        return
      end

      if isTooHigh(findFirstChild11) then
        return
      end

      if findFirstChild11:FindFirstChild("InPlot") and findFirstChild11.InPlot.Value then
        return
      else
        local character42 = v1.Character

        if not (character42 and character42:FindFirstChild("HumanoidRootPart")) then
          return
        else
          local getPivot = character42:GetPivot()
          character42:PivotTo(CFrame.new(v236.Position + Vector3.new(0, 0, -3)))
          DisableCollisions(character41)
          SetNetworkOwner:FireServer(v236, v236.CFrame)
          task.wait()
          character42:PivotTo(getPivot)
          task.wait(0.1)
          DestroyGrabLine:FireServer(v236)
          task.wait(0.1)
          local partOwner4 = head7:FindFirstChild("PartOwner")

          if partOwner4 and partOwner4.Value == v1.Name then
            sendToSky(v236, v237)
          end

          return
        end
      end
    end
  end

  function StartLoopKick()
    if connect19 then
      connect19:Disconnect()
    end

    v39 = true

    connect19 = runService.Heartbeat:Connect(function()
      if v39 then
        executeKick()
      end
    end)
  end

  function StopLoopKick()
    v39 = false

    if connect19 then
      connect19:Disconnect()
      connect19 = nil
    end
  end

  cframe = nil

  LoopFling = {
    on = false,
    targets = {},
    tpSpeed = 0.3,
    magnetRange = 5,
    stay = 0.5,
    back = 0.5,
  }

  function tpTo(p58)
    local character43 = v1.Character
    local v238 = character43 and character43:FindFirstChild("HumanoidRootPart")

    if not v238 then
      return
    end

    for i10 = 1, 5 do
      v238.CFrame = v238.CFrame:Lerp(p58, LoopFling.tpSpeed)
      task.wait(0.02)
    end
  end

  function stick(p59)
    local character44 = v1.Character
    local v239 = character44 and character44:FindFirstChild("HumanoidRootPart")

    if not v239 then
      return
    end

    if (v239.Position - p59.Position).Magnitude < LoopFling.magnetRange then
      v239.CFrame = p59.CFrame + Vector3.new(0, 0, -1)
      v239.Velocity = Vector3.new(0, 0, 0)
    end
  end

  function execFling(p60)
    local v240 = p60:FindFirstChildOfClass("Humanoid")
    local v241 = p60:FindFirstChild("HumanoidRootPart")

    if not (v240 and v241) then
      return
    else
      SetNetworkOwner:FireServer(v241, v241.CFrame)

      local bodyVelocity9 = Instance.new("BodyVelocity")
      bodyVelocity9.MaxForce = Vector3.new(100000, 100000, 100000)
      bodyVelocity9.Velocity = Vector3.new(0, 1000, 0)
      bodyVelocity9.Parent = v241

      local v242 = true

      while LoopFling.on do
        bodyVelocity9.Velocity = v242 and Vector3.new(0, 1000, 0) or Vector3.new(0, -1000, 0)
        v242 = not v242
        task.wait(0.5)
      end

      bodyVelocity9:Destroy()
      return
    end
  end

  function startFlingFor(p61)
    if not p61 then
      return
    end

    while LoopFling.on do
      local character45 = p61.Character
      local v243 = character45 and character45:FindFirstChild("HumanoidRootPart")

      if v243 then
        tpTo(v243.CFrame + Vector3.new(0, 0, -2))
        task.wait(0.1)
        stick(v243)
        execFling(character45)
        task.wait(LoopFling.stay)
      end

      if cframe then
        tpTo(cframe)
        task.wait(LoopFling.back)
      end

      task.wait()
    end
  end

  function autoFlingLoop()
    while LoopFling.on do
      for index55, value125 in ipairs(LoopFling.targets) do
        local findFirstChild12 = players:FindFirstChild(value125)

        if findFirstChild12 and findFirstChild12.Character then
          task.spawn(function() startFlingFor(findFirstChild12) end)
        end
      end

      task.wait(0.1)
    end
  end

  function StartLoopBounce(p62)
    if not p62 or p62 == "" then
      return
    else
      local character46 = v1.Character
      local v244 = character46 and character46:FindFirstChild("HumanoidRootPart")

      if v244 then
        cframe = v244.CFrame
      end

      LoopFling.on = true
      LoopFling.targets = { p62 }

      task.spawn(autoFlingLoop)
      return
    end
  end

  function StopLoopBounce()
    LoopFling.on = false
    local v245 = cframe
    cframe = nil
    task.wait(0.1)
    local character47 = v1.Character
    local v246 = character47 and character47:FindFirstChild("HumanoidRootPart")

    if v246 and v245 then
      v246.CFrame = v245
    end
  end

  LoopTab:CreateLabel("TARGET", "user")

  LoopPlayerDropdown = LoopTab:CreateDropdown({
    Name = "Select Player",
    Options = {},
    CurrentOption = {},
    MultipleOptions = false,
    Flag = "LoopPlayerDropdown",
    Callback = function(value126) w = value126[1]:match("@([%w_]+)") end,
  })

  function LoopGetRole(p63)
    local v247 = string.lower(p63)

    if superAdmins[v247] then
      return "superadmin"
    end

    if admins[v247] then
      return "admin"
    end

    return "user"
  end

  function LoopOptionText(p64)
    return string.format("👤 @%s (%s)", p64.Name, p64.DisplayName or "")
  end

  function LoopRefreshDropdown()
    local v248 = {}

    for index56, value127 in ipairs(players:GetPlayers()) do
      if value127 ~= v1 then
        if LoopGetRole(value127.Name) ~= "superadmin" then
          table.insert(v248, LoopOptionText(value127))
        end
      end
    end

    LoopPlayerDropdown:Refresh(v248)
  end

  players.PlayerAdded:Connect(function()
    task.wait(0.5)
    LoopRefreshDropdown()
  end)

  players.PlayerRemoving:Connect(function()
    task.wait(0.5)
    LoopRefreshDropdown()
  end)

  LoopRefreshDropdown()

  LoopTab:CreateLabel("Harmless", "shield")

  LoopTab:CreateButton({
    Name = 'Bring   <font face="GothamBlack" color="rgb(255,0,0)">GRAB</font>   <font face="GothamBlack" color="rgb(210,8,255)">SUMMON</font>',
    Callback = function()
      local partOwner5

      if not w then
        return
      else
        local v249 = players.LocalPlayer
        local v250 = (v249.Character or v249.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
        local cframe7 = v250.CFrame
        local findFirstChild13 = players:FindFirstChild(w)

        if not findFirstChild13 then
          return
        end

        if findFirstChild13:FindFirstChild("InPlot") and findFirstChild13.InPlot.Value then
          return
        end

        if not (findFirstChild13.Character and findFirstChild13.Character:FindFirstChild("Head")) then
          return
        else
          local head8 = findFirstChild13.Character.Head
          local count2 = 0
          head8:FindFirstChild("PartOwner")

          repeat
            if not findFirstChild13.Character
              or not findFirstChild13.Character:FindFirstChild("Head") then
              break
            end

            v250.CFrame = head8.CFrame * CFrame.new(2, 0, 0)

            replicatedStorage:WaitForChild("GrabEvents"):WaitForChild("SetNetworkOwner"):FireServer(
              head8, v250.CFrame
            )

            task.wait(0.15)
            count2 = count2 + 1

            partOwner5 = head8:FindFirstChild("PartOwner")
                and head8.PartOwner.Value == v249.Name
              or count2 >= 10
          until partOwner5

          v250.CFrame = cframe7
          head8.CFrame = CFrame.new(cframe7.Position + cframe7.LookVector * 5)
          replicatedStorage:WaitForChild("GrabEvents"):WaitForChild("DestroyGrabLine"):FireServer(head8)
          return
        end
      end
    end,
  })

  function f22(p65)
    local v251 = players.LocalPlayer
    local v252, v253, cframe8, v254, vehicleSeat2, creatureDrop2

    if not v251 then
      return
    else
      local character48 = v251.Character

      if not character48 then
        return
      else
        v252 = character48:FindFirstChildOfClass("Humanoid")
        local v255 = not v252
        local v256 = character48:FindFirstChild("HumanoidRootPart")

        if v255 or not v256 then
          return
        else
          local findFirstChild14 = players:FindFirstChild(p65)

          if not findFirstChild14 or not findFirstChild14.Character then
            return
          end

          v253 = findFirstChild14.Character:FindFirstChild("HumanoidRootPart")

          if not v253 then
            return
          else
            cframe8 = v256.CFrame
            local v257 = tick()
            v254 = f19()

            if not v254 then
              f7()
              task.wait(0.6)
              v254 = f19()
            end

            if not v254 then
              f21()
              task.wait(1.7)
              v254 = f19()
            end

            if not v254 or not v254.PrimaryPart then
              return
            end

            vehicleSeat2 = v254:FindFirstChild("VehicleSeat")

            if not vehicleSeat2 then
              return
            end

            pcall(function() vehicleSeat2:Sit(v252) end)
            task.wait(0.4)

            if v252.SeatPart ~= vehicleSeat2 then
              return
            else
              local v258 = false
              local blobmanSeatAndOwnerScript = v254:FindFirstChild("BlobmanSeatAndOwnerScript")

              while tick() - v257 < 10 do
                local v259 = not findFirstChild14.Character
                local v260 = v259

                if not v259 then
                  v259 = not v253
                  v260 = v259
                end

                if v260 then
                  break
                else
                  pcall(function()
                    v254:SetPrimaryPartCFrame(v253.CFrame * CFrame.new(0, 0, -4))
                  end)

                  local leftDetector = v254:FindFirstChild("LeftDetector")
                    or v254:FindFirstChild("RightDetector")

                  local leftWeld = leftDetector
                    and (leftDetector:FindFirstChild("LeftWeld")
                      or leftDetector:FindFirstChild("RightWeld"))

                  if leftDetector and leftWeld and blobmanSeatAndOwnerScript then
                    local creatureGrab = blobmanSeatAndOwnerScript:FindFirstChild("CreatureGrab")

                    if creatureGrab then
                      pcall(function() creatureGrab:FireServer(leftDetector, v253, leftWeld) end)
                    end
                  end

                  if leftWeld and leftWeld.Attachment0 and leftWeld.Attachment0.Parent == v253 then
                    v258 = true
                    break
                  end

                  task.wait(0.1)
                end
              end

              if not v258 then
                rayfield:Notify({
                  Title = "Error",
                  Content = "Cannot Grab the person.",
                  Duration = 5,
                  Image = "x",
                })

                pcall(function() replicatedStorage.MenuToys.DestroyToy:FireServer(v254) end)
                v256.CFrame = cframe8
                return
              end

              pcall(function()
                v253.CFrame = CFrame.new(cframe8.Position + cframe8.LookVector * 5)
              end)

              v256.CFrame = cframe8
              task.wait(0.4)

              if blobmanSeatAndOwnerScript then
                creatureDrop2 = blobmanSeatAndOwnerScript:FindFirstChild("CreatureDrop")
                local leftDetector2 = v254:FindFirstChild("LeftDetector")

                local rightDetector = leftDetector2
                rightDetector = leftDetector2 or v254:FindFirstChild("RightDetector")

                local leftWeld2 = rightDetector
                  and (rightDetector:FindFirstChild("LeftWeld")
                    or rightDetector:FindFirstChild("RightWeld"))

                if creatureDrop2 and leftWeld2 then
                  pcall(function() creatureDrop2:FireServer(leftWeld2) end)
                end
              end

              task.delay(0.25, function()
                pcall(function() replicatedStorage.MenuToys.DestroyToy:FireServer(v254) end)
              end)

              return
            end
          end
        end
      end
    end
  end

  LoopTab:CreateButton({
    Name = 'Bring  <font face="GothamBlack" color="rgb(255,251,0)">BLOBMAN</font>   <font face="GothamBlack" color="rgb(12,8,234)">SUMMON</font>',
    Callback = function()
      if w then
        f22(w)
      end
    end,
  })

  LoopTab:CreateToggle({
    Name = 'Spectate   <font face="GothamBlack" color="rgb(0,145,255)">VIEW</font>',
    CurrentValue = false,
    Flag = "ViewPlayer",
    Callback = function(value128)
      local v261 = players.LocalPlayer
      local currentCamera4 = workspace.CurrentCamera

      if not w then
        return
      else
        local head9 = value128
        local findFirstChild15 = players:FindFirstChild(w)

        if value128 then
          head9 = findFirstChild15 and findFirstChild15.Character
            and findFirstChild15.Character:FindFirstChild("Head")
        end

        if head9 then
          currentCamera4.CameraSubject = findFirstChild15.Character:FindFirstChild("Humanoid")
          currentCamera4.CameraType = Enum.CameraType.Custom
        else
          currentCamera4.CameraSubject = v261.Character:FindFirstChild("Humanoid")
          currentCamera4.CameraType = Enum.CameraType.Custom
        end

        return
      end
    end,
  })

  v42 = false
  connect20 = nil

  LoopTab:CreateToggle({
    Name = 'Loop Teleport   <font face="GothamBlack" color="rgb(8,240,45)">SMOOTH</font>    <font face="GothamBlack" color="rgb(255,255,38)">TP</font>',
    CurrentValue = false,
    Flag = "LoopTeleport",
    Callback = function(value129)
      local v262 = players.LocalPlayer
      local v263 = (v262.Character or v262.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
      v42 = value129

      if connect20 then
        connect20:Disconnect()
        connect20 = nil
      end

      if v42 then
        connect20 = runService.RenderStepped:Connect(function(delta3)
          if not w then
            return
          else
            local findFirstChild16 = players:FindFirstChild(w)

            if findFirstChild16 and findFirstChild16.Character
              and findFirstChild16.Character:FindFirstChild("HumanoidRootPart") then
              v263.CFrame = v263.CFrame:Lerp(findFirstChild16.Character.HumanoidRootPart.CFrame
                * CFrame.new(2, 0, 0), 0.2)
            end

            return
          end
        end)
      end
    end,
  })

  Label = LoopTab:CreateLabel("Kill", "flame")

  function f8()
    local v264, v265, v266, v267, cframe9, parent6, vehicleSeat3, cframe10, leftDetector3,
      creatureGrab2, creatureRelease

    if not v43 then
      return
    elseif not w then
      return
    else
      local v268 = players.LocalPlayer

      if not v268 or not v268.Character then
        return
      else
        local character49 = v268.Character
        v264 = character49:FindFirstChildOfClass("Humanoid")
        v265 = character49:FindFirstChild("HumanoidRootPart")

        if not v264 or not v265 then
          return
        else
          local findFirstChild17 = players:FindFirstChild(w)

          if not findFirstChild17 or not findFirstChild17.Character then
            return
          end

          v266 = findFirstChild17.Character:FindFirstChildOfClass("Humanoid")
          v267 = findFirstChild17.Character:FindFirstChild("HumanoidRootPart")

          if not v266 or not v267 or v266.Health <= 0 then
            return
          end

          if v267.Position.Y > 100000 then
            return
          end

          cframe9 = v265.CFrame
          parent6 = v264.SeatPart and v264.SeatPart.Parent

          if not parent6 or parent6.Name ~= "CreatureBlobman" then
            parent6 = f19()

            if not parent6 then
              f21()
              task.wait(1.6)
              parent6 = f19()
            end

            if not parent6 or not parent6.PrimaryPart then
              return
            end

            vehicleSeat3 = parent6:FindFirstChild("VehicleSeat")

            if not vehicleSeat3 then
              return
            end

            pcall(function() vehicleSeat3:Sit(v264) end)
            task.wait(0.35)

            if v264.SeatPart ~= vehicleSeat3 then
              return
            end
          end

          if not parent6 or not parent6.PrimaryPart then
            return
          else
            cframe10 = parent6.PrimaryPart.CFrame
            task.wait(0.15)

            leftDetector3 = parent6:FindFirstChild("LeftDetector")
              or parent6:FindFirstChild("RightDetector")

            local leftWeld3 = leftDetector3
              and (leftDetector3:FindFirstChild("LeftWeld")
                or leftDetector3:FindFirstChild("RightWeld"))

            local blobmanSeatAndOwnerScript2 = parent6:FindFirstChild("BlobmanSeatAndOwnerScript")

            creatureGrab2 = blobmanSeatAndOwnerScript2
              and blobmanSeatAndOwnerScript2:FindFirstChild("CreatureGrab")

            creatureRelease = blobmanSeatAndOwnerScript2
              and blobmanSeatAndOwnerScript2:FindFirstChild("CreatureRelease")

            if leftDetector3 and leftWeld3 and creatureGrab2 and creatureRelease then
              for i11 = 1, 4 do
                if not v43 then
                  break
                end

                if not findFirstChild17.Character then
                  break
                end

                pcall(function() creatureGrab2:FireServer(leftDetector3, v267, leftWeld3) end)
                task.wait(0.05)

                pcall(function()
                  v266.RigType = Enum.HumanoidRigType.R15
                  v266.PlatformStand = true
                  v266:ChangeState(Enum.HumanoidStateType.Physics)
                  v266:TakeDamage(100)
                  v266.Health = 0
                end)

                task.wait(0.05)
                task.wait(0.05)

                pcall(function() creatureRelease:FireServer(leftWeld3, v267) end)
                task.wait(0.08)
              end
            end

            task.wait(0.1)

            pcall(function() v265.CFrame = cframe9 end)
            pcall(function() parent6:SetPrimaryPartCFrame(cframe10) end)

            return
          end
        end
      end
    end
  end

  v43 = false

  LoopTab:CreateToggle({
    Name = 'Loop BlobKill   <font face="GothamBlack" color="rgb(255,251,0)">BLOBMAN</font>  <font face="GothamBlack" color="rgb(255,100,0)">PURGE</font>   <font face="GothamBlack" color="rgb(255,0,0)">OP</font>   <font face="GothamBlack" color="rgb(39,245,218)">PREMIUM</font>',
    CurrentValue = false,
    Flag = "LoopBlobKillToggle",
    Callback = function(value130)
      v43 = value130

      if value130 then
        task.spawn(function()
          while v43 do
            f8()
            task.wait(0.25)
          end
        end)
      end
    end,
  })

  LoopTab:CreateToggle({
    Name = 'Loop Kill   <font face="GothamBlack" color="rgb(255,0,0)">GRAB</font>   <font face="GothamBlack" color="rgb(8,0,255)">KILL</font>',
    CurrentValue = false,
    Flag = "LoopKillToggle",
    Callback = function(value131)
      if value131 then
        StartLoopKill()
      else
        StopLoopKill()
      end
    end,
  })

  Label = LoopTab:CreateLabel("Kick", "ban")

  LoopTab:CreateToggle({
    Name = 'Loop Kick   <font face="GothamBlack" color="rgb(255,0,0)">GRAB</font>   <font face="GothamBlack" color="rgb(255,100,200)">KICK</font>',
    CurrentValue = false,
    Flag = "LoopKickToggle",
    Callback = function(value132)
      if value132 then
        StartLoopKick()
      else
        StopLoopKick()
      end
    end,
  })

  players.LocalPlayer.CharacterAdded:Connect(function(character50)
    initCharAttrs()
    local waitForChild7 = character50:WaitForChild("Humanoid", 5)

    if waitForChild7 then
      waitForChild7.Died:Connect(function() v41:detach() end)
    end
  end)

  if players.LocalPlayer.Character then
    initCharAttrs()
  end

  v44 = false
  KickGrabConnection = nil

  if kickbp then
    kickbp:Destroy()
    kickbp = nil
  end

  if kickbg then
    kickbg:Destroy()
    kickbg = nil
  end

  LoopTab:CreateToggle({
    Name = 'Spam Kick Grab   <font face="GothamBlack" color="rgb(255,0,0)">GRAB</font>    <font face="GothamBlack" color="rgb(120,0,0)">OP+</font>   <font face="GothamBlack" color="rgb(0,255,0)">KICK</font>\t<font face="GothamBlack" color="rgb(39,245,218)">PREMIUM</font>',
    CurrentValue = false,
    Flag = "KickGrabToggle",
    Callback = function(value133)
      v44 = value133

      if v44 then
        task.spawn(function()
          while v44 do
            if not w then
              task.wait(0.1)
            else
              local findFirstChild18 = players:FindFirstChild(w)

              if not findFirstChild18 then
                task.wait(0.1)
              elseif findFirstChild18:FindFirstChild("InPlot")
                and findFirstChild18.InPlot.Value then
                task.wait(0.1)
              else
                local character51 = findFirstChild18.Character
                local v269 = character51 and character51:FindFirstChild("HumanoidRootPart")
                local head10 = character51 and character51:FindFirstChild("Head")
                local v270 = character51 and character51:FindFirstChild("Humanoid")
                local character52 = v1.Character
                local v271 = character52 and character52:FindFirstChild("HumanoidRootPart")

                if not (v269 and head10 and v270 and v271) or v270.Health <= 0 then
                  task.wait(0.1)
                else
                  local v272 = GetPartOwner(head10)

                  if (v269.Position - v271.Position).Magnitude > 30 and v272 ~= v1.Name then
                    local cframe11 = v271.CFrame
                    v271.CFrame = v269.CFrame * CFrame.new(0, 5, 0)
                    task.wait(0.05)

                    for i12 = 1, 20 do
                      SetNetworkOwner:FireServer(v269, v269.CFrame)

                      if GetPartOwner(head10) == v1.Name then
                        break
                      end

                      task.wait()
                    end

                    v271.CFrame = cframe11
                  elseif v272 ~= v1.Name then
                    SetNetworkOwner:FireServer(v269, v269.CFrame)
                  end

                  for i13 = 1, 4 do
                    DestroyGrabLine:FireServer(v269)
                    task.wait()
                    SetNetworkOwner:FireServer(v269, v269.CFrame)
                  end

                  local v273 = not kickbp
                  local vector6 = Vector3.new(0, 20, 0)

                  if v273 or kickbp.Parent ~= v269 then
                    kickbp = Instance.new("BodyPosition")
                    kickbp.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    kickbp.D = 200
                    kickbp.Parent = v269
                  end

                  kickbp.Position = v271.Position + vector6

                  if not kickbg or kickbg.Parent ~= v269 then
                    kickbg = Instance.new("BodyGyro")
                    kickbg.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
                    kickbg.D = 100
                    kickbg.CFrame = CFrame.new(0, 0, 0)
                    kickbg.Parent = v269
                  end

                  runService.RenderStepped:Wait()
                end
              end
            end
          end
        end)
      else
        v44 = false

        task.spawn(function()
          for i14 = 1, 10 do
            if kickbp then
              kickbp:Destroy()
              kickbp = nil
            end

            if kickbg then
              kickbg:Destroy()
              kickbg = nil
            end

            task.wait(0.1)
          end
        end)

        if KickGrabConnection then
          KickGrabConnection:Disconnect()
          KickGrabConnection = nil
        end
      end
    end,
  })

  LoopTab:CreateButton({
    Name = 'Silent Kick    <font face="GothamBlack" color="rgb(255,251,0)">BLOBMAN</font>   <font face="GothamBlack" color="rgb(150,150,150)">GHOST</font>   <font face="GothamBlack" color="rgb(255,0,0)">OP</font>',
    Callback = function()
      local character53 = players.LocalPlayer.Character

      if not character53 then
        return
      end

      local v274 = character53:FindFirstChildOfClass("Humanoid")
      local v275 = character53:FindFirstChild("HumanoidRootPart")
      local v276, vehicleSeat4, leftDetector4, leftWeld4, blobmanSeatAndOwnerScript3

      if not (v274 and v275) then
        return
      elseif not w then
        return
      else
        local findFirstChild19 = players:FindFirstChild(w)

        if not findFirstChild19 or not findFirstChild19.Character then
          return
        end

        v276 = findFirstChild19.Character:FindFirstChild("HumanoidRootPart")

        if not v276 then
          return
        else
          local function f35(p66)
            return p66.ReceiveAge == 0
          end

          if f35(v276) then
            return
          else
            local v277 = f19() or f7()

            if not v277 then
              f21()
              v277 = f19()
            end

            if not v277 or not v277.PrimaryPart then
              return
            else
              local cframe12 = v275.CFrame
              local cframe13 = v277.PrimaryPart.CFrame
              vehicleSeat4 = v277:FindFirstChild("VehicleSeat")

              if vehicleSeat4 then
                task.wait(0.1)
                pcall(function() vehicleSeat4:Sit(v274) end)
              end

              v277:SetPrimaryPartCFrame(v276.CFrame * CFrame.new(0, 0, -4))
              task.wait(0.2)
              local cframe14 = v276.CFrame

              pcall(function()
                replicatedStorage.GrabEvents.SetNetworkOwner:FireServer(v276, v276.CFrame)
              end)

              task.wait(0.15)
              local count3 = 0

              while count3 < 40 do
                task.wait(0.05)
                count3 = count3 + 1

                if f35(v276) then
                  break
                end
              end

              if not f35(v276) then
                v275.CFrame = cframe12

                if v277.PrimaryPart then
                  v277:SetPrimaryPartCFrame(cframe13)
                end

                return
              end

              v276.CFrame = cframe14 + Vector3.new(0, 30, 0)
              task.wait(0.1)
              pcall(function() replicatedStorage.GrabEvents.DestroyGrabLine:FireServer(v276) end)
              leftDetector4 = v277:FindFirstChild("LeftDetector")

              if leftDetector4 then
                leftWeld4 = leftDetector4:FindFirstChild("LeftWeld")
                blobmanSeatAndOwnerScript3 = v277:FindFirstChild("BlobmanSeatAndOwnerScript")

                if blobmanSeatAndOwnerScript3 and leftWeld4 then
                  pcall(function()
                    blobmanSeatAndOwnerScript3.CreatureGrab:FireServer(
                      leftDetector4, v275, leftWeld4
                    )

                    task.wait(0.1)

                    blobmanSeatAndOwnerScript3.CreatureGrab:FireServer(
                      leftDetector4, v276, leftWeld4
                    )

                    task.wait(0.1)
                    blobmanSeatAndOwnerScript3.CreatureDrop:FireServer(leftWeld4)
                  end)
                end
              end

              task.wait(0.6)
              v275.CFrame = cframe12

              if v277.PrimaryPart then
                v277:SetPrimaryPartCFrame(cframe13)
              end

              return
            end
          end
        end
      end
    end,
  })

  Label = LoopTab:CreateLabel("Lock", "lock-keyhole")
  toggle2 = nil
  toggle3 = nil
  toggle4 = nil

  toggle2 = LoopTab:CreateToggle({
    Name = 'Basic Lock   <font face="GothamBlack" color="rgb(255,251,0)">BLOBMAN</font>   <font face="GothamBlack" color="rgb(0,255,77)">LOCK</font>',
    CurrentValue = false,
    Flag = "LockTarget1Toggle",
    Callback = function(value134)
      if value134 then
        if toggle3 then
          toggle3:Set(false)
        end

        if toggle4 then
          toggle4:Set(false)
        end

        LockTarget1Active = true

        task.spawn(function()
          local v278

          while LockTarget1Active do
            if not w then
              task.wait()
            else
              local findFirstChild20 = players:FindFirstChild(w)

              if not findFirstChild20 or not findFirstChild20.Character then
                task.wait()
              else
                local v279 = findFirstChild20.Character:FindFirstChild("HumanoidRootPart")

                if not v279 then
                  task.wait()
                else
                  local character54 = v1.Character
                  local v280 = character54 and character54:FindFirstChildOfClass("Humanoid")
                  local v281 = character54 and character54:FindFirstChild("HumanoidRootPart")

                  if not (v280 and v281) then
                    task.wait()
                  else
                    local parent7 = v280.SeatPart and v280.SeatPart.Parent

                    if not parent7 or parent7.Name ~= "CreatureBlobman" then
                      parent7 = f19() or f7()

                      if not parent7 then
                        f21()
                        task.wait(1.7)
                        parent7 = f19()
                      end

                      if not parent7 or not parent7.PrimaryPart then
                        task.wait()
                      else
                        local vehicleSeat5 = parent7:FindFirstChild("VehicleSeat")

                        if vehicleSeat5 then
                          task.wait(0.4)
                          pcall(function() vehicleSeat5:Sit(v280) end)
                          task.wait(0.4)
                        end

                        if not v280.SeatPart or v280.SeatPart.Parent ~= parent7 then
                          task.wait()
                        else
                          if not v280.SeatPart or v280.SeatPart.Parent.Name ~= "CreatureBlobman" then
                            task.wait()
                          elseif not parent7 or not parent7.PrimaryPart then
                            task.wait()
                          else
                            local creatureRelease2 = parent7.BlobmanSeatAndOwnerScript.CreatureRelease
                            local creatureDrop3 = parent7.BlobmanSeatAndOwnerScript.CreatureDrop
                            local creatureGrab3 = parent7.BlobmanSeatAndOwnerScript.CreatureGrab

                            if (v279.Position - v281.Position).Magnitude > 30 then
                              local cframe15 = v281.CFrame
                              v281.CFrame = v279.CFrame
                              local count4 = 0

                              repeat
                                creatureGrab3:FireServer(
                                  parent7.RightDetector, v279, parent7.RightDetector.RightWeld
                                )

                                creatureRelease2:FireServer(parent7.RightDetector.RightWeld)
                                task.wait()
                                count4 = count4 + 1
                                v278 = v279.ReceiveAge == 0 or count4 >= 15
                              until v278

                              v281.CFrame = cframe15
                              task.wait()

                              if v279.ReceiveAge == 0 then
                                v279.CFrame = parent7.RightDetector.CFrame
                              end
                            end

                            creatureGrab3:FireServer(
                              parent7.RightDetector, v279, parent7.RightDetector.RightWeld
                            )

                            creatureDrop3:FireServer(parent7.RightDetector.RightWeld)

                            creatureGrab3:FireServer(
                              parent7.RightDetector, v279, parent7.RightDetector.RightWeld
                            )

                            task.wait()
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end)
      else
        LockTarget1Active = false
      end
    end,
  })

  toggle3 = LoopTab:CreateToggle({
    Name = 'Mid Lock   <font face="GothamBlack" color="rgb(255,251,0)">BLOBMAN</font>   <font face="GothamBlack" color="rgb(255,137,0)">LOCK</font>',
    CurrentValue = false,
    Flag = "LockTarget2Toggle",
    Callback = function(value135)
      if value135 then
        if toggle2 then
          toggle2:Set(false)
        end

        if toggle4 then
          toggle4:Set(false)
        end

        LockTarget2Active = true

        task.spawn(function()
          local v282

          while LockTarget2Active do
            if not w then
              task.wait()
            else
              local findFirstChild21 = players:FindFirstChild(w)

              if not findFirstChild21 or not findFirstChild21.Character then
                task.wait()
              else
                local v283 = findFirstChild21.Character:FindFirstChild("HumanoidRootPart")

                if not v283 then
                  task.wait()
                else
                  local character55 = v1.Character
                  local v284 = character55 and character55:FindFirstChildOfClass("Humanoid")
                  local v285 = character55 and character55:FindFirstChild("HumanoidRootPart")

                  if not (v284 and v285) then
                    task.wait()
                  else
                    local parent8 = v284.SeatPart and v284.SeatPart.Parent

                    if not parent8 or parent8.Name ~= "CreatureBlobman" then
                      parent8 = f19() or f7()

                      if not parent8 then
                        f21()
                        task.wait(1.7)
                        parent8 = f19()
                      end

                      if not parent8 or not parent8.PrimaryPart then
                        task.wait()
                      else
                        local vehicleSeat6 = parent8:FindFirstChild("VehicleSeat")

                        if vehicleSeat6 then
                          task.wait(0.4)
                          pcall(function() vehicleSeat6:Sit(v284) end)
                          task.wait(0.4)
                        end

                        if not v284.SeatPart or v284.SeatPart.Parent ~= parent8 then
                          task.wait()
                        else
                          if not v284.SeatPart or v284.SeatPart.Parent.Name ~= "CreatureBlobman" then
                            task.wait()
                          elseif not parent8 or not parent8.PrimaryPart then
                            task.wait()
                          else
                            local creatureRelease3 = parent8.BlobmanSeatAndOwnerScript.CreatureRelease
                            local creatureDrop4 = parent8.BlobmanSeatAndOwnerScript.CreatureDrop
                            local creatureGrab4 = parent8.BlobmanSeatAndOwnerScript.CreatureGrab

                            if (v283.Position - v285.Position).Magnitude > 30 then
                              local cframe16 = v285.CFrame
                              v285.CFrame = v283.CFrame
                              local count5 = 0

                              repeat
                                creatureGrab4:FireServer(
                                  parent8.RightDetector, v283, parent8.RightDetector.RightWeld
                                )

                                creatureRelease3:FireServer(parent8.RightDetector.RightWeld)
                                task.wait()
                                count5 = count5 + 1
                                v282 = v283.ReceiveAge == 0 or count5 >= 15
                              until v282

                              v285.CFrame = cframe16
                              task.wait()

                              if v283.ReceiveAge == 0 then
                                v283.CFrame = parent8.RightDetector.CFrame
                              end
                            end

                            creatureGrab4:FireServer(
                              parent8.RightDetector, v283, parent8.RightDetector.RightWeld
                            )

                            creatureDrop4:FireServer(parent8.RightDetector.RightWeld)
                            task.wait()
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end)
      else
        LockTarget2Active = false
      end
    end,
  })

  toggle4 = LoopTab:CreateToggle({
    Name = 'Ultimate Lock   <font face="GothamBlack" color="rgb(255,251,0)">BLOBMAN</font>   <font face="GothamBlack" color="rgb(255,0,0)">LOCK</font>   <font face="GothamBlack" color="rgb(39,245,218)">PREMIUM</font>',
    CurrentValue = false,
    Flag = "SuperLockToggle",
    Callback = function(value136)
      if value136 then
        if toggle2 then
          toggle2:Set(false)
        end

        if toggle3 then
          toggle3:Set(false)
        end

        SuperLockActive = true

        task.spawn(function()
          local v286

          while SuperLockActive do
            if not w then
              task.wait()
            else
              local findFirstChild22 = players:FindFirstChild(w)

              if not findFirstChild22 or not findFirstChild22.Character then
                task.wait()
              else
                local v287 = findFirstChild22.Character:FindFirstChild("HumanoidRootPart")
                local v288 = findFirstChild22.Character:FindFirstChild("Humanoid")

                if not (v287 and v288) then
                  task.wait()
                else
                  local character56 = v1.Character
                  local v289 = character56 and character56:FindFirstChildOfClass("Humanoid")
                  local v290 = character56 and character56:FindFirstChild("HumanoidRootPart")

                  if not (v289 and v290) then
                    task.wait()
                  else
                    local parent9 = v289.SeatPart and v289.SeatPart.Parent

                    if not parent9 or parent9.Name ~= "CreatureBlobman" then
                      parent9 = f19() or f7()

                      if not parent9 then
                        f21()
                        task.wait(1.7)
                        parent9 = f19()
                      end

                      if not parent9 or not parent9.PrimaryPart then
                        task.wait()
                      else
                        local vehicleSeat7 = parent9:FindFirstChild("VehicleSeat")

                        if vehicleSeat7 then
                          task.wait(0.4)
                          pcall(function() vehicleSeat7:Sit(v289) end)
                          task.wait(0.4)
                        end

                        if not v289.SeatPart or v289.SeatPart.Parent ~= parent9 then
                          task.wait()
                        else
                          if not v289.SeatPart or v289.SeatPart.Parent.Name ~= "CreatureBlobman" then
                            task.wait()
                          elseif not parent9 or not parent9.PrimaryPart then
                            task.wait()
                          else
                            local creatureRelease4 = parent9.BlobmanSeatAndOwnerScript.CreatureRelease
                            local creatureGrab5 = parent9.BlobmanSeatAndOwnerScript.CreatureGrab

                            if (v287.Position - v290.Position).Magnitude > 30 then
                              local cframe17 = v290.CFrame
                              v290.CFrame = v287.CFrame
                              local count6 = 0

                              repeat
                                creatureGrab5:FireServer(
                                  parent9.RightDetector, v287, parent9.RightDetector.RightWeld
                                )

                                creatureRelease4:FireServer(parent9.RightDetector.RightWeld)
                                task.wait()
                                count6 = count6 + 1
                                v286 = v287.ReceiveAge == 0 or count6 >= 15
                              until v286

                              v290.CFrame = cframe17
                            end

                            creatureGrab5:FireServer(
                              parent9.RightDetector, v287, parent9.RightDetector.RightWeld
                            )

                            creatureRelease4:FireServer(parent9.RightDetector.RightWeld)
                            v288:ChangeState(Enum.HumanoidStateType.Seated)

                            if v287.ReceiveAge == 0 then
                              v287.CFrame = parent9.RightDetector.CFrame

                              for key13, value137 in pairs(findFirstChild22.Character:GetChildren()) do
                                if value137:IsA("BasePart")
                                  and value137.Name ~= "HumanoidRootPart" then
                                  value137.CanCollide = false
                                end
                              end
                            end

                            task.wait()
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end)
      else
        SuperLockActive = false
      end
    end,
  })

  Label = LoopTab:CreateLabel("Fun", "ferris-wheel")

  LoopTab:CreateToggle({
    Name = 'Loop Fling   <font face="GothamBlack" color="rgb(255,0,0)">GRAB</font>   <font face="GothamBlack" color="rgb(255,100,0)">FLING</font>   <font face="GothamBlack" color="rgb(0,255,255)">PREMIUM</font>',
    CurrentValue = false,
    Flag = "LoopFlingToggle",
    Callback = function(value138)
      if value138 then
        StartLoopBounce(w)
      else
        StopLoopBounce()
      end
    end,
  })

  LoopTab:CreateLabel("Utility", "settings")

  AutoFreezeBlobmanEnabled = false
  FreezedBlobs = {}
  trackedBlobs = {}

  function freezeBlobman(p67)
    if not p67 or not p67.PrimaryPart then
      return
    elseif FreezedBlobs[p67] then
      return
    else
      FreezedBlobs[p67] = true

      local autoFreezeVelocity = Instance.new("BodyVelocity")
      autoFreezeVelocity.Name = "AutoFreezeVelocity"
      autoFreezeVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
      autoFreezeVelocity.Velocity = Vector3.zero
      autoFreezeVelocity.P = 10000
      autoFreezeVelocity.Parent = p67.PrimaryPart

      local autoFreezeGyro = Instance.new("BodyGyro")
      autoFreezeGyro.Name = "AutoFreezeGyro"
      autoFreezeGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
      autoFreezeGyro.P = 10000
      autoFreezeGyro.D = 500
      autoFreezeGyro.CFrame = p67.PrimaryPart.CFrame
      autoFreezeGyro.Parent = p67.PrimaryPart

      return
    end
  end

  function unfreezeBlobman(p68)
    if not p68 or not p68.PrimaryPart then
      return
    end

    FreezedBlobs[p68] = nil

    pcall(function()
      p68.PrimaryPart:FindFirstChild("AutoFreezeVelocity"):Destroy()
      p68.PrimaryPart:FindFirstChild("AutoFreezeGyro"):Destroy()
    end)
  end

  function getPlayerSeatBlob()
    local character57 = v1.Character
    local v291 = character57 and character57:FindFirstChildOfClass("Humanoid")
    return v291 and v291.SeatPart and v291.SeatPart.Parent
  end

  task.spawn(function()
    while true do
      task.wait(0.5)

      if AutoFreezeBlobmanEnabled then
        local v292 = getPlayerSeatBlob()

        for key14, value139 in pairs(trackedBlobs) do
          if key14 and key14.Parent then
            if key14 == v292 then
              freezeBlobman(key14)
            else
              unfreezeBlobman(key14)
            end
          else
            trackedBlobs[key14] = nil
          end
        end
      end
    end
  end)

  workspace.DescendantAdded:Connect(function(descendant4)
    if descendant4:IsA("Model") and descendant4.Name == "CreatureBlobman" then
      trackedBlobs[descendant4] = true
    end
  end)

  task.spawn(function()
    for index57, value140 in ipairs(workspace:GetChildren()) do
      if value140:IsA("Folder") and value140.Name:match("SpawnedInToys") then
        for index58, value141 in ipairs(value140:GetDescendants()) do
          if value141:IsA("Model") and value141.Name == "CreatureBlobman" then
            trackedBlobs[value141] = true
          end
        end
      end
    end

    local plotItems4 = workspace:FindFirstChild("PlotItems")

    if plotItems4 then
      for index59, value142 in ipairs(plotItems4:GetChildren()) do
        for index60, value143 in ipairs(value142:GetDescendants()) do
          if value143:IsA("Model") and value143.Name == "CreatureBlobman" then
            trackedBlobs[value143] = true
          end
        end
      end
    end
  end)

  LoopTab:CreateToggle({
    Name = 'Auto Freeze Blobman   <font face="GothamBlack" color="rgb(255,251,0)">BLOBMAN</font>   <font face="GothamBlack" color="rgb(0,0,255)">FREEZE</font>',
    CurrentValue = false,
    Flag = "AutoFreezeBlobmanToggle",
    Callback = function(value144)
      AutoFreezeBlobmanEnabled = value144

      if not value144 then
        for key15, value145 in pairs(trackedBlobs) do
          unfreezeBlobman(key15)
        end

        FreezedBlobs = {}
      end
    end,
  })

  ServerTab:CreateLabel("Aggressive", "Skull")
  connect21 = nil
  connect22 = nil
  v45 = false

  function attachCameraToSpawn()
    local currentCamera5 = Workspace.CurrentCamera
    currentCamera5.CameraType = Enum.CameraType.Scriptable
    currentCamera5.CFrame = CFrame.new(0, 50, 50) * CFrame.Angles(math.rad(-45), 0, 0)
  end

  function detachCamera()
    local currentCamera6 = Workspace.CurrentCamera
    local character58 = v1.Character

    if character58 and character58:FindFirstChild("Humanoid") then
      currentCamera6.CameraType = Enum.CameraType.Custom
      currentCamera6.CameraSubject = character58.Humanoid
    else
      currentCamera6.CameraType = Enum.CameraType.Custom
    end
  end

  function performKillAll()
    attachCameraToSpawn()

    for index61, value146 in ipairs(players:GetPlayers()) do
      if value146 ~= v1 then
        if f14(value146) then
        else
          local character59 = value146.Character
          local v293 = character59 and character59:FindFirstChild("HumanoidRootPart")
          local v294 = character59 and character59:FindFirstChild("Humanoid")
          local head11 = character59 and character59:FindFirstChild("Head")

          if not (v293 and v294 and head11) then
          elseif isTooHigh(value146) then
          elseif value146:FindFirstChild("InPlot") and value146.InPlot.Value then
          elseif v294:GetState() == Enum.HumanoidStateType.Dead then
          else
            local character60 = v1.Character
            local v295 = character60 and character60:FindFirstChild("HumanoidRootPart")

            if not (character60 and v295) then
            else
              if not character60:GetAttribute("SavingOriginalPos") then
                saveOriginalPosAttr()
              end

              character60:SetAttribute("SavingOriginalPos", true)
              Workspace.FallenPartsDestroyHeight = (0 / 0)
              v295:PivotTo((CFrame.new(v293.Position + vector)))
              setNoCollideChar(character59)
              SetNetworkOwner:FireServer(v293, v293.CFrame)
              task.wait(0.05)
              DestroyGrabLine:FireServer(v293)
              task.wait(0.05)

              if head11:FindFirstChild("PartOwner") and head11.PartOwner.Value == v1.Name then
                task.wait(0.05)
                modifyTarget(v293, v294)
              end
            end
          end
        end
      end
    end

    task.wait(0.05)
  end

  function StartLoopKillAll()
    if connect21 then
      connect21:Disconnect()
    end

    connect21 = runService.Heartbeat:Connect(performKillAll)
  end

  function StopLoopKillAll()
    if connect21 then
      connect21:Disconnect()
      connect21 = nil
    end

    detachCamera()
  end

  function executeKickAll()
    attachCameraToSpawn()

    for index62, value147 in ipairs(players:GetPlayers()) do
      if value147 ~= v1 then
        if f14(value147) then
        else
          local character61 = value147.Character
          local v296 = character61 and character61:FindFirstChild("HumanoidRootPart")
          local head12 = character61 and character61:FindFirstChild("Head")
          local v297 = character61 and character61:FindFirstChild("Humanoid")

          if not (v296 and head12 and v297) or v297.Health <= 0 then
          elseif isTooHigh(value147) then
          elseif value147:FindFirstChild("InPlot") and value147.InPlot.Value then
          else
            local character62 = v1.Character

            if not (character62 and character62:FindFirstChild("HumanoidRootPart")) then
            else
              local getPivot2 = character62:GetPivot()
              character62:PivotTo(CFrame.new(v296.Position + Vector3.new(0, 0, -3)))
              DisableCollisions(character61)
              SetNetworkOwner:FireServer(v296, v296.CFrame)
              task.wait()
              character62:PivotTo(getPivot2)
              task.wait(0.05)
              DestroyGrabLine:FireServer(v296)
              task.wait(0.05)
              local partOwner6 = head12:FindFirstChild("PartOwner")

              if partOwner6 and partOwner6.Value == v1.Name then
                sendToSky(v296, v297)
              end
            end
          end
        end
      end
    end

    task.wait(0.05)
  end

  function StartLoopKickAll()
    if connect22 then
      connect22:Disconnect()
    end

    v45 = true

    connect22 = runService.Heartbeat:Connect(function()
      if v45 then
        executeKickAll()
      end
    end)
  end

  function StopLoopKickAll()
    v45 = false

    if connect22 then
      connect22:Disconnect()
      connect22 = nil
    end

    detachCamera()
  end

  ServerTab:CreateToggle({
    Name = 'LoopKill All\t <font face="GothamBlack" color="rgb(7,255,0)">GRAB</font>    <font face="GothamBlack" color="rgb(255,120,0)">GLOBAL</font>\t<font face="GothamBlack" color="rgb(255,0,0)">OP</font>\t <font face="GothamBlack" color="rgb(39,245,218)">PREMIUM</font>',
    CurrentValue = false,
    Flag = "LoopKillAllToggle",
    Callback = function(value148)
      if value148 then
        StartLoopKillAll()
      else
        StopLoopKillAll()
      end
    end,
  })

  ServerTab:CreateToggle({
    Name = 'LoopKick All \t<font face="GothamBlack" color="rgb(7,255,0)">GRAB</font>\t<font face="GothamBlack" color="rgb(0,0,255)">GLOBAL</font>\t <font face="GothamBlack" color="rgb(255,0,0)">OP</font> \t  <font face="GothamBlack" color="rgb(39,245,218)">PREMIUM</font>',
    CurrentValue = false,
    Flag = "LoopKickAllToggle",
    Callback = function(value149)
      if value149 then
        StartLoopKickAll()
      else
        StopLoopKickAll()
      end
    end,
  })

  ServerTab:CreateLabel("Annoying", "Zap")

  folder = workspace:WaitForChild(v1.Name .. "SpawnedInToys")
  ragdollToggleActive = false
  ragdollCurrentFood = nil
  ragdollLastSpawn = 0
  ragdollSpawnCooldown = 0.5
  ragdollActive = false
  ragdollBananaPeel = nil
  vomitToggleActive = false
  vomitReverseOrder = false
  campfireToggleActive = false
  campfireCurrentToy = nil
  campfireLastSpawn = 0
  campfireSpawnCooldown = 0.5
  campfireToyActive = false
  DeleteToyRE = replicatedStorage:WaitForChild("MenuToys"):WaitForChild("DestroyToy")

  ServerTab:CreateToggle({
    Name = 'LoopRagdoll All    <font face="GothamBlack" color="rgb(255,215,0)">BANANA</font>    <font face="GothamBlack" color="rgb(160,0,255)">GLOBAL</font>    <font face="GothamBlack" color="rgb(255,0,0)">OP</font>',
    CurrentValue = false,
    Callback = function(value150)
      ragdollToggleActive = value150

      if value150 then
        spawnRagdollFood()
      else
        if ragdollCurrentFood and ragdollCurrentFood.Parent then
          pcall(function() DeleteToyRE:FireServer(ragdollCurrentFood) end)
        end

        ragdollCurrentFood = nil
        ragdollActive = false
        ragdollBananaPeel = nil
      end
    end,
  })

  function getRoot()
    return v1.Character and v1.Character:FindFirstChild("HumanoidRootPart")
  end

  function getPlayerLegs(p69)
    if not p69 or not p69.Character then
      return {}
    else
      local v298 = {}

      for key16, value151 in pairs({ "Right Leg", "Left Leg" }) do
        local findFirstChild23 = p69.Character:FindFirstChild(value151)

        if findFirstChild23 and findFirstChild23:IsA("BasePart") then
          table.insert(v298, findFirstChild23)
        end
      end

      return v298
    end
  end

  function setRagdollOwner(p70)
    if p70 and p70.Parent then
      pcall(function()
        for key17, value152 in pairs(p70:GetDescendants()) do
          local v299 = value152

          if v299:IsA("BasePart") then
            SetNetworkOwner:FireServer(v299, v299.CFrame)
            pcall(function() DestroyGrabLine:FireServer(v299) end)
          end
        end
      end)
    end
  end

  function spawnRagdollFood()
    local v300

    if not ragdollToggleActive then
      return
    elseif tick() - ragdollLastSpawn < ragdollSpawnCooldown then
      return
    else
      ragdollLastSpawn = tick()
      local v301 = getRoot()

      if not v301 then
        return
      end

      v300 = { "FoodBanana", v301.CFrame * CFrame.new(0, 0, 10), Vector3.new(0, 97.69, 0) }

      pcall(function()
        replicatedStorage.MenuToys.SpawnToyRemoteFunction:InvokeServer(unpack(v300))
      end)

      return
    end
  end

  function f23(p71)
    if not ragdollToggleActive then
      return
    end

    local waitForChild8 = p71:WaitForChild("HoldPart", 3)
    local cframe18

    if not waitForChild8 then
      return
    else
      pcall(function() waitForChild8.HoldItemRemoteFunction:InvokeServer(p71, v1.Character) end)
      local rigidConstraint = waitForChild8:FindFirstChild("RigidConstraint")

      if rigidConstraint and rigidConstraint.Attachment1
        and rigidConstraint.Attachment1:IsDescendantOf(v1.Character) then
        if not waitForChild8:FindFirstChild("EatingSound")
          or not waitForChild8.EatingSound.IsPlaying then
          pcall(function() replicatedStorage.HoldEvents.Use:FireServer(p71) end)
          task.wait(2.5)
        end
      end

      local v302 = getRoot()
      local v303 = math.rad(45)
      local cframe19 = CFrame.Angles(0, v303, 0)
      local cframe20 = CFrame.new(0, -2, 3)
      v2461 = { p71, v302.CFrame * cframe19 * cframe20, Vector3.new(0, 97.69, 0) }
      task.wait(0.5)
      setRagdollOwner(p71)
      local getPlayers = players:GetPlayers()
      local v304 = getPlayerLegs(getPlayers[math.random(2, #getPlayers)])

      cframe18 = #v304 > 0
          and v304[math.random(1, #v304)].CFrame
            * CFrame.new(math.random(-2, 2), -3, math.random(-2, 2))
        or getRoot().CFrame * CFrame.Angles(0, math.rad(45), 0) * CFrame.new(0, -2, 3)

      pcall(function()
        for key18, value153 in pairs(p71:GetDescendants()) do
          if value153:IsA("BasePart") then
            value153.CFrame = cframe18
          end
        end
      end)

      for key19, value154 in pairs(p71:GetChildren()) do
        if value154.Name == "BananaPeel" and value154:FindFirstChildOfClass("TouchTransmitter") then
          value154.Size = Vector3.new(10, 10, 10)
          value154.Transparency = 1

          ragdollBananaPeel = value154
          ragdollActive = true

          task.spawn(function()
            while ragdollActive and ragdollBananaPeel and ragdollBananaPeel.Parent do
              local v305 = getRoot()

              if not v305 then
                waitTime(0.1)
              else
                local v306 = {}

                for key20, value155 in pairs(players:GetPlayers()) do
                  if f14(value155) then
                  elseif value155 ~= v1 and value155.Character then
                    local v307 = value155.Character:FindFirstChild("HumanoidRootPart")

                    if v307 then
                      local assemblyLinearVelocity = v307.AssemblyLinearVelocity

                      table.insert(v306, {
                        player = value155,
                        distance = (v305.Position - v307.Position).Magnitude,
                        legs = getPlayerLegs(value155),
                        velocity = assemblyLinearVelocity,
                        speed = assemblyLinearVelocity.Magnitude,
                      })
                    end
                  end
                end

                table.sort(v306, function(p72, p73) return p72.distance < p73.distance end)

                for index63, value156 in ipairs(v306) do
                  if not ragdollActive or not ragdollBananaPeel or not ragdollBananaPeel.Parent then
                    break
                  elseif #value156.legs > 0 then
                    local v308 = math.random(1, #value156.legs)
                    local v309 = math.random(-5, 5)
                    local v310 = math.random(-20, -10)
                    local v311 = math.random(-5, 5)
                    local v312 = tick() % 360 * 50

                    ragdollBananaPeel.CFrame = value156.legs[v308].CFrame * CFrame.new(v309 / 10, v310 / 10, v311 / 10) * CFrame.Angles(
                      math.rad(v312), math.rad(v312 * 0.5), 0
                    )

                    ragdollBananaPeel.AssemblyLinearVelocity = value156.velocity * 0.8 + Vector3.new(
                      math.random(-10, 10), math.random(10, 30), math.random(-10, 10)
                    )

                    waitTime(0.16)
                  end
                end
              end
            end
          end)

          break
        end
      end

      return
    end
  end

  folder.ChildAdded:Connect(function(child12)
    if child12.Name == "FoodBanana" and ragdollToggleActive then
      ragdollCurrentFood = child12
      task.spawn(function() f23(ragdollCurrentFood) end)
    elseif child12.Name == "Campfire" and campfireToggleActive then
      campfireCurrentToy = child12

      task.spawn(function()
        waitTime(0.5)
        setCampfireOwner(campfireCurrentToy)
        campfireToyActive = true
        campfireLoop()
      end)
    end
  end)

  runService.Heartbeat:Connect(function()
    if ragdollToggleActive and (not ragdollCurrentFood or not ragdollCurrentFood.Parent) then
      ragdollCurrentFood = nil
      spawnRagdollFood()
    elseif campfireToggleActive and (not campfireCurrentToy or not campfireCurrentToy.Parent) then
      campfireCurrentToy = nil
      spawnCampfireToy()
    end
  end)

  Camera = workspace.CurrentCamera

  ServerTab:CreateToggle({
    Name = 'LoopVomit All    <font face="GothamBlack" color="rgb(150, 75, 0)">POOP</font>    <font face="GothamBlack" color="rgb(90,120,200)">GLOBAL</font>',
    CurrentValue = false,
    Callback = function(value157)
      vomitToggleActive = value157

      if value157 then
        vomitReverseOrder = false
        spawnVomitPoop()
      end
    end,
  })

  function getRootVomit(p74)
    return p74 and p74:FindFirstChild("HumanoidRootPart")
  end

  function focusPlayerVomit(p75)
    if f14(p75) then
      return
    else
      local v313 = getRootVomit(v1.Character)

      if not v313 or not p75.Character then
        return
      else
        local v314 = getRootVomit(p75.Character)
        local character63 = p75.Character
        local v315 = not v314
        local v316 = character63:FindFirstChildOfClass("Humanoid")

        if v315 or v316 and v316.Health <= 0 then
          return
        else
          local v317 = tick()
          tick()

          repeat
            if not v314 or not v313 then
              break
            else
              local cframe21 = CFrame.new(0, 0.5, 3)
              v313.CFrame = CFrame.lookAt((v314.CFrame * cframe21).Position, v314.Position)
              Camera.CFrame = CFrame.lookAt(Camera.CFrame.Position, v314.Position)

              v313.AssemblyLinearVelocity = Vector3.zero
              v313.AssemblyAngularVelocity = Vector3.zero

              runService.Heartbeat:Wait()
            end
          until tick() - v317 >= 0.142

          return
        end
      end
    end
  end

  function tpToEveryoneVomit()
    local v318 = {}

    for index64, value158 in ipairs((players:GetPlayers())) do
      if value158 ~= v1 and value158.Character and not f14(value158) then
        table.insert(v318, value158)
      end
    end

    if vomitReverseOrder then
      for i15 = #v318, 1, -1 do
        focusPlayerVomit(v318[i15])
      end
    else
      for index65, value159 in ipairs(v318) do
        focusPlayerVomit(value159)
      end
    end

    vomitReverseOrder = not vomitReverseOrder
  end

  function spawnVomitPoop()
    local v319 = getRootVomit(v1.Character)

    if not v319 then
      return
    end

    local v320 = { "PoopPile", v319.CFrame * CFrame.new(0, 0, 10), Vector3.new(0, 97.69, 0) }

    pcall(function()
      replicatedStorage.MenuToys.SpawnToyRemoteFunction:InvokeServer(unpack(v320))
    end)
  end

  function vomitProcessFood(p76)
    if not vomitToggleActive then
      return
    end

    local waitForChild9 = p76:WaitForChild("HoldPart", 5)

    if not waitForChild9 then
      return
    end

    pcall(function() waitForChild9.HoldItemRemoteFunction:InvokeServer(p76, v1.Character) end)
    waitTime(0.3)
    pcall(function() replicatedStorage.HoldEvents.Use:FireServer(p76) end)
    waitTime(2.9)

    if vomitToggleActive then
      tpToEveryoneVomit()
      spawnVomitPoop()
    end
  end

  folder.ChildAdded:Connect(function(child13)
    if child13.Name == "PoopPile" and vomitToggleActive then
      task.spawn(function() vomitProcessFood(child13) end)
    end
  end)

  ServerTab:CreateToggle({
    Name = 'Fire All    <font face="GothamBlack" color="rgb(205,133,63)">CAMPFIRE</font>    <font face="GothamBlack" color="rgb(150,0,0)">GLOBAL</font>    <font face="GothamBlack" color="rgb(255,255,0)">BETA</font>',
    CurrentValue = false,
    Callback = function(value160)
      campfireToggleActive = value160

      if value160 then
        spawnCampfireToy()
      else
        campfireToyActive = false

        if campfireCurrentToy and campfireCurrentToy.Parent then
          pcall(function() DeleteToyRE:FireServer(campfireCurrentToy) end)
        end

        campfireCurrentToy = nil
      end
    end,
  })

  function setCampfireOwner(p77)
    if p77 and p77.Parent then
      pcall(function()
        for key21, value161 in pairs(p77:GetDescendants()) do
          if value161:IsA("BasePart") then
            SetNetworkOwner:FireServer(value161, value161.CFrame)
          end
        end
      end)
    end
  end

  function spawnCampfireToy()
    local v321

    if not campfireToggleActive then
      return
    elseif tick() - campfireLastSpawn < campfireSpawnCooldown then
      return
    else
      campfireLastSpawn = tick()
      local v322 = getRoot()

      if not v322 then
        return
      end

      v321 = { "Campfire", v322.CFrame * CFrame.new(0, 0, 10), Vector3.new(0, 97.69, 0) }

      pcall(function()
        replicatedStorage.MenuToys.SpawnToyRemoteFunction:InvokeServer(unpack(v321))
      end)

      return
    end
  end

  function checkCampfireFireEnabled(p78)
    local firePlayerPart2 = p78:FindFirstChild("FirePlayerPart")

    if not firePlayerPart2 then
      return false
    else
      local attachment = firePlayerPart2:FindFirstChild("Attachment")

      if not attachment then
        return false
      else
        local fireParticleEmitter = attachment:FindFirstChild("FireParticleEmitter")
        return fireParticleEmitter and fireParticleEmitter.Enabled
      end
    end
  end

  function playerHasFireInHRP(p79)
    if not p79 or not p79.Character then
      return false
    else
      local v323 = p79.Character:FindFirstChild("HumanoidRootPart")

      if not v323 then
        return false
      end

      for key22, value162 in pairs(v323:GetDescendants()) do
        if value162:IsA("FireParticleEmitter") then
          return true
        end
      end

      return false
    end
  end

  function campfireLoop()
    task.spawn(function()
      while campfireToyActive and campfireCurrentToy and campfireCurrentToy.Parent do
        if not checkCampfireFireEnabled(campfireCurrentToy) then
          pcall(function() DeleteToyRE:FireServer(campfireCurrentToy) end)
          campfireCurrentToy = nil
          campfireToyActive = false
          spawnCampfireToy()
          waitTime(0.5)
          break
        elseif not getRoot() then
          waitTime(0.1)
        else
          local v324 = {}
          local v325 = {}

          for key23, value163 in pairs(players:GetPlayers()) do
            if f14(value163) then
            elseif value163 ~= v1 and value163.Character then
              if value163.Character:FindFirstChild("HumanoidRootPart") then
                if playerHasFireInHRP(value163) then
                  table.insert(v324, value163)
                else
                  table.insert(v325, value163)
                end
              end
            end
          end

          for key24, value164 in pairs(v325) do
            if not campfireToyActive or not campfireCurrentToy or not campfireCurrentToy.Parent then
              break
            else
              local v326 = value164.Character:FindFirstChild("HumanoidRootPart")

              if v326 then
                pcall(function()
                  campfireCurrentToy:PivotTo(v326.CFrame * CFrame.new(0, -2, 0))
                end)

                waitTime(0.2)
              end
            end
          end

          for key25, value165 in pairs(v324) do
            if not campfireToyActive or not campfireCurrentToy or not campfireCurrentToy.Parent then
              break
            else
              local v327 = value165.Character:FindFirstChild("HumanoidRootPart")

              if v327 then
                pcall(function()
                  campfireCurrentToy:PivotTo(v327.CFrame * CFrame.new(0, -2, 0))
                end)

                waitTime(0.2)
              end
            end
          end
        end
      end
    end)
  end

  ServerTab:CreateLabel("Fun", "Cone")
  bringAllToggleActive = false
  freezecampart = nil
  playerCFrame = nil
  cameraCFrame = nil
  bringAllActive = false
  playerCFrame = nil
  cameraCFrame = nil
  freezecampart = nil

  function GetPlayerCFrame()
    local character64 = v1.Character

    if character64 then
      return character64.HumanoidRootPart.CFrame
    end
  end

  freezecampart = Instance.new("Part", Workspace)
  freezecampart.Name = "BloodyCamera"
  freezecampart.Anchored = true
  freezecampart.CanCollide = false
  freezecampart.Transparency = 1
  freezecampart.CanQuery = false
  freezecampart.Size = Vector3.new()

  function FreezeCam(cframe22)
    freezecampart.CFrame = cframe22
    Workspace.CurrentCamera.CameraType = Enum.CameraType.Follow
    Workspace.CurrentCamera.CameraSubject = freezecampart
  end

  function unFreezeCam()
    local character65 = v1.Character
    Workspace.CurrentCamera.CameraSubject = character65:FindFirstChildOfClass("Humanoid")
    Workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
  end

  function CheckPlayerBring(p80)
    if f14(p80) then
      return false
    end

    if p80 and p80.Character then
      local v328 = p80.Character:FindFirstChild("HumanoidRootPart")
      local v329 = p80.Character:FindFirstChildOfClass("Humanoid")

      if v328 and v329 then
        return v329:FindFirstChild("Ragdolled") ~= nil
      end

      return false
    end

    return false
  end

  function CheckNetworkOwnerShipOnPlayer(p81)
    if p81.Character and p81.Character:FindFirstChild("Head")
      and p81.Character.Head:FindFirstChild("PartOwner")
      and p81.Character.Head.PartOwner.Value == v1.Name then
      return true
    end

    return false
  end

  function SNOWshipOnce(p82)
    local distanceFromCharacter = v1:DistanceFromCharacter(p82.Position)

    if v1.Character and v1.Character:FindFirstChild("HumanoidRootPart") then
      if distanceFromCharacter <= 30 then
        SetNetworkOwner:FireServer(p82, CFrame.lookAt(
          v1.Character.HumanoidRootPart.Position, p82.Position
        ))
      end
    end
  end

  function CreateBringBody(p83, p84)
    if p83:FindFirstChild("BringBody") then
      p83.BringBody.Position = p84.Position
    else
      local bringBody = Instance.new("BodyPosition", p83)
      bringBody.Name = "BringBody"
      bringBody.Position = p84.Position
      bringBody.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
      bringBody.D = 5000
      bringBody.P = 1500000
    end
  end

  function TeleportPlayer(p85)
    local character66 = v1.Character

    if character66 and typeof(p85) == "CFrame" then
      local v330 = character66.HumanoidRootPart
      local v331 = character66:FindFirstChildOfClass("Humanoid")
      v330.CFrame = v330.CFrame.Rotation + p85.Position

      if v331.SeatPart == nil or tostring(v331.SeatPart.Parent) ~= "CreatureBlobman" then
        v331.Sit = false
      end
    end
  end

  ServerTab:CreateToggle({
    Name = 'Bring All   <font face="GothamBlack" color="rgb(255,50,0)">FAST</font>   <font face="GothamBlack" color="rgb(0,255,0)">GLOBAL</font>   <font face="GothamBlack" color="rgb(255,0,0)">OP</font>\t <font face="GothamBlack" color="rgb(39,245,218)">PREMIUM</font>',
    CurrentValue = false,
    Callback = function(value166)
      bringAllActive = value166

      if value166 then
        playerCFrame = GetPlayerCFrame()

        if not playerCFrame then
          return
        end

        cameraCFrame = CFrame.lookAt(
          playerCFrame.Position + Vector3.new(0, 5, 15), playerCFrame.Position
        )

        Workspace.CurrentCamera.CFrame = cameraCFrame

        task.spawn(function()
          while bringAllActive do
            FreezeCam(cameraCFrame)

            for key26, value167 in pairs(players:GetPlayers()) do
              if value167 ~= v1 and CheckPlayerBring(value167) then
                local v332 = value167.Character:FindFirstChild("HumanoidRootPart")
                local v333 = value167.Character:FindFirstChildOfClass("Humanoid")

                if v332 and v333 and v333:FindFirstChild("Ragdolled") then
                  for i16 = 0, 50 do
                    if not bringAllActive then
                      break
                    end

                    SNOWshipOnce(v332)

                    if CheckNetworkOwnerShipOnPlayer(value167) then
                      v332.CFrame = playerCFrame * CFrame.new(
                        math.random(-3, 3) / 10, 0, math.random(-3, 3) / 10
                      )

                      v332.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                      v332.AssemblyAngularVelocity = Vector3.new(0, 0, 0)

                      for key27, value168 in pairs(v332:GetChildren()) do
                        if value168:IsA("BodyVelocity") or value168:IsA("BodyPosition")
                          or value168:IsA("BodyAngularVelocity") then
                          value168:Destroy()
                        end
                      end

                      local antiFloatBody = Instance.new("BodyPosition", v332)
                      antiFloatBody.Name = "AntiFloatBody"

                      antiFloatBody.Position = playerCFrame.Position + Vector3.new(
                        math.random(-2, 2), -2, math.random(-2, 2)
                      )

                      antiFloatBody.MaxForce = Vector3.new(4000, 4000, 4000)
                      antiFloatBody.P = 10000
                      antiFloatBody.D = 2000

                      task.spawn(function()
                        task.wait(2)

                        if antiFloatBody and antiFloatBody.Parent then
                          antiFloatBody:Destroy()
                        end
                      end)

                      break
                    end

                    task.wait()

                    if v332.Position.Y <= -12 then
                      TeleportPlayer(CFrame.new(v332.Position + Vector3.new(0, 5, -15)))
                    else
                      TeleportPlayer(CFrame.new(v332.Position + Vector3.new(0, -10, -10)))
                    end
                  end
                end
              end
            end

            TeleportPlayer(CFrame.new(527, 123, -376))
            task.wait()
          end

          unFreezeCam()
          TeleportPlayer(playerCFrame)
        end)

        return
      end
    end,
  })

  AuraTab:CreateLabel("OP Auras", "crown")
  v46 = false
  connect23 = nil

  AuraTab:CreateToggle({
    Name = 'Void Aura\t  <font face="GothamBlack" color="rgb(128,0,255)">VOID</font>\t <font face="GothamBlack" color="rgb(255,0,0)">OP</font>\t<font face="GothamBlack" color="rgb(7,255,0)">GRAB</font>',
    CurrentValue = false,
    Flag = "DeathAura",
    Callback = function(value169)
      v46 = value169

      if value169 then
        if connect23 then
          connect23:Disconnect()
        end

        connect23 = runService.Heartbeat:Connect(function()
          if not v46 then
            return
          else
            local character67 = v1.Character
            local v334 = character67 and character67:FindFirstChild("HumanoidRootPart")

            if not v334 then
              return
            else
              local getPlayers2 = players:GetPlayers()

              for i17 = 1, #getPlayers2 do
                local v335 = v1
                local v336 = getPlayers2[i17]
                local v337 = v336 ~= v335
                local v338 = v337

                if v337 then
                  v335 = "Character"
                  v337 = v336[v335]
                  v338 = v337
                end

                if v338 then
                  if f14(v336) then
                  else
                    local character68 = v336.Character
                    local v339 = character68:FindFirstChild("HumanoidRootPart")
                    local v340 = character68:FindFirstChild("Humanoid")

                    if v339 and v340 and (v334.Position - v339.Position).Magnitude <= 30 then
                      pcall(function()
                        SetNetworkOwner:FireServer(v339, v339.CFrame)
                        DestroyGrabLine:FireServer(v339)

                        for key28, value170 in pairs(character68:GetChildren()) do
                          if value170:IsA("BasePart") then
                            value170.CFrame = CFrame.new(
                              -900000000000, 9000000000000, -900000000000
                            )
                          end
                        end

                        task.wait()

                        for key29, value171 in pairs(character68:GetChildren()) do
                          if value171:IsA("BasePart") then
                            value171.CFrame = CFrame.new(
                              -900000000000, 9000000000000, -900000000000
                            )
                          end
                        end

                        local bodyVelocity10 = Instance.new("BodyVelocity")
                        bodyVelocity10.Velocity = Vector3.new(0, 90000000000, 0)
                        bodyVelocity10.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                        bodyVelocity10.P = 100000075
                        bodyVelocity10.Parent = v339

                        v340.BreakJointsOnDeath = false
                        v340:ChangeState(Enum.HumanoidStateType.Dead)

                        task.delay(2, function()
                          if bodyVelocity10 and bodyVelocity10.Parent then
                            bodyVelocity10:Destroy()
                          end
                        end)
                      end)
                    end
                  end
                end
              end

              return
            end
          end
        end)
      elseif connect23 then
        connect23:Disconnect()
        connect23 = nil
      end
    end,
  })

  v47 = false
  connect24 = nil

  AuraTab:CreateToggle({
    Name = 'Kick Aura\t  <font face="GothamBlack" color="rgb(255,200,0)">KICK</font>\t<font face="GothamBlack" color="rgb(255,0,0)">OP</font>\t  <font face="GothamBlack" color="rgb(7,255,0)">GRAB</font>   <font face="GothamBlack" color="rgb(39,245,218)">PREMIUM</font>',
    CurrentValue = false,
    Flag = "KickAura",
    Callback = function(value172)
      v47 = value172

      if value172 then
        if connect24 then
          connect24:Disconnect()
        end

        connect24 = runService.Heartbeat:Connect(function()
          if not v47 then
            return
          else
            local character69 = v1.Character
            local v341 = character69 and character69:FindFirstChild("HumanoidRootPart")

            if not v341 then
              return
            else
              local getPlayers3 = players:GetPlayers()

              for i18 = 1, #getPlayers3 do
                local v342 = v1
                local v343 = getPlayers3[i18]
                local v344 = v343 ~= v342
                local v345 = v344

                if v344 then
                  v342 = "Character"
                  v345 = v343[v342]
                end

                if v345 then
                  if f14(v343) then
                  else
                    local v346 = v343.Character:FindFirstChild("HumanoidRootPart")

                    if v346 and (v341.Position - v346.Position).Magnitude <= 30 then
                      pcall(function()
                        SetNetworkOwner:FireServer(v346, v346.CFrame)
                        DestroyGrabLine:FireServer(v346)
                        v346.CFrame = CFrame.new(0, 90000000000000, 0)
                        task.wait()
                        v346.CFrame = CFrame.new(0, 900000000000, 0)

                        local bodyVelocity11 = Instance.new("BodyVelocity")
                        bodyVelocity11.Velocity = Vector3.new(0, 9000000000000, 0)
                        bodyVelocity11.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                        bodyVelocity11.P = 100000000075
                        bodyVelocity11.Parent = v346

                        task.delay(2, function()
                          if bodyVelocity11 and bodyVelocity11.Parent then
                            bodyVelocity11:Destroy()
                          end
                        end)
                      end)
                    end
                  end
                end
              end

              return
            end
          end
        end)
      elseif connect24 then
        connect24:Disconnect()
        connect24 = nil
      end
    end,
  })

  v48 = false
  connect25 = nil

  AuraTab:CreateToggle({
    Name = 'Grab Aura   <font face="GothamBlack" color="rgb(0,255,128)">SPAM</font>    <font face="GothamBlack" color="rgb(7,255,0)">GRAB</font>',
    CurrentValue = false,
    Flag = "GrabAura",
    Callback = function(value173)
      v48 = value173

      if value173 then
        if connect25 then
          connect25:Disconnect()
        end

        connect25 = runService.Heartbeat:Connect(function(delta4)
          if not v48 then
            return
          else
            local character70 = v1.Character

            if not character70 or not character70:FindFirstChild("HumanoidRootPart") then
              return
            else
              local v347 = character70.HumanoidRootPart
              local getPlayers4 = players:GetPlayers()

              for i19 = 1, #getPlayers4 do
                local v348 = getPlayers4[i19]
                local character71 = v348 ~= v1
                local v349 = character71

                if character71 then
                  character71 = v348.Character
                  v349 = character71
                end

                if v349 then
                  if f14(v348) then
                  else
                    local v350 = v348.Character:FindFirstChild("HumanoidRootPart")

                    if v350 and (v347.Position - v350.Position).Magnitude <= 30 then
                      pcall(function()
                        replicatedStorage.GrabEvents.SetNetworkOwner:FireServer(
                          v350, v350.CFrame
                        )
                      end)
                    end
                  end
                end
              end

              return
            end
          end
        end)
      elseif connect25 then
        connect25:Disconnect()
        connect25 = nil
      end
    end,
  })

  v49 = 100
  v50 = {}
  connect26 = nil

  AuraTab:CreateToggle({
    Name = 'Throw Aura\t   <font face="GothamBlack" color="rgb(255,128,0)">THROW</font>\t  <font face="GothamBlack" color="rgb(7,255,0)">GRAB</font>',
    CurrentValue = false,
    Flag = "ThrowAura",
    Callback = function(value174)
      if value174 then
        if connect26 then
          connect26:Disconnect()
        end

        connect26 = runService.Heartbeat:Connect(function()
          local v351 = v1.Character and v1.Character:FindFirstChild("HumanoidRootPart")

          if not v351 then
            return
          else
            local position8 = v351.Position

            for key30, value175 in pairs(players:GetPlayers()) do
              if value175 ~= v1 and value175.Character then
                if f14(value175) then
                else
                  local v352 = value175.Character:FindFirstChild("HumanoidRootPart")

                  if v352 and (v352.Position - position8).Magnitude <= 30 then
                    pcall(function() SetNetworkOwner:FireServer(v352, v352.CFrame) end)
                    local throwBV = v352:FindFirstChild("ThrowBV")

                    if not throwBV then
                      throwBV = Instance.new("BodyVelocity")
                      throwBV.Name = "ThrowBV"
                      throwBV.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                      throwBV.Parent = v352

                      v50[v352] = throwBV
                    end

                    throwBV.Velocity = Vector3.new(
                      math.random(-v49, v49), math.random(5, v49), math.random(-v49, v49)
                    )
                  elseif v50[v352] then
                    v50[v352]:Destroy()
                    v50[v352] = nil
                  end
                end
              end
            end

            return
          end
        end)
      else
        if connect26 then
          connect26:Disconnect()
          connect26 = nil
        end

        for key31, value176 in pairs(v50) do
          if value176 and value176.Parent then
            value176:Destroy()
          end
        end

        v50 = {}
      end
    end,
  })

  AuraTab:CreateSlider({
    Name = "Throw Speed",
    Range = { 10, 1000 },
    Increment = 1,
    Suffix = "Velocity",
    CurrentValue = v49,
    Flag = "ThrowSpeed",
    Callback = function(value177) v49 = value177 end,
  })

  AuraTab:CreateLabel("Objects & Players Auras", "user-circle")

  Bodies = {}
  GrabbedObjects = {}
  Active = false
  TornadoOffset = 10
  TornadoHeight = 5
  TornadoSpeed = 0.1

  function f9()
    for key32, value178 in pairs(Bodies) do
      if value178 and value178.Parent then
        value178:Destroy()
      end
    end

    Bodies = {}
    GrabbedObjects = {}
  end

  TornadoImpact = "Players"

  function ApplyMotion(p86, p87, p88, p89, p90)
    if not p86 or p86.Anchored then
      return
    else
      local tornadoAuraVelocity = p86:FindFirstChild("TornadoAuraVelocity")

      if not tornadoAuraVelocity then
        tornadoAuraVelocity = Instance.new("BodyPosition")
        tornadoAuraVelocity.Name = "TornadoAuraVelocity"
        tornadoAuraVelocity.MaxForce = Vector3.new(1000000, 1000000, 1000000)
        tornadoAuraVelocity.P = 50000
        tornadoAuraVelocity.D = 1250
        tornadoAuraVelocity.Parent = p86

        table.insert(Bodies, tornadoAuraVelocity)
      end

      local v353 = math.cos(p88)
      local v354 = math.sin(p88)
      local vector7 = Vector3.new(v353 * p89, p90, v354 * p89)
      tornadoAuraVelocity.Position = p87.Position + vector7
      return
    end
  end

  function GetPlayerRoot(p91)
    local character72 = p91.Character

    if character72 then
      return character72:FindFirstChild("HumanoidRootPart")
    end
  end

  function isPlayerPart(p92)
    for index66, value179 in ipairs(players:GetPlayers()) do
      if value179.Character and p92:IsDescendantOf(value179.Character) then
        return true
      end
    end

    return false
  end

  runService.Heartbeat:Connect(function()
    if not Active then
      f9()
      return
    else
      local v355 = GetPlayerRoot(v1)

      if not v355 then
        return
      else
        local cframe23 = v355.CFrame
        local v356 = tick() * TornadoSpeed * 2 * math.pi % (2 * math.pi)

        for key33, value180 in pairs(GrabbedObjects) do
          if value180 and value180.Parent then
            ApplyMotion(value180, cframe23, v356, TornadoOffset, TornadoHeight)
          end
        end

        return
      end
    end
  end)

  task.spawn(function()
    while task.wait(0.3) do
      if not Active then
      else
        local v357 = GetPlayerRoot(v1)

        if not v357 then
        else
          if TornadoImpact == "Objects" or TornadoImpact == "Player & Object" then
            for key34, value181 in pairs((workspace:GetPartBoundsInRadius(v357.Position, 30))) do
              local v358 = value181

              if v358:IsA("BasePart") and not v358.Anchored and not isPlayerPart(v358) then
                pcall(function() SetNetworkOwner:FireServer(v358, v358.CFrame) end)

                if not table.find(GrabbedObjects, v358) then
                  table.insert(GrabbedObjects, v358)
                end
              end
            end
          end

          if TornadoImpact == "Players" or TornadoImpact == "Player & Object" then
            for key35, value182 in pairs(players:GetPlayers()) do
              if value182 ~= v1 and value182.Character then
                if f14(value182) then
                else
                  local torso3 = value182.Character:FindFirstChild("Torso")
                    or value182.Character:FindFirstChild("HumanoidRootPart")

                  if torso3 and (v357.Position - torso3.Position).Magnitude <= 30 then
                    pcall(function() SetNetworkOwner:FireServer(torso3, torso3.CFrame) end)

                    if not table.find(GrabbedObjects, torso3) then
                      table.insert(GrabbedObjects, torso3)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end)

  AuraTab:CreateToggle({
    Name = 'Telekinesis Aura    <font face="GothamBlack" color="rgb(0,200,255)">ORBIT</font>   <font face="GothamBlack" color="rgb(7,255,0)">GRAB</font>\t <font face="GothamBlack" color="rgb(255, 255, 255)">(PLAYER & OBJECT)</font>',
    CurrentValue = false,
    Flag = "TelekinesisAura",
    Callback = function(value183)
      Active = value183

      if not value183 then
        f9()
      end
    end,
  })

  AuraTab:CreateDropdown({
    Name = 'Impact\t  <font face="GothamBlack" color="rgb(255,40,0)">SELECT</font>',
    Options = { "Players", "Objects", "Player & Object" },
    CurrentOption = { "Players" },
    MultipleOptions = false,
    Flag = "TornadoImpact",
    Callback = function(value184)
      f9()
      TornadoImpact = value184[1]
    end,
  })

  AuraTab:CreateSlider({
    Name = "Distance",
    Range = { 1, 500 },
    Increment = 1,
    Suffix = "Offset",
    CurrentValue = TornadoOffset,
    Flag = "AuraDistance",
    Callback = function(value185) TornadoOffset = value185 end,
  })

  AuraTab:CreateSlider({
    Name = "Height",
    Range = { 1, 500 },
    Increment = 1,
    Suffix = "Height",
    CurrentValue = TornadoHeight,
    Flag = "AuraHeight",
    Callback = function(value186) TornadoHeight = value186 end,
  })

  AuraTab:CreateSlider({
    Name = "Rotation Speed",
    Range = { 0.01, 1 },
    Increment = 0.001,
    Suffix = "Speed",
    CurrentValue = TornadoSpeed,
    Flag = "AuraSpeed",
    Callback = function(value187) TornadoSpeed = value187 end,
  })

  AuraTab:CreateSection("Air Aura")

  v51 = 50
  v52 = {}
  v53 = nil
  v54 = "Players"
  CONFIG = { AURA_RADIUS = 30, SCAN_DELAY = 0.1, MAX_DISTANCE = 30 }

  function isPlayerPart(p93)
    for index67, value188 in ipairs(players:GetPlayers()) do
      if value188.Character and p93:IsDescendantOf(value188.Character) then
        return true
      end
    end

    return false
  end

  function cleanUpObjects()
    for key36, value189 in pairs(v52) do
      if value189 and value189.Parent then
        value189:Destroy()
      end
    end

    v52 = {}
  end

  AuraTab:CreateToggle({
    Name = 'Air Suspend Aura   <font face="GothamBlack" color="rgb(120,0,255)">FLY</font>    <font face="GothamBlack" color="rgb(7,255,0)">GRAB</font>\t <font face="GothamBlack" color="rgb(255, 255, 255)">(PLAYER & OBJECT)</font>',
    CurrentValue = false,
    Flag = "AirSuspendAura",
    Callback = function(value190)
      if value190 then
        task.spawn(function()
          while task.wait(0.3) do
            if not v53 then
              break
            else
              local v359 = v1.Character and v1.Character:FindFirstChild("HumanoidRootPart")

              if not v359 then
              else
                for key37, value191 in pairs((workspace:GetPartBoundsInRadius(
                  v359.Position, CONFIG.AURA_RADIUS
                ))) do
                  local v360 = value191

                  if v360:IsA("BasePart") and not v360.Anchored and not isPlayerPart(v360) then
                    if v54 == "Objects" or v54 == "Player & Object" then
                      pcall(function() SetNetworkOwner:FireServer(v360, v360.CFrame) end)
                    end
                  end
                end

                if v54 == "Players" or v54 == "Player & Object" then
                  for key38, value192 in pairs(players:GetPlayers()) do
                    if value192 ~= v1 and value192.Character then
                      if f14(value192) then
                      else
                        local torso4 = value192.Character:FindFirstChild("Torso")
                          or value192.Character:FindFirstChild("HumanoidRootPart")

                        if torso4
                          and (v359.Position - torso4.Position).Magnitude <= CONFIG.MAX_DISTANCE then
                          pcall(function() SetNetworkOwner:FireServer(torso4, torso4.CFrame) end)
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end)

        v53 = coroutine.create(function()
          while task.wait(CONFIG.SCAN_DELAY) do
            local v361 = v1.Character and v1.Character:FindFirstChild("HumanoidRootPart")

            if not v361 then
              return
            end

            for key39, value193 in pairs((workspace:GetPartBoundsInRadius(
              v361.Position, CONFIG.AURA_RADIUS
            ))) do
              if value193:IsA("BasePart") and not value193.Anchored
                and not isPlayerPart(value193) then
                if v54 == "Objects" or v54 == "Player & Object" then
                  if not v52[value193] then
                    local airSuspendBV = Instance.new("BodyVelocity")
                    airSuspendBV.Name = "AirSuspendBV"
                    airSuspendBV.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    airSuspendBV.Velocity = Vector3.new(0, v51, 0)
                    airSuspendBV.Parent = value193

                    v52[value193] = airSuspendBV
                  end
                end
              end
            end

            if v54 == "Players" or v54 == "Player & Object" then
              for key40, value194 in pairs(players:GetPlayers()) do
                if value194 ~= v1 and value194.Character then
                  if f14(value194) then
                  else
                    local torso5 = value194.Character:FindFirstChild("Torso")
                      or value194.Character:FindFirstChild("HumanoidRootPart")

                    if torso5
                      and (v361.Position - torso5.Position).Magnitude <= CONFIG.MAX_DISTANCE then
                      if not v52[value194] then
                        local airSuspendBV2 = Instance.new("BodyVelocity")
                        airSuspendBV2.Name = "AirSuspendBV"
                        airSuspendBV2.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                        airSuspendBV2.Velocity = Vector3.new(0, v51, 0)
                        airSuspendBV2.Parent = torso5

                        v52[value194] = airSuspendBV2
                      end
                    end
                  end
                end
              end
            end
          end
        end)

        coroutine.resume(v53)
      else
        if v53 then
          coroutine.close(v53)
          v53 = nil
        end

        cleanUpObjects()
      end
    end,
  })

  dropdown = AuraTab:CreateDropdown({
    Name = 'Impact\t  <font face="GothamBlack" color="rgb(255,40,0)">SELECT</font>',
    Options = { "Players", "Objects", "Player & Object" },
    CurrentOption = { "Players" },
    MultipleOptions = false,
    Flag = "AirSuspendImpact",
    Callback = function(value195)
      cleanUpObjects()
      v54 = value195[1]
    end,
  })

  AuraTab:CreateInput({
    Name = "Speed",
    CurrentValue = tostring(v51),
    PlaceholderText = "Enter speed",
    RemoveTextAfterFocusLost = false,
    Flag = "AirSuspendSpeed",
    Callback = function(value196)
      local v362 = tonumber(value196)

      if v362 then
        v51 = v362
      end
    end,
  })

  AuraTab:CreateSection("Teleport")

  v55 = "Cursed Cloud"
  connect27 = nil

  AuraTab:CreateToggle({
    Name = 'Teleport Aura\t  <font face="GothamBlack" color="rgb(0,255,128)">TP</font>    <font face="GothamBlack" color="rgb(7,255,0)">GRAB</font>\t<font face="GothamBlack" color="rgb(255, 255, 255)">(PLAYER)</font>',
    CurrentValue = false,
    Flag = "TeleportAura",
    Callback = function(value197)
      if value197 then
        if connect27 then
          connect27:Disconnect()
        end

        connect27 = runService.Heartbeat:Connect(function()
          local v363 = v1.Character and v1.Character:FindFirstChild("HumanoidRootPart")

          if not v363 then
            return
          end

          for key41, value198 in pairs(players:GetPlayers()) do
            if value198 ~= v1 and value198.Character then
              if f14(value198) then
              else
                local v364 = value198.Character:FindFirstChild("HumanoidRootPart")

                if v364 and (v363.Position - v364.Position).Magnitude <= 30 then
                  pcall(function() SetNetworkOwner:FireServer(v364, v364.CFrame) end)
                  local vector8 = Vector3.new(0, 0, 0)

                  if v55 == "Cursed Cloud" then
                    vector8 = Vector3.new(900000, 100, 3000)
                  elseif v55 == "Spawn" then
                    vector8 = Vector3.new(0, 0, 0)
                  elseif v55 == "Void" then
                    vector8 = Vector3.new(0, 1000000000000, 0)
                  elseif v55 == "Cozy Place" then
                    vector8 = Vector3.new(592, 153, -101)
                  elseif v55 == "Big Cave" then
                    vector8 = Vector3.new(-97.15, -7.35, 549.19)
                  elseif v55 == "Small Cave" then
                    vector8 = Vector3.new(-35.08, -7.35, -275.37)
                  elseif v55 == "Small Cave 2" then
                    vector8 = Vector3.new(137.87, -7.35, -389.94)
                  elseif v55 == "Very Very Small Cave" then
                    vector8 = Vector3.new(191.09, -7.35, -564.27)
                  elseif v55 == "Island Cave" then
                    vector8 = Vector3.new(90.77, 282.19, 333.66)
                  elseif v55 == "Poison" then
                    vector8 = Vector3.new(71.25, -68.07, 269.03)
                  end

                  v364.CFrame = CFrame.new(vector8)
                end
              end
            end
          end
        end)
      elseif connect27 then
        connect27:Disconnect()
        connect27 = nil
      end
    end,
  })

  AuraTab:CreateDropdown({
    Name = "Teleport Location",
    Options = {
      "Cursed Cloud", "Spawn", "Void", "Cozy Place", "Big Cave", "Small Cave", "Small Cave 2",
      "Very Very Small Cave", "Island Cave", "Poison",
    },
    CurrentOption = { "Cursed Cloud" },
    Flag = "TeleportAuraLocation",
    Callback = function(value199) v55 = value199[1] end,
  })

  VisualTab:CreateLabel("Shaders", "cloudy")
  Lighting = lighting
  InnerUFO = Workspace.Map.AlwaysHereTweenedObjects.InnerUFO.Object.ObjectModel
  OuterUFO = Workspace.Map.AlwaysHereTweenedObjects.OuterUFO.Object.ObjectModel

  DefaultLighting = {
    ClockTime = Lighting.ClockTime,
    Brightness = Lighting.Brightness,
    OutdoorAmbient = Lighting.OutdoorAmbient,
    EnvironmentDiffuseScale = Lighting.EnvironmentDiffuseScale,
    EnvironmentSpecularScale = Lighting.EnvironmentSpecularScale,
    ExposureCompensation = Lighting.ExposureCompensation,
    FogColor = Lighting.FogColor,
    FogEnd = Lighting.FogEnd,
    FogStart = Lighting.FogStart,
    MoonAngularSize = Lighting.Sky.MoonAngularSize,
    StarCount = Lighting.Sky.StarCount,
  }

  States = { BeamLights = false, DayNight = false, Textures = false }

  VisualTab:CreateToggle({
    Name = 'Beam Lights\t  <font face="GothamBlack" color="rgb(0,255,0)">NEON</font>',
    CurrentValue = false,
    Flag = "BeamLights",
    Callback = function(value200)
      States.BeamLights = value200

      if value200 then
        for key42, value201 in pairs({ Brightness = 10, LightInfluence = 0 }) do
          OuterUFO.Laser.Beam[key42] = value201
          InnerUFO.Laser.Beam[key42] = value201
        end

        OuterUFO.Laser.Beam.Color = ColorSequence.new({
          ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 0)),
          ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 75, 0)),
          ColorSequenceKeypoint.new(0.9, Color3.fromRGB(84, 230, 96)),
          ColorSequenceKeypoint.new(1, Color3.fromRGB(193, 230, 187)),
        })

        local beam = OuterUFO.Laser.Beam
        OuterUFO.Laser.Beam.Width0 = 2
        beam.Width1 = 10
        InnerUFO.Laser.Beam.Color = OuterUFO.Laser.Beam.Color
        local beam2 = InnerUFO.Laser.Beam
        InnerUFO.Laser.Beam.Width0 = 2
        beam2.Width1 = 13

        for v365, v366 in Workspace:GetDescendants() do
          if v366.Name == "GrabParts" then
            local grabBeam = v366:WaitForChild("BeamPart"):WaitForChild("GrabBeam")
            grabBeam.Brightness = 10
            grabBeam.LightEmission = 1
            grabBeam.LightInfluence = 0
          end
        end

        for v367, v368 in Workspace:GetDescendants() do
          if v368.Name == "Campfire" then
            local fireLight = v368:WaitForChild("FirePlayerPart"):WaitForChild("FireLight")
            fireLight.Brightness = 5
            fireLight.Shadows = false
          elseif v368.Name == "FireworkSparkler" then
            local pointLight = v368:WaitForChild("Stick"):WaitForChild("Attachment"):WaitForChild("PointLight")
            pointLight.Brightness = 5
            pointLight.Range = 15
            pointLight.Shadows = true
          end
        end
      else
        OuterUFO.Laser.Beam.Brightness = 1
        InnerUFO.Laser.Beam.Brightness = 1
      end
    end,
  })

  VisualTab:CreateToggle({
    Name = 'Day/Night Mode\t <font face="GothamBlack" color="rgb(0,0,120)">ATMOSPHERE</font>',
    CurrentValue = false,
    Flag = "DayNight",
    Callback = function(value202)
      States.DayNight = value202

      if value202 then
        Lighting.ClockTime = 4
        Lighting.Brightness = 3
        Lighting.OutdoorAmbient = Color3.fromRGB(0, 0, 0)
        Lighting.EnvironmentDiffuseScale = 0
        Lighting.EnvironmentSpecularScale = 1
        Lighting.ExposureCompensation = -1
        Lighting.Sky.MoonAngularSize = 20
        Lighting.Sky.StarCount = 5000
        Lighting.FogColor = Color3.fromRGB(52, 52, 52)

        local lighting2 = Lighting
        Lighting.FogEnd = 1000
        lighting2.FogStart = 0
      else
        Lighting.ClockTime = DefaultLighting.ClockTime
        Lighting.Brightness = DefaultLighting.Brightness
        Lighting.OutdoorAmbient = DefaultLighting.OutdoorAmbient
        Lighting.EnvironmentDiffuseScale = DefaultLighting.EnvironmentDiffuseScale
        Lighting.EnvironmentSpecularScale = DefaultLighting.EnvironmentSpecularScale
        Lighting.ExposureCompensation = DefaultLighting.ExposureCompensation
        Lighting.Sky.MoonAngularSize = DefaultLighting.MoonAngularSize
        Lighting.Sky.StarCount = DefaultLighting.StarCount
        Lighting.FogColor = DefaultLighting.FogColor
        Lighting.FogEnd = DefaultLighting.FogEnd
        Lighting.FogStart = DefaultLighting.FogStart
      end
    end,
  })

  VisualTab:CreateToggle({
    Name = 'Better Textures & Materials   <font face="GothamBlack" color="rgb(255,0,0)">OPTIMIZATION</font>',
    CurrentValue = false,
    Flag = "Textures",
    Callback = function(value203)
      States.Textures = value203

      if value203 then
        OuterUFO.Laser.Beam.Texture = "rbxassetid://8933355899"
        InnerUFO.Laser.Beam.Texture = "rbxassetid://8933355899"

        for v369, v370 in Workspace:GetDescendants() do
          if v370.Name == "Button" then
            v370.Material = Enum.Material.Neon

            if v370.Parent.Name == "BombMissile" then
              v370.BrickColor = BrickColor.new(210, 0, 0)
            end
          end
        end
      else
        OuterUFO.Laser.Beam.Texture = ""
        InnerUFO.Laser.Beam.Texture = ""
      end
    end,
  })

  Lighting.GlobalShadows = true
  Lighting.Technology = Enum.Technology.Future

  do
    Lighting.GeographicLatitude = 20

    Workspace.DescendantAdded:Connect(function(descendant5)
      if States.BeamLights then
        if descendant5.Name == "Campfire" then
          local fireLight2 = descendant5:WaitForChild("FirePlayerPart"):WaitForChild("FireLight")
          fireLight2.Brightness = 5
          fireLight2.Shadows = false
        elseif descendant5.Name == "FireworkSparkler" then
          local pointLight2 = descendant5:WaitForChild("Stick"):WaitForChild("Attachment"):WaitForChild("PointLight")
          pointLight2.Brightness = 5
          pointLight2.Range = 15
          pointLight2.Shadows = true
        elseif descendant5.Name == "GrabParts" then
          local grabBeam2 = descendant5:WaitForChild("BeamPart"):WaitForChild("GrabBeam")
          grabBeam2.Brightness = 10
          grabBeam2.LightEmission = 1
          grabBeam2.LightInfluence = 0
        end
      end

      if States.Textures and descendant5.Name == "Button" then
        descendant5.Material = Enum.Material.Neon

        if descendant5.Parent.Name == "BombMissile" then
          descendant5.BrickColor = BrickColor.new(210, 0, 0)
        end
      end
    end)

    VisualTab:CreateLabel("Player ESP", "user")

    local g = _G
    g.PlayerHighlightColor = _G.PlayerHighlightColor or Color3.fromRGB(255, 0, 0)

    local g2 = _G
    g2.ObjectHighlightColor = _G.ObjectHighlightColor or Color3.fromRGB(255, 0, 0)

    v56 = {
      ph = false,
      pi = false,
      oh = false,
      own = false,
      conns = {},
    }

    v57 = {}
    v58 = {}
    v59 = {}

    function discAll()
      for index68, value204 in ipairs(v56.conns) do
        local v371 = value204
        pcall(function() v371:Disconnect() end)
      end

      table.clear(v56.conns)
    end
  end

  do
    function rmHighlight(p94)
      if v57[p94] then
        v57[p94]:Destroy()
        v57[p94] = nil
      end
    end

    function rmIcon(p95)
      if v58[p95] then
        v58[p95]:Destroy()
        v58[p95] = nil
      end
    end

    function mkHighlight(adornee2, p96)
      rmHighlight(p96)

      local highlight2 = Instance.new("Highlight")
      highlight2.FillColor = _G.PlayerHighlightColor
      highlight2.OutlineColor = Color3.new(0, 0, 0)
      highlight2.FillTransparency = 0
      highlight2.OutlineTransparency = 0
      highlight2.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
      highlight2.Adornee = adornee2
      highlight2.Parent = coreGui

      v57[p96] = highlight2
    end

    function mkIcon(p97, p98)
      if not p97 then
        return
      else
        local v372 = p97:FindFirstChild("HumanoidRootPart")

        if not v372 then
          return
        else
          rmIcon(p98)

          local billboardGui2 = Instance.new("BillboardGui")
          billboardGui2.Adornee = v372
          billboardGui2.Size = UDim2.new(0, 100, 0, 100)
          billboardGui2.AlwaysOnTop = true
          billboardGui2.StudsOffset = Vector3.new(0, 3, 0)

          local imageLabel = Instance.new("ImageLabel")
          imageLabel.BackgroundTransparency = 1
          imageLabel.Size = UDim2.new(0, 64, 0, 64)
          imageLabel.Position = UDim2.new(0.5, -32, 0, 0)

          imageLabel.Image = "https://www.roblox.com/headshot-thumbnail/image?userId="
            .. p98.UserId .. "&width=420&height=420&format=png"

          imageLabel.Parent = billboardGui2

          local textLabel4 = Instance.new("TextLabel")
          textLabel4.BackgroundTransparency = 1
          textLabel4.Size = UDim2.new(1, 0, 0, 20)
          textLabel4.Position = UDim2.new(0, 0, 1, -20)
          textLabel4.Text = p98.DisplayName .. " (@" .. p98.Name .. ")"
          textLabel4.TextColor3 = Color3.new(1, 1, 1)
          textLabel4.TextStrokeTransparency = 0
          textLabel4.Font = Enum.Font.GothamBold
          textLabel4.TextScaled = true
          textLabel4.Parent = billboardGui2

          billboardGui2.Parent = coreGui
          v58[p98] = billboardGui2
          return
        end
      end
    end

    function attachPlayer(p99)
      local characterAdded = p99.CharacterAdded

      table.insert(v56.conns, characterAdded:Connect(function(p100)
        task.wait(0.2)

        if v56.ph and p100 then
          mkHighlight(p100, p99)
        end

        if v56.pi and p100 then
          mkIcon(p100, p99)
        end

        local connect37

        connect37 = p100:WaitForChild("Humanoid").Died:Connect(function()
          rmHighlight(p99)
          rmIcon(p99)

          if connect37 then
            connect37:Disconnect()
          end
        end)

        table.insert(v56.conns, connect37)
      end))
    end

    discAll()

    for index69, value205 in ipairs(players:GetPlayers()) do
      if value205 ~= v1 then
        attachPlayer(value205)
      end
    end

    local playerAdded = players.PlayerAdded
    table.insert(v56.conns, playerAdded:Connect(attachPlayer))
    local playerRemoving = players.PlayerRemoving

    table.insert(v56.conns, playerRemoving:Connect(function(p101)
      rmHighlight(p101)
      rmIcon(p101)
    end))

    VisualTab:CreateToggle({
      Name = 'Player ESP    <font face="GothamBlack" color="rgb(0,255,29)">HIGHLIGHT</font>',
      CurrentValue = false,
      Callback = function(value206)
        v56.ph = value206

        for index70, value207 in ipairs(players:GetPlayers()) do
          if value207 ~= v1 then
            local character73 = value207.Character

            if value206 and character73 then
              mkHighlight(character73, value207)
            else
              rmHighlight(value207)
            end
          end
        end
      end,
    })
  end

  VisualTab:CreateToggle({
    Name = 'Player ESP    <font face="GothamBlack" color="rgb(255,255,0)">ICON</font>',
    CurrentValue = false,
    Callback = function(value208)
      v56.pi = value208

      for index71, value209 in ipairs(players:GetPlayers()) do
        if value209 ~= v1 then
          local character74 = value209.Character

          if value208 and character74 then
            mkIcon(character74, value209)
          else
            rmIcon(value209)
          end
        end
      end
    end,
  })

  VisualTab:CreateLabel("Object ESP", "box")

  function isToysFolder(p102)
    return p102:IsA("Folder") and p102.Name:match("SpawnedInToys$")
  end

  function clearMissingOH()
    for key43, value210 in pairs(v59) do
      if not key43 or not key43.Parent then
        if value210 then
          value210:Destroy()
        end

        v59[key43] = nil
      end
    end
  end

  function addObjHighlight(p103)
    if v59[p103] then
      return
    else
      local highlight3 = Instance.new("Highlight")
      highlight3.FillColor = _G.ObjectHighlightColor
      highlight3.OutlineColor = Color3.new(0, 0, 0)
      highlight3.FillTransparency = 0
      highlight3.OutlineTransparency = 0
      highlight3.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
      highlight3.Adornee = p103
      highlight3.Parent = coreGui

      v59[p103] = highlight3
      return
    end
  end

  function refreshObjects()
    clearMissingOH()

    for index72, value211 in ipairs(workspace:GetChildren()) do
      if isToysFolder(value211) then
        for index73, value212 in ipairs(value211:GetDescendants()) do
          if value212:IsA("Model")
            and (value212.PrimaryPart or value212:FindFirstChildWhichIsA("BasePart")) then
            if v56.oh then
              addObjHighlight(value212)
            elseif v59[value212] then
              v59[value212]:Destroy()
              v59[value212] = nil
            end
          end
        end
      end
    end
  end

  connect28 = nil
  connect29 = nil

  function toggleObjects(p104)
    v56.oh = p104

    if not p104 then
      if connect28 then
        connect28:Disconnect()
        connect28 = nil
      end

      if connect29 then
        connect29:Disconnect()
        connect29 = nil
      end

      for key44, value213 in pairs(v59) do
        if value213 then
          value213:Destroy()
        end

        v59[key44] = nil
      end

      return
    end

    refreshObjects()

    connect28 = workspace.DescendantAdded:Connect(function(descendant6)
      if not v56.oh then
        return
      end

      if descendant6:IsA("Model") then
        local parent10 = descendant6.Parent

        while parent10 and parent10 ~= workspace and not isToysFolder(parent10) do
          parent10 = parent10.Parent
        end

        if parent10 and isToysFolder(parent10) then
          addObjHighlight(descendant6)
        end
      end
    end)

    connect29 = workspace.DescendantRemoving:Connect(function(descendant7)
      if v59[descendant7] then
        v59[descendant7]:Destroy()
        v59[descendant7] = nil
      end
    end)
  end

  VisualTab:CreateToggle({
    Name = 'Player Object ESP   <font face="GothamBlack" color="rgb(120,0,120)">HIGHLIGHT</font>',
    CurrentValue = false,
    Callback = function(value214) toggleObjects(value214) end,
  })

  v60 = {}

  function isOwnToysFolder(p105)
    local v373 = p105:IsA("Folder")
    local v374 = v373

    if v373 then
      local spawnedInToys = p105.Name:match("SpawnedInToys$")
      local v375 = spawnedInToys

      if spawnedInToys then
        local v376 = p105.Parent == workspace
        local find = v376

        if not v376 then
          local v377 = workspace

          find = p105.Parent == v377:FindFirstChild(v1.Name)
            or tostring(p105):lower():find(v1.Name:lower(), 1, true)
        end

        v375 = find
      end

      v374 = v375
    end

    return v374
  end

  function clearOwn()
    for key45, value215 in pairs(v60) do
      if value215 then
        value215:Destroy()
      end

      v60[key45] = nil
    end
  end

  function addOwn(p106)
    if v60[p106] then
      return
    else
      local highlight4 = Instance.new("Highlight")
      highlight4.FillColor = _G.ObjectHighlightColor
      highlight4.OutlineColor = Color3.new(0, 0, 0)
      highlight4.FillTransparency = 0
      highlight4.OutlineTransparency = 0
      highlight4.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
      highlight4.Adornee = p106
      highlight4.Parent = coreGui

      v60[p106] = highlight4
      return
    end
  end

  function refreshOwn()
    for key46, value216 in pairs(v60) do
      if not key46 or not key46.Parent then
        if value216 then
          value216:Destroy()
        end

        v60[key46] = nil
      end
    end

    for index74, value217 in ipairs(workspace:GetChildren()) do
      if isOwnToysFolder(value217) then
        for index75, value218 in ipairs(value217:GetDescendants()) do
          if value218:IsA("Model")
            and (value218.PrimaryPart or value218:FindFirstChildWhichIsA("BasePart")) then
            addOwn(value218)
          end
        end
      end
    end
  end

  VisualTab:CreateLabel("Settings", "Settings")

  VisualTab:CreateColorPicker({
    Name = "Player Highlight Color",
    Color = _G.PlayerHighlightColor,
    Callback = function(value219)
      _G.PlayerHighlightColor = value219

      for key47, value220 in pairs(v57) do
        if value220 then
          value220.FillColor = value219
        end
      end
    end,
  })

  VisualTab:CreateColorPicker({
    Name = "Object Highlight Color",
    Color = _G.ObjectHighlightColor,
    Callback = function(value221)
      _G.ObjectHighlightColor = value221

      for key48, value222 in pairs(v59) do
        if value222 then
          value222.FillColor = value221
        end
      end

      for key49, value223 in pairs(v60) do
        if value223 then
          value223.FillColor = value221
        end
      end
    end,
  })

  KeybindTab:CreateSection("Keybinds")

  KeybindTab:CreateButton({
    Name = 'MobileKeyboard  <font face="GothamBlack" color="rgb(240,25,56)">MOBILE</font>',
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/Delta-Scripts/main/MobileKeyboard.txt"))()
    end,
  })

  getMouse = v1:GetMouse()

  function teleportToMouse()
    local character75 = v1.Character
    local v378 = character75 and character75:FindFirstChild("HumanoidRootPart")

    if not (v378 and getMouse.Target and getMouse.Target:IsA("BasePart")) then
      return
    end

    v378.CFrame = CFrame.new(getMouse.Hit.Position + Vector3.new(0, 5, 0))
  end

  KeybindTab:CreateKeybind({
    Name = 'Teleport to Mouse\t<font face="GothamBlack" color="rgb(180,0,255)">TELEPORT</font>',
    CurrentKeybind = "Z",
    HoldToInteract = false,
    Callback = teleportToMouse,
  })

  KeybindTab:CreateKeybind({
    Name = 'Spawn Pallet  <font face="GothamBlack" color="rgb(240,184,111)">PALLET</font>',
    CurrentKeybind = "P",
    HoldToInteract = false,
    Callback = function()
      local v379 = (v1.Character or v1.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
      local lookVector2 = workspace.CurrentCamera.CFrame.LookVector
      local v380 = v379.Position + lookVector2 * 3

      SpawnToyRF:InvokeServer(
        "PalletLightBrown", CFrame.new(v380, v380 + lookVector2), Vector3.new(0, 5, 0)
      )
    end,
  })

  KeybindTab:CreateSection("Limb OP ")

  function deleteLimbs(p107)
    if not p107 then
      return
    end

    for index76, value224 in ipairs({ "Right Arm", "Left Arm", "Right Leg", "Left Leg" }) do
      local findFirstChild24 = p107:FindFirstChild(value224)

      if findFirstChild24 then
        for index77, value225 in ipairs(findFirstChild24:GetChildren()) do
          if value225:IsA("Motor6D") or value225:IsA("Weld") or value225:IsA("WeldConstraint") then
            value225:Destroy()
          end
        end

        findFirstChild24.CFrame = CFrame.new(0, -10000, 0)
      end
    end
  end

  KeybindTab:CreateKeybind({
    Name = 'Delete Limbs  <font face="GothamBlack" color="rgb(7,255,0)">GRAB</font>   <font face="GothamBlack" color="rgb(39,245,218)">PREMIUM</font>',
    CurrentKeybind = "U",
    HoldToInteract = false,
    Callback = function()
      local grabParts8 = workspace:FindFirstChild("GrabParts")
      local grabPart9 = grabParts8 and grabParts8:FindFirstChild("GrabPart")

      if not grabPart9 then
        return
      else
        local weldConstraint9 = grabPart9:FindFirstChild("WeldConstraint")

        if not weldConstraint9 or not weldConstraint9.Part1 then
          return
        else
          local model2 = weldConstraint9.Part1:FindFirstAncestorOfClass("Model")

          if not model2 then
            return
          else
            local cframe24 = grabPart9.CFrame
            deleteLimbs(model2)

            if SpawnToyRF then
              SpawnToyRF:InvokeServer("PalletLightBrown", cframe24, Vector3.new(0, 0, 0))
            end

            return
          end
        end
      end
    end,
  })

  KeybindTab:CreateParagraph({
    Title = "How to use it :",
    Content = 'Grab a part of a player <font face="GothamBlack" color="rgb(255,0,0)">TORSO</font> or <font face="GothamBlack" color="rgb(255,0,0)">HEAD</font> and <font face="GothamBlack" color="rgb(255,0,0)">RAGDOLL</font> him, then press the Keybind to remove all limbs. A pallet will spawn exactly where the grabbed part is.',
  })

  v61 = false
  connect30 = nil

  KeybindTab:CreateKeybind({
    Name = 'Aimbot player  <font face="GothamBlack" color="rgb(255,0,0)">CLOSEST</font>',
    CurrentKeybind = "T",
    HoldToInteract = false,
    Callback = function()
      v61 = not v61

      if v61 then
        connect30 = runService.RenderStepped:Connect(function()
          local currentCamera7 = workspace.CurrentCamera
          local v381 = v1.Character and v1.Character:FindFirstChild("HumanoidRootPart")

          if not v381 then
            return
          else
            local v382 = nil
            local huge2 = math.huge

            for key50, value226 in pairs(players:GetPlayers()) do
              if value226 ~= v1 and value226.Character then
                local v383 = value226.Character:FindFirstChild("HumanoidRootPart")

                if v383 then
                  local magnitude = (v381.Position - v383.Position).Magnitude

                  if magnitude < huge2 then
                    huge2 = magnitude
                    v382 = value226
                  end
                end
              end
            end

            if v382 and v382.Character then
              local head13 = v382.Character:FindFirstChild("Head")

              if head13 then
                currentCamera7.CFrame = CFrame.new(
                  currentCamera7.CFrame.Position, head13.Position
                )
              end
            end

            return
          end
        end)
      elseif connect30 then
        connect30:Disconnect()
        connect30 = nil
      end
    end,
  })

  spawnToyRemoteFunction = replicatedStorage:WaitForChild("MenuToys"):WaitForChild("SpawnToyRemoteFunction")
  ragdollRemote = replicatedStorage:WaitForChild("CharacterEvents"):WaitForChild("RagdollRemote")
  KeybindTab:CreateSection("Lobotomy OP")

  Button = KeybindTab:CreateButton({
    Name = 'Lobotomy    <font face="GothamBlack" color="rgb(255,0,0)">OP</font>   <font face="GothamBlack" color="rgb(39,245,218)">PREMIUM</font>',
    Callback = function()
      spawnToyRemoteFunction:InvokeServer(
        "CreatureBlobman", humanoidRootPart.CFrame * CFrame.new(0, 0, -5),
        Vector3.new(0, -16.157, 0)
      )

      task.spawn(function()
        while true do
          local findFirstChild25 = workspace:FindFirstChild(v1.Name .. "SpawnedInToys")

          if findFirstChild25 and findFirstChild25:FindFirstChild("CreatureBlobman") then
            local vehicleSeat8 = findFirstChild25.CreatureBlobman:FindFirstChild("VehicleSeat")

            if vehicleSeat8 and vehicleSeat8.Occupant ~= Humanoid then
              vehicleSeat8:Sit(Humanoid)
            end
          end

          task.wait(0.1)
        end
      end)

      task.spawn(function()
        while true do
          pcall(function() v1.IsHeld.Value = true end)
          task.wait()
        end
      end)

      task.spawn(function()
        while true do
          for i20 = 1, 12 do
            ragdollRemote:FireServer(humanoidRootPart, 0)
          end

          task.wait()
        end
      end)
    end,
  })

  KeybindTab:CreateParagraph({
    Title = "How it work : ",
    Content = "Basically, it breaks grabbing, destroys the house barrier, and prevents us from spawning items.",
  })

  do
    InfoTab:CreateSection("Premium Info")

    InfoTab:CreateParagraph({
      Title = '<font face="GothamBlack" color="rgb(255,0,0)">How to get premium ?</font>',
      Content = 'Join the <font face="GothamBlack" color="rgb(255,0,0)">discord</font>, the price for premium is <font face="GothamBlack" color="rgb(255,0,0)">200 ROBUX</font> To have it permanently.',
    })

    Button = InfoTab:CreateButton({
      Name = "Copy Discord link",
      Callback = function()
        if setclipboard then
          setclipboard("https://discord.gg/PMk4T9F8ZC")
        end
      end,
    })

    v62 = nil
    findFirstChild = nil
    connect31 = nil
    spawnToyRemoteFunction2 = replicatedStorage:WaitForChild("MenuToys"):WaitForChild("SpawnToyRemoteFunction")
    bombExplode = replicatedStorage:WaitForChild("BombEvents"):WaitForChild("BombExplode")

    local g3 = _G
    g3.ToyToLoad = _G.ToyToLoad or "BombMissile"

    _G.MaxMissiles = _G.MaxMissiles or 5

    local g4 = _G
    g4.ExplosionMode = _G.ExplosionMode or "Instant"
  end

  _G.ExplosionDelay = _G.ExplosionDelay or 0.05
  _G.PredictionTime = 0.4

  v63 = {}
  v64 = {}
  v65 = false
  w2 = nil
  v66 = false
  v67 = false
  v68 = 0

  function cleanupBomb(p108, p109)
  end

  function isValidBomb(p110)
    return p110 and p110.Parent and p110.PrimaryPart and p110:FindFirstChild("PartHitDetector")
  end

  function getPredictedCFrame(p111)
    local cframe25 = p111.CFrame

    if _G.PredictionTime <= 0 then
      return cframe25
    else
      local velocity = p111.Velocity
      local magnitude2 = velocity.Magnitude

      if magnitude2 < 1 then
        return cframe25
      else
        local v384 = p111.Position + velocity.Unit * (magnitude2 * _G.PredictionTime)
        return CFrame.new(v384, v384 + cframe25.LookVector)
      end
    end
  end

  function teleportBombToTarget(p112, p113)
    if not p112 or not p112.PrimaryPart or not p113 then
      return false
    end

    return (pcall(function() p112:SetPrimaryPartCFrame((getPredictedCFrame(p113))) end))
  end

  function setupBomb(p114)
    local v385 = not p114 or not p114.Parent
    local waitForChild10

    if v385 then
      return false
    elseif not v65 then
      return false
    elseif not p114:WaitForChild("ThisToysNumber", 2) then
      cleanupBomb(p114, v64)
      return false
    else
      local total = 0

      while not p114.PrimaryPart and total < 4 do
        task.wait(0.05)
        total = total + 0.05
      end

      if not p114.PrimaryPart or not p114.Parent then
        cleanupBomb(p114, v64)
        return false
      end

      waitForChild10 = p114:WaitForChild("Body", 1)

      if not waitForChild10 then
        cleanupBomb(p114, v64)
        return false
      end

      if not pcall(function()
        SetNetworkOwner:FireServer(waitForChild10, waitForChild10.CFrame)
        local waitForChild11 = waitForChild10:WaitForChild("PartOwner", 0.5)

        if not waitForChild11 or waitForChild11.Value ~= v1.Name then
          return false
        end

        if character and character:FindFirstChild("Head") then
          local v386 = #v63
          local v387 = character.Head.Position + Vector3.new(0, 1000, 0) + Vector3.new(v386 % 8 * 6, -math.floor(v386 / 8) * 6, 0)

          for index78, value227 in ipairs(p114:GetChildren()) do
            if value227:IsA("BasePart") then
              value227.CanCollide = false
            end
          end

          p114:SetPrimaryPartCFrame(CFrame.new(v387))
          task.wait(0.2)

          for index79, value228 in ipairs(p114:GetChildren()) do
            if value228:IsA("BasePart") then
              value228.Anchored = true
            end
          end
        end
      end) or not p114.Parent then
        cleanupBomb(p114, v64)
        return false
      end

      table.insert(v63, p114)
      cleanupBomb(p114, v64)

      p114.AncestryChanged:Connect(function()
        if not p114.Parent then
          cleanupBomb(p114, v63)
        end
      end)

      return true
    end
  end

  function setupExplosionCharacter()
    character = v1.Character or v1.CharacterAdded:Wait()
    v62 = v1.Name .. "SpawnedInToys"
    findFirstChild = workspace:FindFirstChild(v62) or workspace:WaitForChild(v62)
    v63 = {}
    v64 = {}

    if connect31 then
      connect31:Disconnect()
    end

    connect31 = findFirstChild.ChildAdded:Connect(function(child14)
      if not v65 then
        return
      end

      if child14.Name == _G.ToyToLoad then
        table.insert(v64, child14)

        task.spawn(function()
          task.wait(0.15)
          setupBomb(child14)
        end)
      end
    end)

    for index80, value229 in ipairs(findFirstChild:GetChildren()) do
      local v388 = value229

      if v65 and v388.Name == _G.ToyToLoad then
        table.insert(v64, v388)
        task.spawn(function() setupBomb(v388) end)
      end
    end
  end

  setupExplosionCharacter()

  v1.CharacterAdded:Connect(function()
    task.wait(0.5)
    setupExplosionCharacter()
  end)

  function spawnBombs()
    if v66 then
      return
    end

    local cframe26, vector9

    if not character or not character:FindFirstChild("Head") then
      return
    else
      local v389 = tick()

      if v389 - v68 < 0.3 then
        return
      else
        local v390 = _G.MaxMissiles - (#v63 + #v64)

        if v390 <= 0 then
          return
        end

        v66 = true
        v68 = v389
        cframe26 = CFrame.new(character.Head.Position)
        vector9 = Vector3.new(0, 90, 0)

        for i21 = 1, v390 do
          if v1:FindFirstChild("CanSpawnToy") and v1.CanSpawnToy.Value then
            task.spawn(function()
              pcall(function()
                spawnToyRemoteFunction2:InvokeServer(_G.ToyToLoad, cframe26, vector9)
              end)
            end)

            task.wait(0.05)
          end
        end

        task.wait(0.2)
        v66 = false
        return
      end
    end
  end

  function explodeOnTarget(p115)
    if v67 then
      return false
    end

    if not p115 or not p115.Character then
      return false
    end

    if not p115.Character:FindFirstChild("HumanoidRootPart") then
      return false
    else
      local v391 = {}

      for index81, value230 in ipairs(v63) do
        if isValidBomb(value230) then
          table.insert(v391, value230)
        end
      end

      if #v391 < _G.MaxMissiles then
        return false
      else
        local v392 = {}
        v67 = true

        for i22 = 1, _G.MaxMissiles do
          v392[i22] = v391[i22]
        end

        local count7 = 0
        v63 = {}

        for index82, value231 in ipairs(v392) do
          if not p115.Character then
            break
          else
            local v393 = p115.Character:FindFirstChild("HumanoidRootPart")

            if not v393 or not v393.Parent then
              break
            end

            if isValidBomb(value231) then
              teleportBombToTarget(value231, v393)

              local v394 = {
                {
                  Radius = 17.5,
                  TimeLength = 2,
                  Hitbox = value231:FindFirstChild("PartHitDetector"),
                  ExplodesByFire = false,
                  MaxForcePerStudSquared = 225,
                  Model = value231,
                  ImpactSpeed = 100,
                  ExplodesByPointy = false,
                  DestroysModel = false,
                  PositionPart = v393,
                },
                v393.Position,
              }

              if pcall(function() bombExplode:FireServer(unpack(v394)) end) then
                count7 = count7 + 1
              end
            end

            if _G.ExplosionMode == "Sequential" then
              task.wait(_G.ExplosionDelay)
            else
              task.wait(0.01)
            end
          end
        end

        task.wait(0.1)
        v67 = false
        return count7 > 0
      end
    end
  end

  function autoSpamLoop()
    while v65 do
      local findFirstChild26 = w2 and players:FindFirstChild(w2)

      if findFirstChild26 and findFirstChild26.Character then
        if _G.MaxMissiles == 1 then
          if not v66 and not v67 then
            spawnBombs()
            task.wait(0.3)

            if #v63 >= 1 then
              explodeOnTarget(findFirstChild26)
            end
          end
        else
          if #v63 < _G.MaxMissiles and not v66 then
            spawnBombs()
          end

          if #v63 >= _G.MaxMissiles and not v67 then
            if explodeOnTarget(findFirstChild26) then
              task.wait(0.4)
            end
          end
        end
      end

      task.wait(0.1)
    end
  end

  task.spawn(function()
    while true do
      task.wait(3)

      for i23 = #v64, 1, -1 do
        if not v64[i23] or not v64[i23].Parent then
          table.remove(v64, i23)
        end
      end

      for i24 = #v63, 1, -1 do
        if not isValidBomb(v63[i24]) then
          table.remove(v63, i24)
        end
      end
    end
  end)

  Label = ExplosionTab:CreateLabel("Missile", "Rocket")

  function ExplosionOptionText(p116)
    local name2 = p116.Name
    return string.format("👤 @%s (%s)", name2, p116.DisplayName or "")
  end

  ExplosionDropdown = ExplosionTab:CreateDropdown({
    Name = 'Select Target   <font face="GothamBlack" color="rgb(255,128,0)">TRACK</font>',
    Options = {},
    CurrentOption = {},
    MultipleOptions = false,
    Flag = "ExplosionTargetDropdown",
    Callback = function(value232) w2 = value232[1]:match("@([%w_]+)") end,
  })

  function refreshExplosionDropdown()
    local v395 = {}

    for index83, value233 in ipairs(players:GetPlayers()) do
      if value233 ~= v1 then
        table.insert(v395, ExplosionOptionText(value233))
      end
    end

    ExplosionDropdown:Refresh(v395)
  end

  players.PlayerAdded:Connect(function()
    task.wait(0.5)
    refreshExplosionDropdown()
  end)

  players.PlayerRemoving:Connect(function()
    task.wait(0.5)
    refreshExplosionDropdown()
  end)

  refreshExplosionDropdown()

  ExplosionTab:CreateSection("Settings")

  ExplosionTab:CreateSlider({
    Name = 'Missiles per Wave\t<font face="GothamBlack" color="rgb(128,0,255)">SALVO</font>',
    Range = { 1, 10 },
    Increment = 1,
    CurrentValue = _G.MaxMissiles,
    Suffix = " missiles",
    Flag = "ExplosionMissileSlider",
    Callback = function(value234) _G.MaxMissiles = value234 end,
  })

  ExplosionTab:CreateDropdown({
    Name = 'Explosion Mode\t<font face="GothamBlack" color="rgb(255,64,64)">BLAST</font>',
    Options = { "Instant", "Sequential" },
    CurrentOption = { _G.ExplosionMode },
    MultipleOptions = false,
    Flag = "ExplosionModeDropdown",
    Callback = function(value235) _G.ExplosionMode = value235[1] end,
  })

  ExplosionTab:CreateSlider({
    Name = 'Delay (Sequential)\t<font face="GothamBlack" color="rgb(255,200,0)">INTERVAL</font>',
    Range = { 0, 0.3 },
    Increment = 0.01,
    CurrentValue = _G.ExplosionDelay,
    Suffix = " s",
    Flag = "ExplosionDelaySlider",
    Callback = function(value236) _G.ExplosionDelay = value236 end,
  })

  ExplosionTab:CreateToggle({
    Name = 'Auto Spam   <font face="GothamBlack" color="rgb(0,255,0)">RAPID</font>',
    CurrentValue = false,
    Flag = "ExplosionAutoSpamToggle",
    Callback = function(value237)
      v65 = value237

      if v65 then
        task.spawn(autoSpamLoop)
      end
    end,
  })

  ExplosionTab:CreateParagraph({
    Title = "<b>Missile Explosion</b>",
    Content = "When auto-spam is enabled, it is recommended to avoid sudden or fast movements.",
  })

  MiscTab:CreateLabel("Silent Aim", "Target")
  extendGrabLineRemoteEvent = GrabEvents:WaitForChild("ExtendGrabLine")
  GrabPartsModel = replicatedFirst.GrabParts
  maxDistance = 30
  pcDistance = 19
  _G.ActualFakeGrabParts = nil
  currentGrabbedPart = nil
  connect32 = nil
  connect33 = nil
  connect34 = nil

  function CheckNetworkOwnerShipOnPart(p117, p118)
    if typeof(p117) == "Instance" and p117:FindFirstChild("PartOwner")
      and p117.PartOwner.Value == v1.Name then
      return not p118 and true or p117.PartOwner
    end

    return false
  end

  function isPlayerCharacter(p119)
    if not p119 or not p119.Parent then
      return false
    end

    return p119.Parent:FindFirstChildOfClass("Humanoid") ~= nil
  end

  function isPlayerInPlot(p120)
    if p120 and p120:FindFirstChild("InPlot") then
      return p120.InPlot.Value == true
    end

    return false
  end

  function checkObjectInRaycast()
    local currentCamera8 = Workspace.CurrentCamera
    local position9 = currentCamera8.CFrame.Position
    local lookVector3 = currentCamera8.CFrame.LookVector

    local raycastParams = RaycastParams.new()
    raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
    raycastParams.FilterDescendantsInstances = { v1.Character }

    local raycast = Workspace:Raycast(position9, lookVector3 * 30, raycastParams)

    if raycast then
      local instance2 = raycast.Instance

      if instance2:IsA("BasePart") and not isPlayerCharacter(instance2) then
        return true, (position9 - raycast.Position).Magnitude
      end

      return false, math.huge
    end

    return false, math.huge
  end

  function CleanupGrab()
    if _G.ActualFakeGrabParts then
      DestroyGrabLine:FireServer(currentGrabbedPart)

      _G.ActualFakeGrabParts:Destroy()
      _G.ActualFakeGrabParts = nil

      currentGrabbedPart = nil
    end

    if connect32 then
      connect32:Disconnect()
      connect32 = nil
    end

    if connect33 then
      connect33:Disconnect()
      connect33 = nil
    end

    Workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
    userInputService.MouseBehavior = Enum.MouseBehavior.Default
    pcall(function() v1.PlayerScripts.CharacterAndBeamMove.GrabNotifyEvent:Fire(false) end)
  end

  function f24(p121)
    local character76 = v1.Character

    if _G.ActualFakeGrabParts then
      if currentGrabbedPart == p121 then
        return
      end

      CleanupGrab()
    end

    local v396 = character76 and p121 and p121:IsA("BasePart")
      and character76:FindFirstChildOfClass("Humanoid")
      and character76:FindFirstChildOfClass("Humanoid").Health > 0

    local v397, grabParts9

    if v396 then
      if _G.RealGrabParts then
        return
      else
        local head14 = p121.Parent:FindFirstChild("Head")
        local v398 = p121.Parent:FindFirstChildOfClass("Humanoid")
        v397 = head14 or p121

        if v398 and v398.Health < 1 then
          return
        end

        SetNetworkOwner:FireServer(v397, Workspace.CurrentCamera.CFrame)
        CreateGrabLine:FireServer(v397)
        pcDistance = (p121.Position - Workspace.CurrentCamera.CFrame.Position).Magnitude

        grabParts9 = GrabPartsModel:Clone()
        grabParts9:SetAttribute("Fake", true)
        grabParts9.Name = "GrabParts"

        local grabPart10 = grabParts9.GrabPart

        grabPart10.Color = v1:FindFirstChild("BeamColor") and v1.BeamColor.BallColorHolder.Value
          or Color3.new(1, 1, 1)

        local grabBeam3 = grabParts9.BeamPart.GrabBeam

        grabBeam3.Color = v1:FindFirstChild("BeamColor")
            and v1.BeamColor.ColorSequenceHolder.Color
          or ColorSequence.new(Color3.new(1, 1, 1))

        grabParts9.DragPart.Anchored = true
        grabParts9.GrabPart.WeldConstraint.Part1 = p121
        grabParts9.GrabPart.Position = p121.Position
        grabParts9.GrabPart.Anchored = false
        grabParts9.BeamPart.Anchored = true

        local grabBeam4 = grabParts9.BeamPart.GrabBeam

        grabBeam4.Attachment0 = character76:FindFirstChild("CamPart")
            and character76.CamPart:FindFirstChild("Attachment")
          or nil

        grabParts9.Parent = Workspace
        _G.ActualFakeGrabParts = grabParts9
        currentGrabbedPart = p121

        task.spawn(function()
          task.wait(0.2)

          if CheckNetworkOwnerShipOnPart(v397, true) == false then
            CleanupGrab()
          end
        end)

        connect32 = userInputService.InputChanged:Connect(function(input3, p122)
          if not p122 and input3.UserInputType == Enum.UserInputType.MouseWheel then
            if input3.Position.Z < 0 then
              pcDistance = math.clamp(pcDistance - 1, 3, 30)
            elseif input3.Position.Z > 0 then
              pcDistance = math.clamp(pcDistance + 1, 3, 30)
            end

            extendGrabLineRemoteEvent:FireServer(pcDistance)
          end
        end)

        connect33 = userInputService.InputBegan:Connect(function(input4, p123) end)

        task.spawn(function()
          pcall(function() v1.PlayerScripts.CharacterAndBeamMove.GrabNotifyEvent:Fire(true) end)

          while grabParts9.Parent and p121:IsDescendantOf(Workspace) do
            if _G.SilentAimV2 and not isPlayerCharacter(p121) then
              break
            end

            grabParts9.DragPart.Position = Workspace.CurrentCamera.CFrame.Position
              + Workspace.CurrentCamera.CFrame.LookVector * pcDistance

            if Workspace:FindFirstChild("RotateOrientPart") then
              grabParts9.DragPart.DragAttach.WorldOrientation = Workspace.RotateOrientPart.PartOrient.WorldOrientation
            end

            grabParts9.BeamPart.CFrame = CFrame.lookAt(
              grabParts9.GrabPart.Position, grabParts9.DragPart.Position, Vector3.new(0, 0, 1)
            )

            grabParts9.BeamPart.GrabBeam.CurveSize1 = (grabParts9.GrabPart.Position
                - grabParts9.DragPart.Position).Magnitude
              * 1.5

            grabParts9.GrabPart.BeamSound.PlaybackSpeed = (grabParts9.GrabPart.Position
                    - grabParts9.DragPart.Position).Magnitude
                  * 1.5
                  * 1.5
                / 2
              + 2.5

            task.wait()
          end

          CleanupGrab()
        end)

        return
      end
    else
      return
    end
  end

  function getNearestPlayer()
    local v399 = maxDistance + 1
    local v400

    for key51, value238 in pairs(players:GetPlayers()) do
      if value238 ~= v1 and value238.Character
        and value238.Character:FindFirstChild("HumanoidRootPart") and v1.Character
        and v1.Character:FindFirstChild("HumanoidRootPart") then
        if not isPlayerInPlot(value238) then
          local magnitude3 = (v1.Character.HumanoidRootPart.Position
            - value238.Character.HumanoidRootPart.Position).Magnitude

          if magnitude3 < v399 then
            v400 = value238
            v399 = magnitude3
          end
        end
      end
    end

    return v400
  end

  function handleMouseButton1()
    if _G.ActualFakeGrabParts then
      CleanupGrab()
      return
    else
      local v401, v402 = checkObjectInRaycast()

      if _G.SilentAimV2 then
        if v401 and v402 <= 30 then
          return
        end

        local v403 = getNearestPlayer()

        if v403 and v403.Character and v403.Character:FindFirstChild("HumanoidRootPart") then
          if (v1.Character.HumanoidRootPart.Position - v403.Character.HumanoidRootPart.Position).Magnitude
            <= maxDistance then
            local head15 = v403.Character:FindFirstChild("Head")

            if head15 then
              f24(head15)
            end
          end
        end

        return
      end

      return
    end
  end

  MiscTab:CreateToggle({
    Name = 'Silent Aim    <font face="GothamBlack" color="rgb(47,245,89)">[PC ONLY]</font>    <font face="GothamBlack" color="rgb(123,67,89)">BETA</font>',
    CurrentValue = false,
    Flag = "SilentAimToggle",
    Callback = function(value239)
      _G.SilentAimV2 = value239

      if value239 then
        if not connect34 then
          connect34 = userInputService.InputBegan:Connect(function(input5)
            if input5.UserInputType == Enum.UserInputType.MouseButton1 then
              handleMouseButton1()
            end
          end)
        end
      else
        if connect34 then
          connect34:Disconnect()
          connect34 = nil
        end

        CleanupGrab()
      end
    end,
  })

  MiscTab:CreateParagraph({
    Title = "On which executor it work ?",
    Content = 'It work on  <font face="GothamBlack" color="rgb(255,0,0)">EVERY PC executor</font> like <font face="GothamBlack" color="rgb(255,0,0)">XENO</font>, <font face="GothamBlack" color="rgb(255,0,0)">HYDROGEN</font>, <font face="GothamBlack" color="rgb(255,0,0)">POTASSIUM</font> etc..',
  })

  Hitbox = { "Head", "Torso", "Left Leg", "Right Leg" }
  toggle = false
  Distance = 30
  hookSupported = hookmetamethod and getrawmetatable
  raycastFromCam = nil

  function SilentAimFunction(p124, p125)
    if not toggle or not hookSupported or not raycastFromCam then
      return raycastFromCam(p124, p125)
    else
      local v404 = nil
      local huge3 = math.huge

      for key52, value240 in pairs(players:GetPlayers()) do
        if value240 ~= v1 and value240.Character
          and value240.Character:FindFirstChild("HumanoidRootPart") then
          local v405 = value240.Character:FindFirstChildOfClass("Humanoid")

          if v405 and v405.Health > 0 then
            local v406 = value240.Character.HumanoidRootPart
            local v407 = { camera:WorldToScreenPoint(v406.Position) }

            if v407[2] then
              local magnitude4 = (v1.Character.HumanoidRootPart.Position - v406.Position).Magnitude

              if magnitude4 < huge3 then
                v404 = value240
                huge3 = magnitude4
              end
            end
          end
        end
      end

      if v404 and huge3 <= Distance and v404.Character then
        local v408 = math.random(1, #Hitbox)
        local findFirstChild27 = v404.Character:FindFirstChild(Hitbox[v408])

        if findFirstChild27 then
          local v409 = {
            Instance = findFirstChild27,
            Position = findFirstChild27.Position,
            Normal = Vector3.new(0, 1, 0),
            Material = Enum.Material.Plastic,
          }

          return v409, findFirstChild27.CFrame:ToObjectSpace(CFrame.new(v409.Position))
        end

        return raycastFromCam(p124, p125)
      end

      return raycastFromCam(p124, p125)
    end
  end

  PlayerScripts = v1:WaitForChild("PlayerScripts", 5)
  raycastModule = PlayerScripts and PlayerScripts:FindFirstChild("RaycastModule")

  if hookSupported and raycastModule then
    module = require(raycastModule)

    if module and module.RaycastFromCam then
      raycastFromCam = module.RaycastFromCam

      function module.RaycastFromCam(p126, p127)
        return SilentAimFunction(p126, p127)
      end
    end
  end

  MiscTab:CreateToggle({
    Name = 'Silent Aim <font face="GothamBlack" color="rgb(47,34,89)">HOOK</font>',
    CurrentValue = false,
    Flag = "SilentAimToggle",
    Callback = function(value241)
      toggle = value241

      if value241 and not hookSupported then
        rayfield:Notify({
          Title = "disabled",
          Content = "Function disabled (hook not supported)",
          Duration = 4,
          Image = "x",
        })

        toggle = false
      end
    end,
  })

  MiscTab:CreateParagraph({
    Title = "On which executor it work ?",
    Content = 'It work on <font face="GothamBlack" color="rgb(255,0,0)">good executor</font> like <font face="GothamBlack" color="rgb(255,0,0)">DELTA</font>, <font face="GothamBlack" color="rgb(255,0,0)">POTASSIUM</font> etc..',
  })

  MiscTab:CreateLabel("Script", "notebook-text")

  MiscTab:CreateButton({
    Name = 'Open  <font face="GothamBlack" color="rgb(39,245,218)">Infinite Yield</font>',
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end,
  })

  MiscTab:CreateLabel("Pleasant", "thumbs-up")

  volume = 0.5
  boomboxList = {}

  MiscTab:CreateSlider({
    Name = 'Boombox <font face="GothamBlack" color="rgb(244,34,56)">Volume</font>',
    Range = { 0, 1 },
    Increment = 0.1,
    Suffix = "Volume",
    CurrentValue = 0.5,
    Flag = "BoomboxVolume",
    Callback = function(value242)
      volume = value242

      for key53, value243 in pairs(boomboxList) do
        if value243.sound and value243.sound.Parent then
          value243.sound.Volume = value242
        end
      end
    end,
  })

  task.spawn(function()
    for key54, value244 in pairs(workspace:GetDescendants()) do
      if value244.Name == "Boombox" and value244:FindFirstChild("Speaker") then
        for key55, value245 in pairs(value244.Speaker:GetChildren()) do
          if value245:IsA("Sound")
            and (value245.Name:find("01_Green") or value245.Name:find("02_Street")
              or value245.Name:find("03_Ukrainian")) then
            table.insert(boomboxList, { sound = value245 })
            value245.Volume = volume
          end
        end
      end
    end
  end)

  workspace.DescendantAdded:Connect(function(descendant8)
    task.wait(0.1)

    if descendant8.Name == "Boombox" and descendant8:FindFirstChild("Speaker") then
      for key56, value246 in pairs(descendant8.Speaker:GetChildren()) do
        if value246:IsA("Sound")
          and (value246.Name:find("01_Green") or value246.Name:find("02_Street")
            or value246.Name:find("03_Ukrainian")) then
          table.insert(boomboxList, { sound = value246 })
          value246.Volume = volume
        end
      end
    end
  end)

  MiscTab:CreateLabel("Auto", "Repeat")

  function GetPlayerCharacter()
    if v1.Character and v1.Character:FindFirstChild("HumanoidRootPart") then
      return v1.Character
    end
  end

  function TeleportPlayer(cframe27)
    local v410 = GetPlayerCharacter()

    if v410 then
      v410.HumanoidRootPart.CFrame = cframe27
    end
  end

  function lookAt(p128, p129)
    local unit = (p129 - p128).Unit
    local cross = unit:Cross(Vector3.new(0, 1, 0))
    local cross2 = cross:Cross(unit)
    return CFrame.fromMatrix(p128, cross, cross2)
  end

  function SNOWship(p130)
    if p130 then
      SetNetworkOwner:FireServer(
        p130, lookAt(v1.Character.HumanoidRootPart.Position, p130.Position)
      )
    end
  end

  function areAllSlotsNeon()
    for key57, value247 in pairs(Workspace.Slots:GetChildren()) do
      if value247.SlotHandle.LightBall.Material ~= Enum.Material.Neon then
        return false
      end
    end

    return true
  end

  timeleft = Workspace.Slots.Slots.Screen.SlotGui.TimeLeftFrame.TimeText

  MiscTab:CreateToggle({
    Name = 'Enable Auto‑Spin\t<font face="GothamBlack" color="rgb(0,26,255)">CASINO</font>',
    CurrentValue = false,
    Flag = "spin_toggle",
    Callback = function(value248)
      _G.AutoSpin = value248

      if value248 then
        while _G.AutoSpin do
          if areAllSlotsNeon() then
            local cframe28 = v1.Character.HumanoidRootPart.CFrame

            for key58, value249 in pairs(Workspace.Slots:GetChildren()) do
              local handle2 = value249.SlotHandle.Handle
              handle2.CanCollide = false

              for i25 = 1, 10 do
                TeleportPlayer(handle2.CFrame + Vector3.new(0, 5, 0))
                SNOWship(handle2)
                task.wait(0.15)
              end

              handle2.CanCollide = true
              task.wait(0.4)

              if not areAllSlotsNeon() then
                break
              end
            end

            TeleportPlayer(cframe28)
          end

          task.wait(3)
        end
      end
    end,
  })

  TimeDisplay = MiscTab:CreateLabel("Time Remaining: 0:00")

  timeleft.Changed:Connect(function(p131)
    if p131 == "Text" then
      TimeDisplay:Set("Time Remaining: " .. timeleft.Text)
    end
  end)

  FunTab:CreateLabel("Chat", "message-circle-more")

  keywords = {
    "kick", "dead", "yo", "ree", "mad", "uwu", "yay", "banana", "spook", "grr", "ew", "lol",
    "hehe", "hmm", "dad", "hold", "pew", "drink", "soda", "yeehaw", "fly", "ahem", "cough",
    "one", "two", "three", "four", "five", "mom", "yum", "sh", "aaa", "cry", "sing", "xd", "?",
  }

  spamEnabled = false
  currentKeyword = keywords[1]

  runService.Heartbeat:Connect(function()
    if spamEnabled and currentKeyword ~= nil then
      pcall(function() rbxGeneral:SendAsync("/clear " .. tostring(currentKeyword)) end)
    end
  end)

  FunTab:CreateToggle({
    Name = 'Enable Spam    <font face="GothamBlack" color="rgb(0,26,255)">LOUD</font>',
    CurrentValue = false,
    Flag = "SpamToggle",
    Callback = function(value250) spamEnabled = value250 end,
  })

  FunTab:CreateDropdown({
    Name = "Select Keyword",
    Options = keywords,
    CurrentOption = keywords[1],
    Flag = "KeywordDropdown",
    Callback = function(value251)
      if typeof(value251) == "table" then
        currentKeyword = value251[1]
      else
        currentKeyword = value251
      end
    end,
  })

  FunTab:CreateLabel("Animation", "party-popper")

  player = players.LocalPlayer
  humanoid = nil
  animator = nil
  animationTrack = nil

  animations = {
    Crouch = "rbxassetid://6980229055",
    FireFlail = "rbxassetid://11227676639",
    Flail = "rbxassetid://7047322890",
    Typing = "rbxassetid://7004578012",
  }

  currentAnimation = "Crouch"
  animEnabled = false

  function setupCharacter(p132)
    humanoid = p132:WaitForChild("Humanoid")
    animator = humanoid:FindFirstChildOfClass("Animator")

    if not animator then
      animator = Instance.new("Animator")
      animator.Parent = humanoid
    end
  end

  if player.Character then
    setupCharacter(player.Character)
  end

  player.CharacterAdded:Connect(setupCharacter)

  runService.Heartbeat:Connect(function()
    if animEnabled and humanoid and animator then
      if not animationTrack or not animationTrack.IsPlaying then
        local animation = Instance.new("Animation")
        animation.AnimationId = animations[currentAnimation]

        animationTrack = animator:LoadAnimation(animation)
        animationTrack:Play()
      end
    elseif animationTrack then
      animationTrack:Stop()
      animationTrack = nil
    end
  end)

  FunTab:CreateToggle({
    Name = 'Play Animation\t <font face="GothamBlack" color="rgb(0,255,0)">ANIM</font>',
    CurrentValue = false,
    Flag = "AnimToggle",
    Callback = function(value252) animEnabled = value252 end,
  })

  FunTab:CreateDropdown({
    Name = "Select Animation",
    Options = { "Crouch", "FireFlail", "Flail", "Typing" },
    CurrentOption = "Crouch",
    Flag = "AnimDropdown",
    Callback = function(value253)
      if typeof(value253) == "table" then
        currentAnimation = value253[1]
      else
        currentAnimation = value253
      end

      if animationTrack then
        animationTrack:Stop()
        animationTrack = nil
      end
    end,
  })

  FunTab:CreateLabel("Wings", "bird")

  WingsSpeed = 2.5
  WingsAngle = 35
  AutoRegrab = false
  PalletAmount = 12
  WingDistance = 23
  v69 = {}
  v70 = {}
  spawnCooldown = false
  v71 = {}
  offsets = { CFrame.new(-WingDistance / 2, 0, 1), CFrame.new(WingDistance / 2, 0, 1) }

  function getCurrentSpawnFolder()
    if inPlot.Value then
      local v411 = GetOwnedPlot()

      if not v411 then
        return nil
      else
        local plotItems5 = workspace:FindFirstChild("PlotItems")

        if plotItems5 then
          return (plotItems5:FindFirstChild("Plot" .. v411))
        end

        return nil
      end
    else
      local findFirstChild28 = workspace:FindFirstChild(v1.Name .. "SpawnedInToys")

      if not findFirstChild28 then
        findFirstChild28 = workspace:WaitForChild(v1.Name .. "SpawnedInToys", 15)
      end

      return findFirstChild28
    end
  end

  function watchFolder(p133)
    if not p133 or v71[p133] then
      return
    else
      local getChildren3 = p133.GetChildren
      v71[p133] = true

      for index84, wingPallet in ipairs(getChildren3(p133)) do
        if wingPallet and wingPallet.Name == "PalletLightBrown" then
          task.wait(0.2)
          wingPallet.Name = "WingPallet"
          forceNetworkOwnership(wingPallet)
          setupAntiGrab(wingPallet)
        end
      end

      p133.ChildAdded:Connect(function(child15) end)
      return
    end
  end

  FunTab:CreateToggle({
    Name = 'Enable Wings    <font face="GothamBlack" color="rgb(15,255,130)">FLY</font>   <font face="GothamBlack" color="rgb(255,255,255)">WING</font>',
    CurrentValue = false,
    Callback = function(value254) end,
  })

  FunTab:CreateSlider({
    Name = 'Pallet Amount    <font face="GothamBlack" color="rgb(255,255,0)">SIZE</font>',
    Range = { 2, 20 },
    Increment = 2,
    CurrentValue = PalletAmount,
    Callback = function(value255) end,
  })

  FunTab:CreateToggle({
    Name = 'Auto Regrab   <font face="GothamBlack" color="rgb(255, 150, 51)">ANTIS</font>',
    CurrentValue = false,
    Callback = function(value256) AutoRegrab = value256 end,
  })

  FunTab:CreateSlider({
    Name = 'Wings Speed     <font face="GothamBlack" color="rgb(255,80,0)">VELOCITY</font>',
    Range = { 1, 10 },
    Increment = 0.1,
    CurrentValue = WingsSpeed,
    Callback = function(value257) WingsSpeed = value257 end,
  })

  FunTab:CreateSlider({
    Name = 'Wings Angle   <font face="GothamBlack" color="rgb(0,200,255)">TILT</font>',
    Range = { 10, 60 },
    Increment = 1,
    CurrentValue = WingsAngle,
    Callback = function(value258) WingsAngle = value258 end,
  })

  function CP()
    local part = Instance.new("Part")
    part.Anchored = true
    part.CanCollide = false
    part.Transparency = 1
    part.Size = Vector3.new(1, 1, 1)
    part.Parent = workspace

    return part
  end

  function rebuildWings()
    for index85, value259 in ipairs(v69) do
      if value259 and value259.Handle then
        value259.Handle:Destroy()
      end

      if value259 and value259.Segments then
        for index86, value260 in ipairs(value259.Segments) do
          if value260 then
            value260:Destroy()
          end
        end
      end
    end

    v69 = {}
    local v412 = PalletAmount / 2

    for i26 = 1, 2 do
      local v413 = {}

      for i27 = 1, v412 do
        table.insert(v413, CP())
      end

      v69[i26] = { Handle = CP(), Segments = v413 }
    end
  end

  function countAllWingPallets()
    local count8 = 0

    for index87, value261 in ipairs((getAllPalletFolders())) do
      for index88, value262 in ipairs(value261:GetChildren()) do
        if value262
          and (value262.Name == "WingPallet"
            or value262:IsA("Model") and value262.Name == "WingPallet") then
          count8 = count8 + 1
        end
      end
    end

    return count8
  end

  function cleanupALL()
    for index89, value263 in ipairs((getAllPalletFolders())) do
      v3514 = #value263:GetChildren() - -1

      for i28 = #value263:GetChildren(), 1, -1 do
        local v414 = value263:GetChildren()[i28]

        if v414 and v414.Name == "WingPallet" then
          pcall(function() DeleteToyRE:FireServer(v414) end)
          v70[v414] = nil
        end
      end
    end
  end

  function cleanupExcess()
    local count9 = 0

    for index90, value264 in ipairs((getAllPalletFolders())) do
      for index91, value265 in ipairs(value264:GetChildren()) do
        local v415 = value265

        if v415 and v415.Name == "WingPallet" then
          count9 = count9 + 1

          if count9 > PalletAmount then
            pcall(function() DeleteToyRE:FireServer(v415) end)
            v70[v415] = nil
          end
        end
      end
    end
  end

  function CBM(p134)
    local wingGyro = p134:FindFirstChild("WingGyro") or Instance.new("BodyGyro")
    local wingPos = p134:FindFirstChild("WingPos") or Instance.new("BodyPosition")
    wingGyro.Name = "WingGyro"
    wingPos.Name = "WingPos"

    wingGyro.P = 15000
    wingGyro.D = 200
    wingGyro.MaxTorque = Vector3.new(1, 1, 1) * 10000000000

    wingPos.P = 15000
    wingPos.D = 200
    wingPos.MaxForce = Vector3.new(1, 1, 1) * 10000000000

    wingGyro.Parent = p134
    wingPos.Parent = p134
    return wingGyro, wingPos
  end

  function forceNetworkOwnership(p135)
    if v70[p135] then
      return
    end

    v70[p135] = true

    task.spawn(function()
      local waitForChild12 = p135:WaitForChild("SoundPart", 3) or p135.PrimaryPart
        or p135:FindFirstChildOfClass("BasePart")

      if not waitForChild12 then
        return
      end

      for index92, value266 in ipairs(p135:GetDescendants()) do
        if value266:IsA("BasePart") then
          value266.CanCollide = false
        end
      end

      for i29 = 1, 5 do
        SetNetworkOwner:FireServer(waitForChild12, waitForChild12.CFrame)
        task.wait(0.1)
      end
    end)
  end

  function setupAntiGrab(p136)
    local v416 = tick()

    task.spawn(function()
      local waitForChild13 = p136:WaitForChild("SoundPart", 3) or p136.PrimaryPart
        or p136:FindFirstChildOfClass("BasePart")

      if not waitForChild13 then
        return
      end

      task.wait(1.5)

      while p136.Parent do
        local partOwner7 = waitForChild13:FindFirstChild("PartOwner")

        if AutoRegrab and tick() - v416 > 2
          and (partOwner7 and partOwner7.Value ~= v1.Name or not partOwner7) then
          local character77 = v1.Character
          local v417 = character77 and character77:FindFirstChild("HumanoidRootPart")

          if v417 and v417.Parent then
            local cframe29 = v417.CFrame
            v417.CFrame = waitForChild13.CFrame * CFrame.new(0, 5, 0)

            for i30 = 1, 8 do
              SetNetworkOwner:FireServer(waitForChild13, waitForChild13.CFrame)
            end

            task.wait(0.05)
            v417.CFrame = cframe29
          end
        end

        task.wait(0.01)
      end
    end)
  end

  function spawnPalletsSingle(p137)
    if not canSpawn() or true then
      return
    elseif not getCurrentSpawnFolder() then
      return
    else
      local lookVector4 = workspace.CurrentCamera.CFrame.LookVector
      local v418 = p137.Position + lookVector4 * -3

      SpawnToyRF:InvokeServer(
        "PalletLightBrown", CFrame.new(v418, v418 + lookVector4), Vector3.new(0, 90, 0)
      )

      return
    end
  end

  function spawnPallets(p138)
    if not canSpawn() or spawnCooldown or true then
      return
    elseif not getCurrentSpawnFolder() then
      return
    else
      local v419 = PalletAmount - countAllWingPallets()

      if v419 <= 0 then
        return
      end

      spawnCooldown = true

      for i31 = 1, v419 do
        local v420 = i31

        task.spawn(function()
          task.wait((v420 - 1) * 0.05)
          local lookVector5 = workspace.CurrentCamera.CFrame.LookVector
          local v421 = p138.Position + lookVector5 * -1

          SpawnToyRF:InvokeServer(
            "PalletLightBrown", CFrame.new(v421, v421 + lookVector5), Vector3.new(0, 90, 0)
          )
        end)
      end

      task.delay(1, function() spawnCooldown = false end)
      return
    end
  end

  task.spawn(function()
    while true do
      task.wait(2)
    end
  end)

  rebuildWings()

  for index93, value267 in ipairs((getAllPalletFolders())) do
    watchFolder(value267)
  end

  runService.RenderStepped:Connect(function(delta5) end)
  FunTab:CreateLabel("Control", "footprints")

  _G.ControlEnabled = false
  _G.ControllingCreature = nil

  function lookAt(p139, p140)
    local unit2 = (p140 - p139).Unit
    local cross3 = unit2:Cross(Vector3.new(0, 1, 0))
    local cross4 = cross3:Cross(unit2)
    return CFrame.fromMatrix(p139, cross3, cross4)
  end

  function CheckOwnership(p141)
    local partOwner8 = p141:FindFirstChild("PartOwner")
    return partOwner8 and partOwner8.Value == v1.Name
  end

  function SNOWshipOnce(p142)
    if not p142 or not v1.Character then
      return false
    elseif CheckOwnership(p142) then
      return true
    else
      local v422 = v1.Character:FindFirstChild("HumanoidRootPart")

      if v422 and (v422.Position - p142.Position).Magnitude <= 60 then
        SetNetworkOwner:FireServer(p142, lookAt(v422.Position, p142.Position))
        return true
      end

      return false
    end
  end

  function handleDestroyGrabLine(p143)
    local v423 = p143:FindFirstChild("HumanoidRootPart")

    if v423 then
      DestroyGrabLine:FireServer(v423)
    end
  end

  function getTarget()
    local character78 = v1.Character

    if not character78 then
      return nil
    else
      local currentCamera9 = Workspace.CurrentCamera

      local raycastParams2 = RaycastParams.new()
      raycastParams2.FilterDescendantsInstances = { character78 }
      raycastParams2.FilterType = Enum.RaycastFilterType.Exclude

      local raycast2 = Workspace:Raycast(
        currentCamera9.CFrame.Position, currentCamera9.CFrame.LookVector * 150, raycastParams2
      )

      if raycast2 then
        local model3 = raycast2.Instance:FindFirstAncestorOfClass("Model")

        if model3 and model3:FindFirstChildOfClass("Humanoid") and model3 ~= character78 then
          if model3.Parent.Name == "CreatureBlobman" then
            return nil
          end

          return model3
        end

        return nil
      end

      return nil
    end
  end

  v72 = {}

  function forceNoCollision(p144)
    for key59, value268 in pairs(p144:GetDescendants()) do
      local v424 = value268

      if v424:IsA("BasePart") then
        v424.CanCollide = false

        if not v72[v424] then
          v72[v424] = v424:GetPropertyChangedSignal("CanCollide"):Connect(function()
            if _G.ControllingCreature and _G.ControlEnabled then
              v424.CanCollide = false
            end
          end)
        end
      end
    end
  end

  function clearCollisionConnections()
    for key60, value269 in pairs(v72) do
      if value269 then
        value269:Disconnect()
      end
    end

    v72 = {}
  end

  function f25(p145)
    if p145.Parent.Name == "CreatureBlobman" then
      return
    end

    if _G.ControllingCreature then
      handleDestroyGrabLine(_G.ControllingCreature)
      _G.ControllingCreature = nil
      task.wait(0.1)
    end

    local v425 = p145:FindFirstChildOfClass("Humanoid")
    local v426 = p145:FindFirstChild("HumanoidRootPart") or p145.PrimaryPart
    local head16 = p145:FindFirstChild("Head")
    local character79 = v1.Character
    local v427 = character79:FindFirstChildOfClass("Humanoid")
    local v428 = character79:FindFirstChild("HumanoidRootPart")

    if not v426 or not v425 or not v428 then
      return
    end

    _G.ControllingCreature = p145
    v427.AutoRotate = false

    local instance3 = Instance.new("BodyVelocity", v426)
    instance3.MaxForce = Vector3.new(math.huge, 0, math.huge)
    instance3.Velocity = Vector3.new(0, 0, 0)

    local instance4 = Instance.new("BodyGyro", v426)
    instance4.MaxTorque = Vector3.new(0, math.huge, 0)
    instance4.P = 40000
    instance4.D = 500

    v425:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
    v425.Sit = false

    forceNoCollision(character79)

    local connect38 = character79.DescendantAdded:Connect(function(descendant9)
      if descendant9:IsA("BasePart") and _G.ControllingCreature then
        descendant9.CanCollide = false

        v72[descendant9] = descendant9:GetPropertyChangedSignal("CanCollide"):Connect(function()
          if _G.ControllingCreature and _G.ControlEnabled then
            descendant9.CanCollide = false
          end
        end)
      end
    end)

    task.spawn(function()
      while _G.ControllingCreature == p145 and p145.Parent and _G.ControlEnabled
        and character79.Parent do
        local currentCamera10 = Workspace.CurrentCamera
        local moveDirection = v427.MoveDirection

        v428.CFrame = v426.CFrame * CFrame.new(0, -10, 0)
        v428.Velocity = Vector3.new(0, 0, 0)

        forceNoCollision(character79)
        SNOWshipOnce(head16 or v426)

        if moveDirection.Magnitude > 0 then
          v425:ChangeState(Enum.HumanoidStateType.Running)
          v425:Move(moveDirection, false)
          instance3.Velocity = Vector3.new(moveDirection.X, 0, moveDirection.Z) * 26
        else
          instance3.Velocity = Vector3.new(0, 0, 0)
        end

        instance4.CFrame = CFrame.lookAt(v426.Position, v426.Position + Vector3.new(
          currentCamera10.CFrame.LookVector.X, 0, currentCamera10.CFrame.LookVector.Z
        ))

        currentCamera10.CameraSubject = v425
        runService.Heartbeat:Wait()
      end

      handleDestroyGrabLine(p145)

      if connect38 then
        connect38:Disconnect()
      end

      clearCollisionConnections()

      if instance3 then
        instance3:Destroy()
      end

      if instance4 then
        instance4:Destroy()
      end

      v427.AutoRotate = true
      Workspace.CurrentCamera.CameraSubject = v427

      v428.Anchored = true
      v428.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
      v428.CFrame = v426.CFrame * CFrame.new(10, 4, 0)

      task.wait(0.2)
      v428.Anchored = false

      for key61, value270 in pairs(character79:GetDescendants()) do
        if value270:IsA("BasePart") and value270.Name ~= "CamPart"
          and value270.Name ~= "HumanoidRootPart" then
          value270.CanCollide = true
        end
      end
    end)
  end

  FunTab:CreateToggle({
    Name = 'Control <b>X</b>  <font face="GothamBlack" color="rgb(0,67,47)">PLAYER</font>  &  <font face="GothamBlack" color="rgb(255,34,0)">NPC</font>\t <font face="GothamBlack" color="rgb(39,245,218)">PREMIUM</font>',
    CurrentValue = false,
    Flag = "PossessToggle",
    Callback = function(value271)
      _G.ControlEnabled = value271

      if value271 then
        rayfield:Notify({ Title = "Info", Content = "Look at target + Press 'X'", Duration = 3 })
      else
        if _G.ControllingCreature then
          handleDestroyGrabLine(_G.ControllingCreature)
        end

        _G.ControllingCreature = nil
        clearCollisionConnections()
      end
    end,
  })

  FunTab:CreateParagraph({
    Title = '<font face="GothamBlack" color="rgb(150,60,0)">CONTROL SYSTEM</font>',
    Content = "Press <b>X</b> and <b>AIM YOUR MOUSE</b> at a target. It can be a <b>SNOWMAN</b>, a <b>KID</b>, a <b>TURKEY</b>, or a <b>PLAYER</b>.",
  })

  userInputService.InputBegan:Connect(function(input6, p146)
    if p146 or not _G.ControlEnabled then
      return
    end

    if input6.KeyCode == Enum.KeyCode.X then
      if _G.ControllingCreature then
        handleDestroyGrabLine(_G.ControllingCreature)
        _G.ControllingCreature = nil
        clearCollisionConnections()
      else
        local v429 = getTarget()

        if v429 then
          f25(v429)
        else
          rayfield:Notify({
            Title = "Error",
            Content = "No target found or blocked.",
            Duration = 2,
          })
        end
      end
    end
  end)

  userInputService.JumpRequest:Connect(function()
    if _G.ControllingCreature then
      local v430 = _G.ControllingCreature:FindFirstChildOfClass("Humanoid")

      if v430 then
        v430.Jump = true
      end
    end
  end)

  FunTab:CreateLabel("Sparkles", "wand-sparkles")
  v73 = false
  v74 = false
  v75 = 4
  v76 = nil
  v77 = "Heart"
  v78 = 1.5
  v79 = {}
  v80 = {}
  v81 = false
  v82 = 0
  v83 = 0
  v84 = {}
  v85 = false
  v86 = {}

  PlayerDropdown = FunTab:CreateDropdown({
    Name = 'Target Player   <font face="GothamBlack" color="rgb(0,255,255)">SELECT</font>',
    Options = {},
    CurrentOption = {},
    MultipleOptions = false,
    Flag = "PlayerDropdown",
    Callback = function(value272)
      if not value272 or not value272[1] or value272[1] == "None" then
        v76 = nil
        return
      end

      username = value272[1]:match("@([%w_]+)")

      if username then
        v76 = username

        if v73 then
          SE_rebuildHearts()
        end
      end
    end,
  })

  FunTab:CreateToggle({
    Name = 'Enable Sparkle Shape   <font face="GothamBlack" color="rgb(240,184,111)">SPARKLER</font>   <font face="GothamBlack" color="rgb(50,20,147)">SHAPE</font>',
    CurrentValue = false,
    Flag = "SparkleHeartToggle",
    Callback = function(value273)
      if value273 and not v76 then
        rayfield:Notify({
          Title = "Error",
          Content = "Please select a target player first!",
          Duration = 3,
          Image = "x",
        })
      end

      v73 = value273

      if value273 then
        SE_rebuildHearts()

        for index94, value274 in ipairs((getAllPalletFolders())) do
          SE_watchFolder(value274)
        end
      else
        SE_cleanupALL()
      end
    end,
  })

  FunTab:CreateSlider({
    Name = 'Sparkler Amount   <font face="GothamBlack" color="rgb(255,215,0)">1-5</font>',
    Range = { 1, 5 },
    Increment = 1,
    CurrentValue = 5,
    Flag = "SparklerAmount",
    Callback = function(value275)
      old = v75
      v75 = value275

      if value275 < old then
        SE_cleanupExcess()
      end

      SE_rebuildHearts()
    end,
  })

  v75 = 5

  FunTab:CreateDropdown({
    Name = 'Shape   <font face="GothamBlack" color="rgb(130,50,0)">PATTERN</font>',
    Options = { "Heart", "Dick", "L", "MiddleFinger", "nazi cross", "Square", "Triangle" },
    CurrentOption = { "Heart" },
    Flag = "ShapeDropdown",
    Callback = function(value276)
      v77 = value276[1]
      v85 = false
      generateShapePath()
    end,
  })

  FunTab:CreateToggle({
    Name = 'Auto Regrab   <font face="GothamBlack" color="rgb(240,140,0)">PROTECT</font>',
    CurrentValue = false,
    Flag = "AutoRegrab",
    Callback = function(value277) v74 = value277 end,
  })

  FunTab:CreateSlider({
    Name = 'Size   <font face="GothamBlack" color="rgb(0,255,127)">Scale</font>\t <font face="GothamBlack" color="rgb(39,245,218)">PREMIUM</font>',
    Range = { 0, 10 },
    Increment = 1,
    CurrentValue = 2,
    Flag = "SizeScale",
    Callback = function(value278)
      v78 = value278
      v85 = false
      generateShapePath()
    end,
  })

  FunTab:CreateSlider({
    Name = 'Height   <font face="GothamBlack" color="rgb(255,0,30)">OFFSET</font>',
    Range = { 0, 100 },
    Increment = 5,
    CurrentValue = 20,
    Flag = "HeightOffset",
    Callback = function(value279) SE_HeightOffset = value279 end,
  })

  SE_RotationOffset = 0

  FunTab:CreateSlider({
    Name = 'Rotation <font face="GothamBlack" color="rgb(0,255,0)">TURN</font>',
    Range = { -360, 360 },
    Increment = 5,
    CurrentValue = 0,
    Flag = "RotationOffset",
    Callback = function(value280) SE_RotationOffset = value280 end,
  })

  function optionText(p147)
    local name3 = p147.Name
    return string.format("👤 @%s (%s)", name3, p147.DisplayName or "")
  end

  function refreshDropdown()
    local v431 = { optionText(v1) }

    for index95, value281 in ipairs(players:GetPlayers()) do
      if value281 ~= v1 then
        table.insert(v431, optionText(value281))
      end
    end

    PlayerDropdown:Refresh(v431)
  end

  players.PlayerAdded:Connect(function()
    task.wait(0.5)
    refreshDropdown()
  end)

  players.PlayerRemoving:Connect(function()
    task.wait(0.5)
    refreshDropdown()
  end)

  refreshDropdown()

  function generateShapePath()
    local v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443

    if v85 then
      return
    else
      v84 = {}
      local v444 = v78

      if v77 == "Heart" then
        for i32 = 0, 3000 do
          local v445 = i32 / 3000 * math.pi * 2
          local v446 = math.sin(v445)
          local v447 = math.cos(v445)
          local v448 = math.cos(2 * v445)
          local v449 = math.cos(3 * v445)
          local v450 = math.cos(4 * v445)

          v84[i32] = Vector3.new(
            16 * v446 * v446 * v446 * v444, (13 * v447 - 5 * v448 - 2 * v449 - v450) * v444 + 2,
            0
          )
        end
      elseif v77 == "Dick" then
        for i33 = 0, 3000 do
          local v451 = i33 / 3000 * math.pi * 2

          if v451 < math.pi then
            v442 = 4 * v444 * math.cos(v451)
            v443 = 8 * v444 + 16 * v444 * math.sin(v451)
          elseif v451 < math.pi * 1.5 then
            local v452 = (v451 - math.pi) * 4
            v442 = -5 * v444 + 4 * v444 * math.cos(v452)
            v443 = -2 * v444 + 4 * v444 * math.sin(v452)
          else
            local v453 = (v451 - math.pi * 1.5) * 4 + math.pi
            v442 = 5 * v444 + 4 * v444 * math.cos(v453)
            v443 = -2 * v444 + 4 * v444 * math.sin(v453)
          end

          v84[i33] = Vector3.new(v442, v443 + 2, 0)
        end
      elseif v77 == "L" then
        local v454 = 8 * v444
        local v455 = 10 * v444

        for i34 = 0, 3000 do
          local v456 = math.abs(math.sin(i34 / 3000 * 2 * math.pi))

          if v456 < 0.6 then
            v440 = v456 / 0.6 * v454 * 2
            v441 = 0
          else
            v440 = v454 * 2
            v441 = (v456 - 0.6) / 0.4 * v455 * 2
          end

          v84[i34] = Vector3.new(v440 - v454, v441 + 2, 0)
        end
      elseif v77 == "MiddleFinger" then
        local v457 = 22 * v444
        local v458 = 35 * v444
        local v459 = 14 * v444

        for i35 = 0, 3000 do
          local v460 = i35 / 3000

          if v460 < 0.05 then
            v438 = -v457 * 0.5
            v439 = v460 / 0.05 * v459
          elseif v460 < 0.15 then
            local v461 = (v460 - 0.05) / 0.1 * math.pi
            v438 = -v457 * 0.4 + math.cos(math.pi - v461) * v457 * 0.1
            v439 = v459 + math.sin(v461) * v459 * 0.2
          elseif v460 < 0.25 then
            local v462 = (v460 - 0.15) / 0.1 * math.pi
            v438 = -v457 * 0.2 + math.cos(math.pi - v462) * v457 * 0.1
            v439 = v459 + math.sin(v462) * v459 * 0.2
          elseif v460 < 0.55 then
            local v463 = (v460 - 0.25) / 0.3

            if v463 < 0.3 then
              v439 = v459 + v463 / 0.3 * (v458 - v459)
              v438 = -v457 * 0.1
            elseif v463 < 0.7 then
              local v464 = (v463 - 0.3) / 0.4 * math.pi
              v438 = math.cos(math.pi - v464) * v457 * 0.1
              v439 = v458 + math.sin(v464) * v457 * 0.1
            else
              v438 = v457 * 0.1
              v439 = v458 - (v463 - 0.7) / 0.3 * (v458 - v459)
            end
          elseif v460 < 0.65 then
            local v465 = (v460 - 0.55) / 0.1 * math.pi
            v438 = v457 * 0.2 + math.cos(math.pi - v465) * v457 * 0.1
            v439 = v459 + math.sin(v465) * v459 * 0.2
          elseif v460 < 0.75 then
            local v466 = (v460 - 0.65) / 0.1 * math.pi
            v438 = v457 * 0.4 + math.cos(math.pi - v466) * v457 * 0.1
            v439 = v459 + math.sin(v466) * v459 * 0.2
          elseif v460 < 0.8 then
            v438 = v457 * 0.5
            v439 = v459 - (v460 - 0.75) / 0.05 * v459
          else
            v438 = v457 * 0.5 - (v460 - 0.8) / 0.2 * v457
            v439 = 0
          end

          v84[i35] = Vector3.new(v438, v439, 0)
        end
      elseif v77 == "Square" then
        local v467 = 14 * v444

        for i36 = 0, 3000 do
          local v468 = i36 / 3000 * math.pi * 2
          local v469 = math.floor(v468 / (math.pi * 0.5)) % 4
          local v470 = v468 % (math.pi * 0.5) / (math.pi * 0.5) * 2 - 1

          if v469 == 0 then
            v436 = v470 * v467
            v437 = v467
          elseif v469 == 1 then
            v436 = v467
            v437 = v470 * -v467
          elseif v469 == 2 then
            v437 = -v467
            v436 = v470 * -v467
          else
            v436 = -v467
            v437 = v470 * v467
          end

          v84[i36] = Vector3.new(v436, v437 + 2, 0)
        end
      elseif v77 == "nazi cross" then
        local v471 = 12 * v444
        local v472 = v471 * 0.4
        local v473 = {}

        for i37 = 0, 3000 do
          local v474 = i37 / 3000 * math.pi * 2
          local v475 = math.floor(v474 / (math.pi * 2 / 12)) % 12
          local v476 = v474 % (math.pi * 2 / 12) / (math.pi * 2 / 12)

          if v475 == 0 then
            v435 = 0
            v434 = v476 * v471 * 0.5
          elseif v475 == 1 then
            v434 = v471 * 0.5
            v435 = v476 * v472
          elseif v475 == 2 then
            v434 = v471 * 0.5 - v476 * v471 * 0.5
            v435 = 0
          elseif v475 == 3 then
            v434 = 0
            v435 = -v476 * v471 * 0.5
          elseif v475 == 4 then
            v434 = v476 * v472
            v435 = -v471 * 0.5
          elseif v475 == 5 then
            v434 = 0
            v435 = -v471 * 0.5 + v476 * v471 * 0.5
          elseif v475 == 6 then
            v434 = -v476 * v471 * 0.5
            v435 = 0
          elseif v475 == 7 then
            v435 = -v476 * v472
            v434 = -v471 * 0.5
          elseif v475 == 8 then
            v434 = -v471 * 0.5 + v476 * v471 * 0.5
            v435 = 0
          elseif v475 == 9 then
            v434 = 0
            v435 = v476 * v471 * 0.5
          elseif v475 == 10 then
            v434 = -v476 * v472
            v435 = v471 * 0.5
          else
            v434 = 0
            v435 = v471 * 0.5 - v476 * v471 * 0.5
          end

          v473[#v473 + 1] = Vector3.new(v434, v435, 0)
        end

        local v477 = { 0 }
        local total2 = 0

        for i38 = 2, #v473 do
          total2 = total2 + (v473[i38] - v473[i38 - 1]).Magnitude
          v477[i38] = total2
        end

        local v478 = 2

        for i39 = 0, 3000 do
          local v479 = i39 / 3000 * total2

          while v478 < #v477 and v477[v478] < v479 do
            v478 = v478 + 1
          end

          local v480 = v477[v478 - 1]
          local v481 = v477[v478]
          local v482 = v481 == v480 and 0 or (v479 - v480) / (v481 - v480)
          v84[i39] = v473[v478 - 1]:Lerp(v473[v478], v482) + Vector3.new(0, 2, 0)
        end
      elseif v77 == "Triangle" then
        for i40 = 0, 3000 do
          local v483 = i40 / 3000 * math.pi * 2
          local v484 = math.floor(v483 / (math.pi * 2 / 3)) % 3

          if v484 == 0 then
            v433 = 10 * v444
            v432 = 0
          elseif v484 == 1 then
            v432 = 8 * v444
            v433 = -6 * v444
          else
            v432 = -8 * v444
            v433 = -6 * v444
          end

          local v485 = v444 * math.sin(v483 * 0.5)
          v84[i40] = Vector3.new(v432 + v485 * 0.3, v433 + v485 * 0.3 + 2, 0)
        end
      end

      v85 = true
      return
    end
  end

  function getSmoothedShapePos(p148)
    if #v84 == 0 then
      return Vector3.new(0, 0, 0)
    else
      local v486 = p148 * #v84
      local v487 = math.floor(v486) % #v84
      return v84[v487]:Lerp(v84[(v487 + 1) % #v84], v486 - math.floor(v486))
    end
  end

  function SE_CP()
    local part2 = Instance.new("Part")
    part2.Anchored = true
    part2.CanCollide = false
    part2.Transparency = 1
    part2.Size = Vector3.new(1, 1, 1)
    part2.Parent = workspace

    return part2
  end

  function SE_rebuildHearts()
    for index96, value282 in ipairs(v79) do
      if value282.Handle then
        value282.Handle:Destroy()
      end
    end

    v79 = {}

    for i41 = 1, v75 do
      v79[i41] = { Handle = SE_CP() }
    end
  end

  function SE_countAllHeartSparkler()
    local count10 = 0

    for index97, value283 in ipairs((getAllPalletFolders())) do
      for index98, value284 in ipairs(value283:GetChildren()) do
        if value284.Name == "HeartSparkler" then
          count10 = count10 + 1
        end
      end
    end

    return count10
  end

  function SE_cleanupALL()
    for index99, value285 in ipairs((getAllPalletFolders())) do
      for index100, value286 in ipairs(value285:GetChildren()) do
        local v488 = value286

        if v488.Name == "HeartSparkler" then
          pcall(function() DeleteToyRE:FireServer(v488) end)
          v80[v488] = nil
        end
      end
    end
  end

  function SE_cleanupExcess()
    local count11 = 0

    for index101, value287 in ipairs((getAllPalletFolders())) do
      for index102, value288 in ipairs(value287:GetChildren()) do
        local v489 = value288

        if v489.Name == "HeartSparkler" then
          count11 = count11 + 1

          if count11 > v75 then
            pcall(function() DeleteToyRE:FireServer(v489) end)
            v80[v489] = nil
          end
        end
      end
    end
  end

  function SE_CBM(p149)
    local heartGyro = p149:FindFirstChild("HeartGyro") or Instance.new("BodyGyro")
    local heartPos = p149:FindFirstChild("HeartPos") or Instance.new("BodyPosition")
    heartGyro.Name = "HeartGyro"
    heartPos.Name = "HeartPos"

    heartGyro.P = 15000
    heartGyro.D = 200

    heartPos.P = 15000
    heartPos.D = 200

    heartGyro.MaxTorque = Vector3.new(1, 1, 1) * 10000000000
    heartPos.MaxForce = Vector3.new(1, 1, 1) * 10000000000
    heartGyro.Parent = p149
    heartPos.Parent = p149
    return heartGyro, heartPos
  end

  function SE_forceNetworkOwnership(p150)
    if v80[p150] then
      return
    end

    v80[p150] = true

    task.spawn(function()
      local base = p150:FindFirstChild("Base") or p150:WaitForChild("SoundPart", 3)
        or p150.PrimaryPart or p150:FindFirstChildOfClass("BasePart")

      if not base then
        return
      end

      for index103, value289 in ipairs(p150:GetDescendants()) do
        if value289:IsA("BasePart") then
          value289.CanCollide = false
        end
      end

      for i42 = 1, 5 do
        SetNetworkOwner:FireServer(base, base.CFrame)
        task.wait(0.1)
      end
    end)
  end

  function SE_setupAntiGrab(p151)
    local v490 = tick()

    task.spawn(function()
      local base2 = p151:FindFirstChild("Base") or p151:WaitForChild("SoundPart", 3)
        or p151.PrimaryPart or p151:FindFirstChildOfClass("BasePart")

      if not base2 then
        return
      end

      task.wait(1.5)

      while p151.Parent do
        local partOwner9 = base2:FindFirstChild("PartOwner")

        if v74 and tick() - v490 > 2
          and (partOwner9 and partOwner9.Value ~= v1.Name or not partOwner9) then
          local character80 = v1.Character
          local v491 = character80 and character80:FindFirstChild("HumanoidRootPart")

          if v491 and v491.Parent then
            local cframe30 = v491.CFrame
            v491.CFrame = base2.CFrame * CFrame.new(0, 5, 0)

            for i43 = 1, 8 do
              SetNetworkOwner:FireServer(base2, base2.CFrame)
            end

            task.wait(0.05)
            v491.CFrame = cframe30
          end
        end

        task.wait(0.01)
      end
    end)
  end

  function SE_watchFolder(p152)
    if not p152 or v86[p152] then
      return
    else
      local getChildren4 = p152.GetChildren
      v86[p152] = true

      for index104, heartSparkler in ipairs(getChildren4(p152)) do
        if heartSparkler.Name == "FireworkSparkler" then
          task.wait(0.2)
          heartSparkler.Name = "HeartSparkler"
          SE_forceNetworkOwnership(heartSparkler)
          SE_setupAntiGrab(heartSparkler)
        end
      end

      p152.ChildAdded:Connect(function(heartSparkler2)
        if not v73 then
          return
        end

        if heartSparkler2.Name == "FireworkSparkler" then
          task.wait(0.2)
          heartSparkler2.Name = "HeartSparkler"
          SE_forceNetworkOwnership(heartSparkler2)
          SE_setupAntiGrab(heartSparkler2)
        end
      end)

      return
    end
  end

  function SE_spawnSparkler(p153)
    if not canSpawn() or v81 or not v73 then
      return
    elseif not getCurrentSpawnFolder() then
      return
    else
      local v492 = v75 - SE_countAllHeartSparkler()

      if v492 <= 0 then
        return
      end

      v81 = true

      for i44 = 1, v492 do
        local v493 = i44

        task.spawn(function()
          task.wait((v493 - 1) * 0.05)
          local lookVector6 = workspace.CurrentCamera.CFrame.LookVector
          local v494 = p153.Position + lookVector6 * -1

          SpawnToyRF:InvokeServer(
            "FireworkSparkler", CFrame.new(v494, v494 + lookVector6), Vector3.new(0, 90, 0)
          )
        end)
      end

      task.delay(1, function() v81 = false end)
      return
    end
  end

  task.spawn(function()
    while true do
      task.wait(2)

      if v73 then
        for index105, value290 in ipairs((getAllPalletFolders())) do
          SE_watchFolder(value290)
        end
      end
    end
  end)

  SE_rebuildHearts()

  for index106, value291 in ipairs((getAllPalletFolders())) do
    SE_watchFolder(value291)
  end

  generateShapePath()

  runService.Heartbeat:Connect(function(delta6)
    if not v73 then
      return
    elseif not v76 then
      return
    else
      local character81 = v1.Character
      local v495 = character81 and character81:FindFirstChild("HumanoidRootPart")

      if not v495 then
        return
      else
        v82 = v82 + delta6 * 3
        v83 = v83 + delta6

        if v83 >= 0.5 then
          v83 = 0
          SE_spawnSparkler(v495)
        end

        local v496 = {}

        for index107, value292 in ipairs((getAllPalletFolders())) do
          for index108, value293 in ipairs(value292:GetChildren()) do
            if value293.Name == "HeartSparkler" then
              table.insert(v496, value293)
            end
          end
        end

        local findFirstChild29 = players:FindFirstChild(v76)

        if findFirstChild29 and findFirstChild29.Character then
          local v497 = findFirstChild29.Character:FindFirstChild("HumanoidRootPart")

          if v497 then
            local v498 = v497.Position + Vector3.new(0, SE_HeightOffset, 0)

            for index109, value294 in ipairs(v79) do
              local v499 = getSmoothedShapePos((v82 + (index109 - 1) * (math.pi * 2 / v75))
                  % (math.pi * 2)
                / (math.pi * 2))

              local v500 = v498 + CFrame.Angles(0, math.rad(SE_RotationOffset), 0) * v499
                + Vector3.new(6, 0, 0)

              value294.Handle.CFrame = CFrame.new(v500)
              local v501 = v496[index109]

              if v501 then
                local base3 = v501:FindFirstChild("Base") or v501.PrimaryPart
                  or v501:FindFirstChild("SoundPart") or v501:FindFirstChildOfClass("BasePart")

                if base3 then
                  local v502, v503 = SE_CBM(base3)
                  v503.Position = v500
                  v502.CFrame = CFrame.new(v500)
                  base3.CanCollide = false
                end
              end
            end
          end
        end

        return
      end
    end
  end)

  FunTab:CreateLabel("PlotBreaker", "tower-control")
  autoBreakActive = false
  lastBreakTick = 0

  FunTab:CreateToggle({
    Name = 'Auto   <font face="GothamBlack" color="rgb(120,34,0)">BREAK</font>    <font face="GothamBlack" color="rgb(255,255,0)">PLOT</font>',
    CurrentValue = false,
    Callback = function(value295)
      autoBreakActive = value295

      if value295 then
        task.spawn(function()
          while autoBreakActive do
            if tick() - lastBreakTick < 0.6 then
              runService.Heartbeat:Wait()
            else
              lastBreakTick = tick()
              local character82 = v1.Character
              local v504 = character82 and character82:FindFirstChild("HumanoidRootPart")

              if not v504 then
              else
                local cframe31 = v504.CFrame
                local foodHamburger = BackPack:FindFirstChild("FoodHamburger")

                if not foodHamburger then
                  task.spawn(function()
                    SpawnToyRF:InvokeServer(
                      "FoodHamburger", v504.CFrame * CFrame.new(4, 4, 15), Vector3.zero
                    )
                  end)

                  task.wait(0.25)
                  foodHamburger = BackPack:FindFirstChild("FoodHamburger")
                end

                if foodHamburger and foodHamburger:FindFirstChild("HoldPart") then
                  local holdItemRemoteFunction3 = foodHamburger.HoldPart:FindFirstChild("HoldItemRemoteFunction")

                  if holdItemRemoteFunction3 then
                    task.spawn(function()
                      pcall(function()
                        holdItemRemoteFunction3:InvokeServer(foodHamburger, character82)
                      end)
                    end)
                  end
                end

                local findFirstChild30 = workspace:FindFirstChild(v1.Name .. "SpawnedInToys")
                local count12 = 0

                if findFirstChild30 then
                  for index110, value296 in ipairs(findFirstChild30:GetChildren()) do
                    if value296.Name == "Boombox" then
                      count12 = count12 + 1
                    end
                  end
                end

                v504.CFrame = CFrame.new(-541, -7, 68)
                task.wait(0.1)

                if foodHamburger then
                  DestroyToyRF:FireServer(foodHamburger)
                end

                v504.CFrame = cframe31
                task.wait(0.6)
                local count13 = 0

                if findFirstChild30 then
                  for index111, value297 in ipairs(findFirstChild30:GetChildren()) do
                    if value297.Name == "Boombox" then
                      count13 = count13 + 1
                    end
                  end
                end

                if count13 >= count12 and count13 > 0 then
                  autoBreakActive = false

                  rayfield:Notify({
                    Title = "PlotBreaker",
                    Content = "Server broken",
                    Duration = 4,
                    Image = "check",
                  })

                  return
                end

                task.spawn(function()
                  SpawnToyRF:InvokeServer("Boombox", CFrame.new(-541, -2, 68), Vector3.zero)
                end)

                task.wait(0.8)
              end
            end
          end
        end)
      end

      lastBreakTick = 0
    end,
  })

  FunTab:CreateButton({
    Name = 'Desync   <font face="GothamBlack" color="rgb(0,120,0)">TRACTOR</font>',
    Callback = function()
      local v505 = players.LocalPlayer
      local character83 = v505.Character or v505.CharacterAdded:Wait()
      local v506 = character83:WaitForChild("HumanoidRootPart")
      local v507 = character83:WaitForChild("Humanoid")

      task.spawn(function()
        replicatedStorage.MenuToys.SpawnToyRemoteFunction:InvokeServer(
          "TractorGreen", v506.CFrame, Vector3.new(0, 97.69, 0)
        )
      end)

      local waitForChild14 = workspace:FindFirstChild(v1.Name .. "SpawnedInToys", 10):WaitForChild(
        "TractorGreen", 5
      )

      waitForChild14:WaitForChild("VehicleSeat"):Sit(v507)

      replicatedStorage.MenuToys.DestroyToy:FireServer(waitForChild14)
    end,
  })

  FunTab:CreateLabel("Hold", "ham")

  auraActive = false
  heldObjects = {}
  failedObjects = {}

  foodModels = {
    "FoodDonut", "FoodBread", "FoodBanana", "FoodBroccoli", "FoodCakePink", "FoodCoconut",
    "FoodDippyEgg", "FoodFrenchFries", "FoodHamburger", "FoodHotdog", "FoodMayonnaise",
    "FoodMeatStick", "FoodMushroomPoison", "FoodPizzaCheese", "FoodPizzaPepperoni",
    "FoodSodaCan", "PoopPile", "PoopPileSparkle", "CupMugWhite", "CupMugBrown",
  }

  cachedHoldables = {}
  cacheCount = 0

  function isFoodModel(p154)
    for index112, value298 in ipairs(foodModels) do
      if p154 == value298 then
        return true
      end
    end

    return false
  end

  function smartFindHoldables()
    local v508 = {}
    local count14 = 0

    for index113, value299 in ipairs(workspace:GetChildren()) do
      if count14 >= 50 then
        break
      end

      if value299:IsA("Model") and isFoodModel(value299.Name)
        and value299:FindFirstChild("HoldPart") then
        table.insert(v508, value299)
        count14 = count14 + 1
      end

      for index114, value300 in ipairs(value299:GetChildren()) do
        if count14 >= 50 then
          break
        end

        if value300:IsA("Model") and isFoodModel(value300.Name)
          and value300:FindFirstChild("HoldPart") then
          table.insert(v508, value300)
          count14 = count14 + 1
        end
      end
    end

    return v508
  end

  function f26(p155)
    if not p155 or not p155.Parent then
      return false
    end

    local holdItemRemoteFunction4, use

    if failedObjects[p155] and tick() - failedObjects[p155] < 5 then
      return false
    else
      local holdPart4 = p155:FindFirstChild("HoldPart")

      if not holdPart4 then
        return false
      end

      holdItemRemoteFunction4 = holdPart4:FindFirstChild("HoldItemRemoteFunction")

      if holdItemRemoteFunction4 then
        if not pcall(function() holdItemRemoteFunction4:InvokeServer(p155, v1.Character) end) then
          failedObjects[p155] = tick()
          return false
        else
          task.wait(0.03)
          local holdEvents = replicatedStorage:FindFirstChild("HoldEvents")

          if holdEvents then
            use = holdEvents:FindFirstChild("Use")

            if use then
              pcall(function() use:FireServer(p155) end)
            end
          end

          heldObjects[p155] = tick()
          failedObjects[p155] = nil
          return true
        end
      else
        return false
      end
    end
  end

  function dropToVoid(p156)
    local v509 = not p156 or not p156.Parent
    local cframe32, dropItemRemoteFunction3

    if v509 then
      heldObjects[p156] = nil
      return
    else
      local holdPart5 = p156:FindFirstChild("HoldPart")

      if not holdPart5 then
        heldObjects[p156] = nil
        return
      end

      cframe32 = CFrame.new(0, -500, 0)
      dropItemRemoteFunction3 = holdPart5:FindFirstChild("DropItemRemoteFunction")

      if dropItemRemoteFunction3 then
        pcall(function()
          dropItemRemoteFunction3:InvokeServer(p156, cframe32, Vector3.new(0, 97.69, 0))
        end)
      end

      heldObjects[p156] = nil
      return
    end
  end

  lastTick = 0
  lastCleanup = 0

  function auraLoop()
    while auraActive do
      local v510 = tick()

      if v510 - lastTick < 0.4 then
        runService.Heartbeat:Wait()
      else
        lastTick = v510

        if v510 - lastCleanup > 3 then
          for key62, value301 in pairs(heldObjects) do
            if not key62 or not key62.Parent then
              heldObjects[key62] = nil
            end
          end

          for key63, value302 in pairs(failedObjects) do
            if not key63 or not key63.Parent or v510 - value302 > 10 then
              failedObjects[key63] = nil
            end
          end

          lastCleanup = v510
        end

        local count15 = 0
        local count16 = 0

        for index115, value303 in ipairs((smartFindHoldables())) do
          if count15 >= 10 or count16 >= 20 then
            break
          end

          count16 = count16 + 1

          if value303.Parent and not heldObjects[value303] then
            if f26(value303) then
              count15 = count15 + 1
            end
          end
        end

        local count17 = 0

        for key64, value304 in pairs(heldObjects) do
          if count17 >= 5 then
            break
          end

          if key64.Parent and v510 - value304 >= 2.7 then
            dropToVoid(key64)
            count17 = count17 + 1
          elseif not key64.Parent then
            heldObjects[key64] = nil
          end
        end

        runService.Heartbeat:Wait()
      end
    end
  end

  FunTab:CreateToggle({
    Name = 'Eat all Food   <font face="GothamBlack" color="rgb(255,0,0)">FAST</font>    <font face="GothamBlack" color="rgb(0,0,255)">FOOD</font>    <font face="GothamBlack" color="rgb(39,245,218)">PREMIUM</font>',
    CurrentValue = false,
    Callback = function(value305)
      auraActive = value305

      if not value305 then
        heldObjects = {}
        failedObjects = {}
      else
        heldObjects = {}
        failedObjects = {}
        lastTick = 0
        lastCleanup = 0
        task.spawn(auraLoop)
      end
    end,
  })

  instrumentModels = {
    "InstrumentBrassBugle", "InstrumentBrassTrumpet", "InstrumentBrassVuvuzela",
    "InstrumentDrumBongos", "InstrumentDrumSnare", "InstrumentGuitarAcoustic",
    "InstrumentGuitarBanjo", "InstrumentGuitarLyre", "InstrumentGuitarUkulele",
    "InstrumentGuitarViolin", "InstrumentPianoKeyboard", "InstrumentPianoMelodica",
    "InstrumentVoiceMicrophone", "InstrumentWoodwindOcarina", "InstrumentWoodwindSaxophone",
  }

  instrumentAuraActive = false
  instrumentHeldObjects = {}
  instrumentFailedObjects = {}

  function isInstrumentModel(p157)
    for index116, value306 in ipairs(instrumentModels) do
      if p157 == value306 then
        return true
      end
    end

    return false
  end

  function smartFindInstruments()
    local v511 = {}
    local count18 = 0

    for index117, value307 in ipairs(workspace:GetChildren()) do
      if count18 >= 50 then
        break
      end

      if value307:IsA("Model") and isInstrumentModel(value307.Name)
        and value307:FindFirstChild("HoldPart") then
        table.insert(v511, value307)
        count18 = count18 + 1
      end

      for index118, value308 in ipairs(value307:GetChildren()) do
        if count18 >= 50 then
          break
        end

        if value308:IsA("Model") and isInstrumentModel(value308.Name)
          and value308:FindFirstChild("HoldPart") then
          table.insert(v511, value308)
          count18 = count18 + 1
        end
      end
    end

    return v511
  end

  function f27(p158)
    if not p158 or not p158.Parent then
      return false
    end

    local holdItemRemoteFunction5, use2

    if instrumentFailedObjects[p158] and tick() - instrumentFailedObjects[p158] < 5 then
      return false
    else
      local holdPart6 = p158:FindFirstChild("HoldPart")

      if not holdPart6 then
        return false
      end

      holdItemRemoteFunction5 = holdPart6:FindFirstChild("HoldItemRemoteFunction")

      if holdItemRemoteFunction5 then
        if not pcall(function() holdItemRemoteFunction5:InvokeServer(p158, v1.Character) end) then
          instrumentFailedObjects[p158] = tick()
          return false
        else
          task.wait(0.03)
          local holdEvents2 = replicatedStorage:FindFirstChild("HoldEvents")

          if holdEvents2 then
            use2 = holdEvents2:FindFirstChild("Use")

            if use2 then
              pcall(function() use2:FireServer(p158) end)
            end
          end

          instrumentHeldObjects[p158] = tick()
          instrumentFailedObjects[p158] = nil
          return true
        end
      else
        return false
      end
    end
  end

  function dropInstrumentToVoid(p159)
    local v512 = not p159 or not p159.Parent
    local cframe33, dropItemRemoteFunction4

    if v512 then
      instrumentHeldObjects[p159] = nil
      return
    else
      local holdPart7 = p159:FindFirstChild("HoldPart")

      if not holdPart7 then
        instrumentHeldObjects[p159] = nil
        return
      end

      cframe33 = CFrame.new(0, -500, 0)
      dropItemRemoteFunction4 = holdPart7:FindFirstChild("DropItemRemoteFunction")

      if dropItemRemoteFunction4 then
        pcall(function()
          dropItemRemoteFunction4:InvokeServer(p159, cframe33, Vector3.new(0, 97.69, 0))
        end)
      end

      instrumentHeldObjects[p159] = nil
      return
    end
  end

  instrumentLastTick = 0
  instrumentLastCleanup = 0

  function instrumentAuraLoop()
    while instrumentAuraActive do
      local v513 = tick()

      if v513 - instrumentLastTick < 0.4 then
        runService.Heartbeat:Wait()
      else
        instrumentLastTick = v513

        if v513 - instrumentLastCleanup > 3 then
          for key65, value309 in pairs(instrumentHeldObjects) do
            if not key65 or not key65.Parent then
              instrumentHeldObjects[key65] = nil
            end
          end

          for key66, value310 in pairs(instrumentFailedObjects) do
            if not key66 or not key66.Parent or v513 - value310 > 10 then
              instrumentFailedObjects[key66] = nil
            end
          end

          instrumentLastCleanup = v513
        end

        local count19 = 0
        local count20 = 0

        for index119, value311 in ipairs((smartFindInstruments())) do
          if count19 >= 10 or count20 >= 20 then
            break
          end

          count20 = count20 + 1

          if value311.Parent and not instrumentHeldObjects[value311] then
            if f27(value311) then
              count19 = count19 + 1
            end
          end
        end

        local count21 = 0

        for key67, value312 in pairs(instrumentHeldObjects) do
          if count21 >= 5 then
            break
          end

          if key67.Parent and v513 - value312 >= 2.7 then
            dropInstrumentToVoid(key67)
            count21 = count21 + 1
          elseif not key67.Parent then
            instrumentHeldObjects[key67] = nil
          end
        end

        runService.Heartbeat:Wait()
      end
    end
  end

  FunTab:CreateToggle({
    Name = 'Use all Instruments    <font face="GothamBlack" color="rgb(255,0,0)">FAST</font>    <font face="GothamBlack" color="rgb(0,255,0)">INSTRUMENT</font>  <font face="GothamBlack" color="rgb(39,245,218)">PREMIUM</font>',
    CurrentValue = false,
    Callback = function(value313)
      instrumentAuraActive = value313

      if not value313 then
        instrumentHeldObjects = {}
        instrumentFailedObjects = {}
      else
        instrumentHeldObjects = {}
        instrumentFailedObjects = {}
        instrumentLastTick = 0
        instrumentLastCleanup = 0
        task.spawn(instrumentAuraLoop)
      end
    end,
  })

  player = players.LocalPlayer
  activeForm = nil
  formEnabled = false
  copyMovementEnabled = false
  currentPreset = "Penis Head"
  scriptRagdollToy = nil
  ragdollMonitor = nil
  RAGDOLL_UNIQUE_ID = nil
  isRespawning = false
  formDistance = 10
  formOrientation = 0

  formPresets = {
    ["Penis Head"] = {
      Torso = { pos = Vector3.new(0, -10, 0), rot = CFrame.Angles(0, 0, 0) },
      ["Right Arm"] = { pos = Vector3.new(0, 3, 0), rot = CFrame.Angles(0, 0, math.rad(90)) },
      ["Left Arm"] = { pos = Vector3.new(0, 0, 0), rot = CFrame.Angles(0, 0, math.rad(-90)) },
      ["Right Leg"] = { pos = Vector3.new(1.75, 0, 0), rot = CFrame.Angles(0, 0, 0) },
      ["Left Leg"] = { pos = Vector3.new(-1, 0, 0), rot = CFrame.Angles(0, 0, 0) },
      Head = { pos = Vector3.new(0, 4, 0), rot = CFrame.Angles(0, math.rad(180), 0) },
    },
    ["L Shape"] = {
      Torso = { pos = Vector3.new(0, -10, 0), rot = CFrame.Angles(0, 0, 0) },
      ["Right Arm"] = { pos = Vector3.new(0, 3, 0), rot = CFrame.Angles(0, 0, math.rad(90)) },
      ["Left Arm"] = { pos = Vector3.new(0, 0, 0), rot = CFrame.Angles(0, 0, math.rad(-90)) },
      ["Right Leg"] = { pos = Vector3.new(0, -10, 0), rot = CFrame.Angles(0, 0, 0) },
      ["Left Leg"] = { pos = Vector3.new(-1, 0, 0), rot = CFrame.Angles(0, 0, 0) },
      Head = { pos = Vector3.new(0, -10, 0), rot = CFrame.Angles(0, 0, 0) },
    },
    ["Ice Cream"] = {
      Torso = { pos = Vector3.new(0, 0, 0), rot = CFrame.Angles(0, 0, 0) },
      ["Right Arm"] = { pos = Vector3.new(0, -1, 0), rot = CFrame.Angles(0, 0, math.rad(90)) },
      ["Left Arm"] = { pos = Vector3.new(0, -1, 0), rot = CFrame.Angles(0, 0, math.rad(90)) },
      ["Right Leg"] = { pos = Vector3.new(0, -1, 0), rot = CFrame.Angles(0, 0, math.rad(90)) },
      ["Left Leg"] = { pos = Vector3.new(0, -1, 0), rot = CFrame.Angles(0, 0, math.rad(90)) },
      Head = { pos = Vector3.new(0, 1.5, 0), rot = CFrame.Angles(0, 0, 0) },
    },
    Dog = {
      Torso = {
        pos = Vector3.new(0, -1, 0),
        rot = CFrame.Angles(math.rad(270), math.rad(0), math.rad(0)),
      },
      ["Right Arm"] = {
        pos = Vector3.new(-1, -2.5, 1),
        rot = CFrame.Angles(math.rad(180), math.rad(0), math.rad(90)),
      },
      ["Left Arm"] = {
        pos = Vector3.new(1, -2.5, 1),
        rot = CFrame.Angles(math.rad(180), math.rad(0), math.rad(90)),
      },
      ["Right Leg"] = {
        pos = Vector3.new(1, -2, -1),
        rot = CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)),
      },
      ["Left Leg"] = {
        pos = Vector3.new(-1, -2, -1),
        rot = CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)),
      },
      Head = {
        pos = Vector3.new(0, 0, -1),
        rot = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),
      },
    },
    Square = {
      Torso = {
        pos = Vector3.new(0, 0, 0),
        rot = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),
      },
      ["Right Arm"] = {
        pos = Vector3.new(0.5, 0, 0),
        rot = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),
      },
      ["Left Arm"] = {
        pos = Vector3.new(0.5, 0, 0),
        rot = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),
      },
      ["Right Leg"] = {
        pos = Vector3.new(0.5, 0, 0),
        rot = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),
      },
      ["Left Leg"] = {
        pos = Vector3.new(0.5, 0, 0),
        rot = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),
      },
      Head = {
        pos = Vector3.new(0, 0, 0),
        rot = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),
      },
    },
  }

  function toy_spawn(p160, p161, p162)
    local v514 = typeof(p162) == "string"
        and string.lower(p162) == "headup"
        and CFrame.new(p161.Position + Vector3.new(0, 1, 0), p161.Position)
          * CFrame.Angles(math.pi, 0, 0)
      or p161

    task.spawn(function()
      SpawnToyRF:InvokeServer(p160, v514, typeof(p162) == "Vector3" and p162 or Vector3.zero)
    end)

    local v515 = tick()
    local v516

    local connect39 = BackPack.ChildAdded:Connect(function(child16)
      if child16.Name == p160 then
        v516 = child16
      end
    end)

    if not v516 then
      tick()
    end

    local v517

    repeat
      task.wait()
      v517 = v516 or tick() - v515 > 5
    until v517

    connect39:Disconnect()
    return v516
  end

  function UpdateRagdollPalletMenu()
    task.spawn(function()
      local playerGui2 = player:FindFirstChild("PlayerGui")

      if not playerGui2 then
        return
      else
        local menuGui2 = playerGui2:FindFirstChild("MenuGui")

        if not menuGui2 or not scriptRagdollToy
          or not scriptRagdollToy:FindFirstChild("ScriptRagdollID") then
          return
        else
          local contents2 = menuGui2.Menu.TabContents.ToyDestroy.Contents
          local value314 = scriptRagdollToy.ScriptRagdollID.Value
          local v518 = {}

          for index120, value315 in ipairs(BackPack:GetChildren()) do
            if value315.Name == "RagdollPallet" or value315.Name == "PalletLightBrown" then
              table.insert(v518, value315)
            end
          end

          local v519 = 0

          for index121, value316 in ipairs(v518) do
            if value316:FindFirstChild("ScriptRagdollID")
              and value316.ScriptRagdollID.Value == value314 then
              v519 = index121
              break
            end
          end

          if v519 == 0 then
            return
          else
            local count22 = 0

            for index122, value317 in ipairs(contents2:GetChildren()) do
              if value317.Name == "PalletLightBrown"
                and value317:FindFirstChild("ViewItemButton") then
                count22 = count22 + 1

                if count22 == v519 then
                  local viewItemButton2 = value317.ViewItemButton
                  viewItemButton2.Text = "Ragdoll Controller (DO NOT DELETE)"
                  viewItemButton2.TextScaled = true

                  if viewItemButton2:FindFirstChild("LowResImage") then
                    viewItemButton2.LowResImage.Image = ""
                  end

                  return
                end
              end
            end

            return
          end
        end
      end
    end)
  end

  function f28()
    if not formEnabled or scriptRagdollToy or isRespawning then
      return
    else
      isRespawning = true
      local generateGUID2 = HttpService:GenerateGUID(false)

      for i45 = 1, 5 do
        local head17 = player.Character and player.Character:FindFirstChild("Head")

        if not head17 then
          isRespawning = false
          return
        else
          local ragdollPallet = toy_spawn("PalletLightBrown", head17, "headup")

          if ragdollPallet then
            local scriptRagdollID2 = Instance.new("StringValue")
            scriptRagdollID2.Name = "ScriptRagdollID"
            scriptRagdollID2.Value = generateGUID2
            scriptRagdollID2.Parent = ragdollPallet

            ragdollPallet.Name = "RagdollPallet"
            local waitForChild15 = ragdollPallet:WaitForChild("SoundPart", 5)

            if waitForChild15 then
              task.spawn(function()
                while formEnabled and waitForChild15 and waitForChild15.Parent do
                  if not waitForChild15:FindFirstChild("PartOwner")
                    or waitForChild15.PartOwner.Value ~= player.Name then
                    SetNetworkOwner:FireServer(waitForChild15, waitForChild15.CFrame)
                  end

                  task.wait(0.05)
                end
              end)

              local instance5 = Instance.new("BodyVelocity", waitForChild15)
              instance5.MaxForce = Vector3.new(0, math.huge, 0)
              instance5.Velocity = Vector3.new(0, 1000, 0)

              for key68, value318 in pairs(ragdollPallet:GetChildren()) do
                if value318:IsA("BasePart") then
                  value318.Transparency = 1
                  value318.Size = Vector3.new(0.5, 0.5, 0.5)
                  value318.CanCollide = false
                end
              end

              if waitForChild15:FindFirstChild("Wood") then
                waitForChild15.Wood:Destroy()
              end

              scriptRagdollToy = ragdollPallet
              RAGDOLL_UNIQUE_ID = generateGUID2
              isRespawning = false
              UpdateRagdollPalletMenu()
              return
            end
          end

          task.wait(0.3)
        end
      end

      isRespawning = false
      return
    end
  end

  function DestroyRagdoll()
    if scriptRagdollToy and scriptRagdollToy.Parent then
      pcall(function() DestroyToyRF:FireServer(scriptRagdollToy) end)
      task.wait(0.1)
    end

    scriptRagdollToy = nil
  end

  function StartRagdollMonitor()
    if ragdollMonitor then
      task.cancel(ragdollMonitor)
    end

    ragdollMonitor = task.spawn(function()
      while formEnabled do
        task.wait(1)

        if not scriptRagdollToy or not scriptRagdollToy.Parent
          or not scriptRagdollToy:FindFirstChild("ScriptRagdollID")
          or scriptRagdollToy.ScriptRagdollID.Value ~= RAGDOLL_UNIQUE_ID then
          scriptRagdollToy = nil
          f28()
        end
      end
    end)
  end

  BackPack.ChildAdded:Connect(function(child17)
    if not formEnabled then
      return
    end

    task.wait(0.05)

    if child17:FindFirstChild("ScriptRagdollID")
      and child17.ScriptRagdollID.Value == RAGDOLL_UNIQUE_ID and child17.Parent then
      scriptRagdollToy = child17
      UpdateRagdollPalletMenu()
    end
  end)

  BackPack.ChildRemoved:Connect(function(child18)
    if formEnabled and child18 == scriptRagdollToy then
      scriptRagdollToy = nil
      task.wait(0.5)

      if formEnabled and not scriptRagdollToy then
        f28()
      end
    end
  end)

  function GetGrabbedCharacter()
    local grabParts10 = workspace:FindFirstChild("GrabParts")

    if not grabParts10 then
      return nil
    else
      local grabPart11 = grabParts10:FindFirstChild("GrabPart")

      if not grabPart11 then
        return nil
      else
        local weldConstraint10 = grabPart11:FindFirstChildOfClass("WeldConstraint")
          or grabPart11:FindFirstChild("Weld")

        return weldConstraint10 and weldConstraint10.Part1
          and weldConstraint10.Part1:FindFirstAncestorOfClass("Model")
      end
    end
  end

  function RestoreCollisions(p163)
    if not p163 then
      return
    end

    if p163.torso and p163.torso.Parent then
      p163.torso.CanCollide = true
    end

    if p163.head and p163.head.Parent then
      p163.head.CanCollide = true
    end

    if p163.hrp and p163.hrp.Parent then
      p163.hrp.CanCollide = true
    end

    for index123, value319 in ipairs(p163.limbs) do
      if value319.part and value319.part.Parent then
        value319.part.CanCollide = true
      end
    end
  end

  function ApplyNoclipToForm(p164)
    if p164.torso and p164.torso.Parent then
      p164.torso.CanCollide = false
    end

    if p164.head and p164.head.Parent then
      p164.head.CanCollide = false
    end

    if p164.hrp and p164.hrp.Parent then
      p164.hrp.CanCollide = false
    end

    for index124, value320 in ipairs(p164.limbs) do
      if value320.part and value320.part.Parent then
        value320.part.CanCollide = false
      end
    end
  end

  function GetCharacterParts(p165)
    if not p165 then
      return nil
    else
      local torso6 = p165:FindFirstChild("Torso")

      if not torso6 then
        return nil
      else
        local v520 = {}

        for index125, value321 in ipairs({ "Left Arm", "Right Arm", "Left Leg", "Right Leg" }) do
          local findFirstChild31 = p165:FindFirstChild(value321)

          if findFirstChild31 then
            local ragdollLimbPart = findFirstChild31:FindFirstChild("RagdollLimbPart")

            if ragdollLimbPart and ragdollLimbPart:IsA("BasePart") then
              table.insert(v520, { part = ragdollLimbPart, name = value321 })
            end
          end
        end

        return {
          torso = torso6,
          head = p165:FindFirstChild("Head"),
          hrp = p165:FindFirstChild("HumanoidRootPart"),
          limbs = v520,
        }
      end
    end
  end

  function f29()
    local character84 = player.Character

    if not character84 then
      return
    else
      local torso7 = character84:FindFirstChild("Torso")
        or character84:FindFirstChild("UpperTorso")
        or character84:FindFirstChild("HumanoidRootPart")

      if not torso7 then
        return
      else
        local parts = activeForm.parts

        if parts.hrp and parts.hrp.Parent then
          parts.hrp.CFrame = CFrame.new(0, 0, 0)
          parts.hrp.AssemblyLinearVelocity = Vector3.zero
          parts.hrp.AssemblyAngularVelocity = Vector3.zero
        end

        local unit3 = Vector3.new(torso7.CFrame.LookVector.X, 0, torso7.CFrame.LookVector.Z).Unit

        local v521 = Vector3.new(torso7.Position.X, torso7.Position.Y, torso7.Position.Z)
          + unit3 * formDistance

        local v522 = CFrame.new(v521, v521 + unit3)
          * CFrame.Angles(0, math.rad(formOrientation), 0)

        ApplyNoclipToForm(parts)

        parts.torso.AssemblyLinearVelocity = Vector3.zero
        parts.torso.AssemblyAngularVelocity = Vector3.zero
        parts.torso.Anchored = false
        parts.torso.CFrame = v522

        if parts.head and parts.head.Parent then
          local head18 = character84:FindFirstChild("Head")

          if head18 then
            parts.head.AssemblyLinearVelocity = Vector3.zero
            parts.head.AssemblyAngularVelocity = Vector3.zero
            parts.head.Anchored = false

            local cframe34 = torso7.CFrame
            parts.head.CFrame = v522 * cframe34:ToObjectSpace(head18.CFrame)
          end
        end

        limbMap = {
          ["Left Arm"] = character84:FindFirstChild("Left Arm")
            or character84:FindFirstChild("LeftUpperArm"),
          ["Right Arm"] = character84:FindFirstChild("Right Arm")
            or character84:FindFirstChild("RightUpperArm"),
          ["Left Leg"] = character84:FindFirstChild("Left Leg")
            or character84:FindFirstChild("LeftUpperLeg"),
          ["Right Leg"] = character84:FindFirstChild("Right Leg")
            or character84:FindFirstChild("RightUpperLeg"),
        }

        for index126, value322 in ipairs(parts.limbs) do
          local v523 = limbMap[value322.name]

          if value322.part and value322.part.Parent and v523 then
            value322.part.AssemblyLinearVelocity = Vector3.zero
            value322.part.AssemblyAngularVelocity = Vector3.zero
            value322.part.Anchored = false

            local toObjectSpace = torso7.CFrame:ToObjectSpace(v523.CFrame)

            value322.part.CFrame = v522 * toObjectSpace
              * CFrame.Angles(0, math.rad(90), math.rad(270)) * CFrame.new(0.4, 0, 0)
          end
        end

        return
      end
    end
  end

  function ApplyForm()
    if not activeForm or not formEnabled then
      return
    else
      local head19 = activeForm.char:FindFirstChild("Head")

      if not head19 or not head19:FindFirstChild("PartOwner") then
        return
      elseif copyMovementEnabled then
        f29()
        return
      else
        local parts2 = activeForm.parts
        local character85 = player.Character

        if not character85 then
          return
        else
          local torso8 = character85:FindFirstChild("Torso")
            or character85:FindFirstChild("HumanoidRootPart")

          if not torso8 or not parts2.torso or not parts2.torso.Parent then
            return
          else
            if parts2.hrp and parts2.hrp.Parent then
              parts2.hrp.CFrame = CFrame.new(0, 0, 0)
              parts2.hrp.AssemblyLinearVelocity = Vector3.zero
              parts2.hrp.AssemblyAngularVelocity = Vector3.zero
            end

            local unit4 = Vector3.new(torso8.CFrame.LookVector.X, 0, torso8.CFrame.LookVector.Z).Unit

            local v524 = Vector3.new(torso8.Position.X, torso8.Position.Y, torso8.Position.Z)
              + unit4 * formDistance

            local v525 = CFrame.new(v524, v524 + unit4)
              * CFrame.Angles(0, math.rad(formOrientation), 0)

            local v526 = formPresets[currentPreset]
            ApplyNoclipToForm(parts2)

            parts2.torso.AssemblyLinearVelocity = Vector3.zero
            parts2.torso.AssemblyAngularVelocity = Vector3.zero
            parts2.torso.Anchored = false
            parts2.torso.CFrame = v525 * CFrame.new(v526.Torso.pos) * v526.Torso.rot

            if parts2.head and parts2.head.Parent then
              parts2.head.AssemblyLinearVelocity = Vector3.zero
              parts2.head.AssemblyAngularVelocity = Vector3.zero
              parts2.head.Anchored = false
              parts2.head.CFrame = v525 * CFrame.new(v526.Head.pos) * v526.Head.rot
            end

            for index127, value323 in ipairs(parts2.limbs) do
              if value323.part and value323.part.Parent then
                value323.part.AssemblyLinearVelocity = Vector3.zero
                value323.part.AssemblyAngularVelocity = Vector3.zero
                value323.part.Anchored = false

                local v527 = v526[value323.name]

                if v527 then
                  value323.part.CFrame = v525 * CFrame.new(v527.pos) * v527.rot
                end
              end
            end

            return
          end
        end
      end
    end
  end

  function SetupForm(p166)
    if not formEnabled then
      return
    end

    local v528 = p166:FindFirstChildOfClass("Humanoid")

    if not v528 then
      return
    else
      task.wait(0.3)
      local v529 = GetCharacterParts(p166)

      if not v529 then
        return
      end

      activeForm = {
        char = p166,
        parts = v529,
        isGrabbed = true,
        connection = nil,
      }

      task.spawn(function()
        while activeForm and activeForm.char == p166 and p166.Parent and formEnabled do
          local head20 = p166:FindFirstChild("Head")

          if not (head20 and head20:FindFirstChild("PartOwner")
            and head20.PartOwner.Value == player.Name) then
            local v530 = player.Character
              and player.Character:FindFirstChild("HumanoidRootPart")

            if head20 and v530 and (v530.Position - head20.Position).Magnitude <= 60 then
              SetNetworkOwner:FireServer(head20, head20.CFrame)
            end
          end

          local ragdolled4 = v528:FindFirstChild("Ragdolled")

          if ragdolled4 and not ragdolled4.Value and scriptRagdollToy then
            local soundPart = scriptRagdollToy:FindFirstChild("SoundPart")

            if soundPart and head20 then
              firetouchinterest(soundPart, head20, 0)
              task.wait()
              firetouchinterest(soundPart, head20, 1)
            end
          end

          task.wait(0.1)
        end
      end)

      activeForm.connection = runService.Heartbeat:Connect(function()
        if not formEnabled then
          return
        end

        activeForm.isGrabbed = GetGrabbedCharacter() == p166
        ApplyForm()
      end)

      return
    end
  end

  function StopCurrentForm()
    if activeForm then
      if activeForm.parts then
        RestoreCollisions(activeForm.parts)
      end

      if activeForm.connection then
        activeForm.connection:Disconnect()
      end
    end

    activeForm = nil
  end

  FormTab:CreateLabel("Form Grab", "Hand")

  FormTab:CreateToggle({
    Name = 'Enable Form Grab   <font face="GothamBlack" color="rgb(240,184,111)">PALLET</font>   <font face="GothamBlack" color="rgb(0,140,255)">RAGDOLL</font>',
    CurrentValue = false,
    Flag = "FormGrabToggle",
    Callback = function(value324)
      formEnabled = value324

      if value324 then
        f28()
        StartRagdollMonitor()
      else
        StopCurrentForm()
        DestroyRagdoll()

        if ragdollMonitor then
          task.cancel(ragdollMonitor)
          ragdollMonitor = nil
        end
      end
    end,
  })

  FormTab:CreateSlider({
    Name = 'Distance   <font face="GothamBlack" color="rgb(0,184,111)">STUDS</font>',
    Range = { 0, 20 },
    Increment = 1,
    CurrentValue = 10,
    Flag = "FormDistance",
    Callback = function(value325) formDistance = value325 end,
  })

  FormTab:CreateSlider({
    Name = 'Orientation\t  <font face="GothamBlack" color="rgb(0,255,15)">ROTATION</font>',
    Range = { 0, 360 },
    Increment = 5,
    CurrentValue = 0,
    Flag = "FormOrientation",
    Callback = function(value326) formOrientation = value326 end,
  })

  FormTab:CreateDropdown({
    Name = 'Form   <font face="GothamBlack" color="rgb(0,59,255)">DROPTOWN</font>',
    Options = { "Penis Head", "L Shape", "Ice Cream", "Dog", "Square" },
    CurrentOption = { "Penis Head" },
    Flag = "FormPreset",
    Callback = function(value327)
      if copyMovementEnabled then
        return
      end

      currentPreset = value327[1]
    end,
  })

  FormTab:CreateToggle({
    Name = 'Copy Movement\t<font face="GothamBlack" color="rgb(240,140,0)">TUFF</font>\t  <font face="GothamBlack" color="rgb(39,245,218)">PREMIUM</font>',
    CurrentValue = false,
    Flag = "CopyMovement",
    Callback = function(value328) copyMovementEnabled = value328 end,
  })

  FormTab:CreateButton({
    Name = 'Drop Current Target\t  <font face="GothamBlack" color="rgb(255,5,8)">STOP</font>',
    Callback = function() StopCurrentForm() end,
  })

  FormTab:CreateParagraph({
    Title = "NOTE",
    Content = 'DO   <font face="GothamBlack" color="rgb(255,0,0)">NOT ENABLE</font>   Form Grab in House.  Form Grab Work on <font face="GothamBlack" color="rgb(255,0,0)">NPC</font> and <font face="GothamBlack" color="rgb(255,0,0)">PLAYER</font>',
  })

  coroutine.wrap(function()
    while task.wait(0.1) do
      if formEnabled then
        pcall(function()
          local v531 = GetGrabbedCharacter()

          if v531 and not activeForm then
            SetupForm(v531)
          end

          if activeForm and (not activeForm.char or not activeForm.char.Parent) then
            rayfield:Notify({
              Title = "ERROR",
              Image = "x",
              Content = "Target Lost",
              Duration = 3,
            })

            StopCurrentForm()
            return
          end

          if activeForm and activeForm.char then
            local character86 = player.Character
            local head21 = activeForm.char:FindFirstChild("Head")

            if character86 and head21 then
              local v532 = character86:FindFirstChild("HumanoidRootPart")

              if v532 then
                if (v532.Position - head21.Position).Magnitude > 30 then
                  rayfield:Notify({
                    Title = "ERROR",
                    Image = "x",
                    Content = "Target exceeded 30 studs - Drop",
                    Duration = 3,
                  })

                  StopCurrentForm()
                  return
                end
              end
            end
          end

          if activeForm and activeForm.char then
            local getPlayerFromCharacter2 = players:GetPlayerFromCharacter(activeForm.char)

            if getPlayerFromCharacter2 then
              local findFirstChild32 = workspace:FindFirstChild("Players")
                and workspace.Players:FindFirstChild(getPlayerFromCharacter2.Name)

              if findFirstChild32 then
                local inPlot2 = findFirstChild32:FindFirstChild("InPlot")

                if inPlot2 and inPlot2.Value == true then
                  rayfield:Notify({
                    Title = "ERROR",
                    Image = "x",
                    Content = "Target in plot - Drop",
                    Duration = 3,
                  })

                  StopCurrentForm()
                  return
                end
              end

              local inPlot3 = getPlayerFromCharacter2:FindFirstChild("InPlot")

              if inPlot3 and inPlot3.Value == true then
                rayfield:Notify({
                  Title = "ERROR",
                  Image = "x",
                  Content = "Target in plot - Drop",
                  Duration = 3,
                })

                StopCurrentForm()
                return
              end

              return
            end

            return
          end
        end)
      end
    end
  end)()

  player.CharacterAdded:Connect(function()
    if activeForm and activeForm.connection then
      activeForm.connection:Disconnect()
    end

    activeForm = nil
  end)

  notify("Bloody [PREMIUM]", "V2")
  return
end
