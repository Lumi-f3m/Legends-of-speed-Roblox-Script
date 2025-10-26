if game.PlaceId == 3101667897 then

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🌸 Lumi CB Legends of Speed 🌸",
   Icon = 0,
   LoadingTitle = "LumiCB Interface Suite",
   LoadingSubtitle = "by Lumi_f3m",
   ShowText = "LumiCB",
   Theme = "Bloom", -- Looks cute :3

   ToggleUIKeybind = "L", -- Keybind to toggle the UI

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   -- Save configs
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true 
   },

   -- Not used
   KeySystem = false,
   KeySettings = {
      Title = "Lumi KeySystem",
      Subtitle = "Key is 12345 for now",
      Note = "your welcome for the key for now",
      FileName = "Key",
      SaveKey = false,
      GrabKeyFromSite = false,
      Key = {"12345"}
   }
})

-- <----- MainTabs ----->

local MainTab = Window:CreateTab("Main", nil)
local MainSection = MainTab:CreateSection("Main")

local Button = MainTab:CreateButton({
   Name = "Made by Lumi_f3m",
   Callback = function()
      print("made by lumi")
   end,
})


Rayfield:Notify({
   Title = "Script Loaded",
   Content = "Legends Of Speed Script Executed Successfuly!",
   Duration = 4,
   Image = nil,
})

-- <---- AutoFarm Tabs ---->

local FarmTab = Window:CreateTab("Autofarm", nil)
local FarmSection = FarmTab:CreateSection("AutoFarm")

local Toggle = FarmTab:CreateToggle({
   Name = "Auto Orbs (fast)",
   CurrentValue = false,
   Flag = "Auto Farm Orbs", 
   Callback = function(Value)
   
    _G.auto = true

   while _G.auto do
      game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Red Orb","City")
      game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Blue Orb","City")
      game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Orange Orb","City")
      game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Yellow Orb","City")
      game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Red Orb","Snow City")
      game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Orange Orb","Snow City")
      game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Blue Orb","Snow City")
      game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Yellow Orb","Snow City")
      game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
      game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Orange Orb","Magma City")
      game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Blue Orb","Magma City")
      game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Yellow Orb","Magma City")
      wait(0.1)
   end

   end,
})

local Toggle = FarmTab:CreateToggle({
   Name = "Auto Gems",
   CurrentValue = false,
   Flag = "Auto Farm Gems", 
   Callback = function(Value)
    
    _G.auto = true

   while _G.auto do
      game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Gem","City")
      game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Gem","Snow City")
      game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Gem","Snow City")
      game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Gem","Magma City")
      game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Gem","Magma City")
      wait(0.1)
   end

   end,
})

local Toggle = FarmTab:CreateToggle({
   Name = "Hoop Farm",
   CurrentValue = false,
   Flag = "Auto Farm Hoops",
   Callback = function(Value)
   _G.auto = true

   while _G.auto do
      
      local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
      for i, v in pairs(workspace.Hoops:GetChildren()) do
         if v:IsA("MeshPart") then
            rootPart.CFrame = v.CFrame
         end
         wait(0.5)
      end

      wait(5)
   end

   end,
})

local Toggle = FarmTab:CreateToggle({
   Name = "Collect Chests (not working)",
   CurrentValue = false,
   Flag = "Auto Collect Chests",
   Callback = function(Value)
   _G.auto = true

   while _G.auto do
      
      local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
      for i, v in pairs(workspace.rewardChests:GetChildren()) do
         if v:IsA("MeshPart") then
            rootPart.CFrame = v.CFrame
         end
         wait(0.5)
      end

      wait(5)
   end

   end,
})

-- <--------- Movement Tab ------------>
local MoveTab = Window:CreateTab("Movement", nil)
local MainSection = MoveTab:CreateSection("Movement")

local Button = MoveTab:CreateButton({
   Name = "Infinite Jump",
   Callback = function()

   local UserInputService = game:GetService("UserInputService")
   local player = game:GetService("Players").LocalPlayer
   local humanoid = nil

   UserInputService.JumpRequest:Connect(function()
      if not humanoid then
         local character = player.Character
         if character then
            humanoid = character:FindFirstChildWhichIsA("Humanoid")
         end
      end
      if humanoid then
         humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
      end
   end)


   end,
})

-- <--------- Teleport Tab ------------>
local TPTab = Window:CreateTab("Teleport", nil)
local TPSection = TPTab:CreateSection("Teleport")

local Button = TPTab:CreateButton({
   Name = "(Teleports for quick travel, use portals instead)",
   Callback = function()
      print("idk what to put here")
   end,
})

local Button = TPTab:CreateButton({
   Name = "Spawm",
   Callback = function()
      local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
      rootPart.CFrame = CFrame.new(-580.163757, 4.1662488, 411.795532, 0.0396209247, 1.77671922e-08, -0.999214768, -3.96375448e-08, 1, 1.62094445e-08, 0.999214768, 3.89641883e-08, 0.0396209247)
   end,
})

local Button = TPTab:CreateButton({
   Name = "Mysterious Cave",
   Callback = function()
      local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
      rootPart.CFrame = CFrame.new(-9683.04883, 59.3462372, 3136.62695, -1, -4.43683383e-08, 6.61603002e-14, -4.43683383e-08, 1, -2.96781053e-08, -6.48435299e-14, -2.96781053e-08, -1)
   end,
})

local Button = TPTab:CreateButton({
   Name = "Snow City",
   Callback = function()
      local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
      rootPart.CFrame = CFrame.new(-866.386841, 4.21624899, 2165.70654, -0.499959469, 1.85075582e-08, -0.866048813, -9.23141563e-09, 1, 2.66992934e-08, 0.866048813, 2.13434213e-08, -0.499959469)
   end,
})

local Button = TPTab:CreateButton({
   Name = "Innferno Cave",
   Callback = function()
      local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
      rootPart.CFrame = CFrame.new(-11041.3574, 59.3462372, 4111.8252, -1, -2.0898506e-08, -8.21203355e-15, -2.0898506e-08, 1, 5.68671155e-09, 8.09318975e-15, 5.68671155e-09, -1)
   end,
})

local Button = TPTab:CreateButton({
   Name = "Magma City",
   Callback = function()
      local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
      rootPart.CFrame = CFrame.new(1616.82703, 4.26625681, 4330.65234, -9.86679288e-15, -3.55710164e-08, -1, -8.37409715e-08, 1, -3.55710164e-08, 1, 8.37409715e-08, -1.28455443e-14)
   end,
})

end-- Metatable hook to override Mouse.Target and Mouse.Hit for silent aim
local oldMt = getrawmetatable(game)
setreadonly(oldMt, false)
local oldIndex = oldMt.__index

oldMt.__index = newcclosure(function(self, key)
	if self == mouse and key == "Target" and getgenv().SilentTarget then
		return getgenv().SilentTarget
	end
	if self == mouse and key == "Hit" and getgenv().SilentTarget then
		return getgenv().SilentTarget.CFrame
	end
	return oldIndex(self, key)
end)

setreadonly(oldMt, true)

-- === Configuration ===
_G.autoTP = true
local weaponName = "RayGun"
local teleportInterval = 1 -- seconds between each loop
local behindDistance = 6
local safeCFrame = CFrame.new(114.199997, 337.000031, 572.099976)

-- === Helper Functions ===

local function getCharacter()
	local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
	local root = char:WaitForChild("HumanoidRootPart", 5)
	return char, root
end

local function hasRayGun()
	local char = LocalPlayer.Character
	return (LocalPlayer.Backpack:FindFirstChild(weaponName) ~= nil)
		or (char and char:FindFirstChild(weaponName) ~= nil)
end

local function equipRayGun()
	local backpackGun = LocalPlayer.Backpack:FindFirstChild(weaponName)
	if backpackGun then
		backpackGun.Parent = LocalPlayer.Character
		warn("[RayGun] Equipped automatically.")
	end
end

local function pickupRayGun()
	local raygun = workspace:FindFirstChild("Weapons") and workspace.Weapons:FindFirstChild(weaponName)
	if raygun and raygun:FindFirstChild("Hitbox") then
		local _, root = getCharacter()
		if root then
			root.CFrame = raygun.Hitbox.CFrame + Vector3.new(0, 3, 0)
			warn("[RayGun] Teleported to pick up.")
		end
	end
end

local function getNearestKiller()
	local _, root = getCharacter()
	if not root then return nil end

	local killersFolder = workspace:FindFirstChild("Killers")
	if not killersFolder then return nil end

	local closest, closestDist = nil, math.huge
	for _, killer in pairs(killersFolder:GetChildren()) do
		if killer:IsA("Model") and killer:FindFirstChild("HumanoidRootPart") then
			local dist = (killer.HumanoidRootPart.Position - root.Position).Magnitude
			if dist < closestDist then
				closest = killer
				closestDist = dist
			end
		end
	end
	return closest
end

local function teleportBehind(target)
	local _, root = getCharacter()
	if root and target and target:FindFirstChild("HumanoidRootPart") then
		local tRoot = target.HumanoidRootPart

		-- Calculate position behind target
		local backPos = tRoot.Position - (tRoot.CFrame.LookVector * behindDistance)

		-- Raycast check to avoid teleporting inside walls
		local rayParams = RaycastParams.new()
		rayParams.FilterDescendantsInstances = {LocalPlayer.Character}
		rayParams.FilterType = Enum.RaycastFilterType.Blacklist
		local raycastResult = workspace:Raycast(tRoot.Position, -tRoot.CFrame.LookVector * behindDistance, rayParams)

		if raycastResult then
			-- If blocked, teleport slightly above target instead
			root.CFrame = tRoot.CFrame * CFrame.new(0, 5, 0)
		else
			root.CFrame = CFrame.new(backPos, tRoot.Position) -- Face target
		end
	end
end

local function shoot()
	-- Using mouse1press and mouse1release for compatibility
	pcall(function()
		mouse1press()
		task.wait(0.05)
		mouse1release()
	end)
end

-- === Main Loop ===
task.spawn(function()
	while _G.autoTP do
		local _, root = getCharacter()

		if not hasRayGun() then
			pickupRayGun()
		else
			task.wait(1) -- wait after pickup
			equipRayGun()
			task.wait(0.2)

			local target = getNearestKiller()
			if target then
				local humanoid = target:FindFirstChildWhichIsA("Humanoid")
				if humanoid and humanoid.Health > 0 then
					-- Set silent aim target
					getgenv().SilentTarget = target.HumanoidRootPart

					teleportBehind(target)
					task.wait(0.2)
					shoot()

					-- Reset SilentTarget after shooting
					getgenv().SilentTarget = nil
				else
					-- Target invalid, clear silent target
					getgenv().SilentTarget = nil
				end
			else
				-- No target found, go to safe spot
				if root then
					root.CFrame = safeCFrame
				end
				warn("[RayGun] No killer found. Teleported to safe area.")
				getgenv().SilentTarget = nil
			end
		end

		task.wait(teleportInterval)
	end
end)
]]
