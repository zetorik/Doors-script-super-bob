-- Gui to Lua
-- Version: 3.2

-- Instances:

local BOBGUI = Instance.new("ScreenGui")
local Gun = Instance.new("ImageButton")
local PortalGun = Instance.new("ImageButton")
local TurboButton = Instance.new("TextButton")
local PortalType = Instance.new("TextLabel")
local ChangePortal = Instance.new("TextButton")
local Figure = Instance.new("ImageButton")

--Properties:

BOBGUI.Name = "BOBGUI"
BOBGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Gun.Name = "Gun"
Gun.Parent = BOBGUI
Gun.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Gun.BorderColor3 = Color3.fromRGB(0, 0, 0)
Gun.BorderSizePixel = 0
Gun.Position = UDim2.new(0.0743879452, 0, 0.220367283, 0)
Gun.Size = UDim2.new(0.0574387945, 0, 0.105175294, 0)
Gun.Image = "rbxassetid://16593896384"

PortalGun.Name = "PortalGun"
PortalGun.Parent = BOBGUI
PortalGun.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PortalGun.BorderColor3 = Color3.fromRGB(0, 0, 0)
PortalGun.BorderSizePixel = 0
PortalGun.Position = UDim2.new(0.0743879452, 0, 0.357262105, 0)
PortalGun.Size = UDim2.new(0.0574387945, 0, 0.105175294, 0)
PortalGun.Image = "rbxassetid://145730758"

TurboButton.Name = "TurboButton"
TurboButton.Parent = BOBGUI
TurboButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TurboButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TurboButton.BorderSizePixel = 0
TurboButton.Position = UDim2.new(0.145951033, 0, 0.373956591, 0)
TurboButton.Size = UDim2.new(0, 79, 0, 39)
TurboButton.Font = Enum.Font.Unknown
TurboButton.Text = "TURBO"
TurboButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TurboButton.TextScaled = true
TurboButton.TextSize = 14.000
TurboButton.TextWrapped = true

PortalType.Name = "PortalType"
PortalType.Parent = BOBGUI
PortalType.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PortalType.BorderColor3 = Color3.fromRGB(0, 0, 0)
PortalType.BorderSizePixel = 0
PortalType.Position = UDim2.new(0.806722701, 0, 0.634390652, 0)
PortalType.Size = UDim2.new(0, 193, 0, 56)
PortalType.Visible = false
PortalType.Font = Enum.Font.SourceSans
PortalType.Text = "portal_type = "
PortalType.TextColor3 = Color3.fromRGB(0, 0, 0)
PortalType.TextScaled = true
PortalType.TextSize = 14.000
PortalType.TextWrapped = true

ChangePortal.Name = "ChangePortal"
ChangePortal.Parent = BOBGUI
ChangePortal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChangePortal.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChangePortal.BorderSizePixel = 0
ChangePortal.Position = UDim2.new(0.83286649, 0, 0.550918221, 0)
ChangePortal.Size = UDim2.new(0, 165, 0, 50)
ChangePortal.Visible = false
ChangePortal.Font = Enum.Font.SourceSans
ChangePortal.Text = "Change portal"
ChangePortal.TextColor3 = Color3.fromRGB(0, 0, 0)
ChangePortal.TextScaled = true
ChangePortal.TextSize = 14.000
ChangePortal.TextWrapped = true

Figure.Name = "Figure"
Figure.Parent = BOBGUI
Figure.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Figure.BorderColor3 = Color3.fromRGB(0, 0, 0)
Figure.BorderSizePixel = 0
Figure.Position = UDim2.new(0.094929494, 0, 0.485809684, 0)
Figure.Size = UDim2.new(0.0574387945, 0, 0.105175294, 0)
Figure.Image = "rbxassetid://8118235568"

-- Scripts:

local function VKJPNDM_fake_script() -- BOBGUI.BOB 
	local script = Instance.new('LocalScript', BOBGUI)

	local player = game.Players.LocalPlayer
	local char = player.Character
	local tweenService = game:GetService("TweenService")
	local uis = game:GetService("UserInputService")
	local camera = workspace.CurrentCamera
	
	local function Gun()
		local s = 1000
		local v = 300
		
		local gun = Instance.new("Tool", player.Backpack)
		gun.Grip = CFrame.new(0, -0.25, -0.4) * CFrame.fromOrientation(0, math.rad(180), 0)
		gun.Name = "Secrt GUN 0F B0B 220"
		gun.TextureId = "rbxassetid://5205790785"
		
		local gunPart = Instance.new("Part", gun)
		gunPart.Name = "Handle"
	
		local gunMesh = Instance.new("SpecialMesh", gunPart)
		gunMesh.MeshId = "rbxassetid://574986846"
		gunMesh.TextureId = "rbxassetid://574986956"
		gunMesh.Scale = Vector3.new(0.007, 0.007, 0.007)
	
		local leftDecal = Instance.new("Decal", gunPart)
		leftDecal.Face = Enum.NormalId.Left
		leftDecal.Texture = "http://www.roblox.com/asset/?id=8649144251"
	
		local rightDecal = leftDecal:Clone()
		rightDecal.Face = Enum.NormalId.Right
	
		gun.Activated:Connect(function()
			local mousePos2D = uis:GetMouseLocation()
			local mouse3DRay = camera:ViewportPointToRay(mousePos2D.X, mousePos2D.Y, 1)
			local shootPoint = mouse3DRay.Origin + mouse3DRay.Direction * s
			local hittedParts = {}
			
			local sound = gunPart:FindFirstChildOfClass("Sound")
			if not sound then
				sound = Instance.new("Sound", gunPart)
			end
			sound.SoundId = "rbxassetid://3273126875"
			sound:Play()
			
			local bullet = Instance.new("Part", workspace)
			bullet.Name = "Bullet"
			bullet.Size = Vector3.new(0.3, 0.3, 1)
			bullet.Color = Color3.fromRGB(239, 184, 56)
			bullet.Material = Enum.Material.Neon
			bullet.Transparency = 0.85
			bullet.CanCollide = false
			bullet.CFrame = gunPart.CFrame
	
			bullet.Touched:Connect(function(hit)
				if hit:IsDescendantOf(char) or table.find(hittedParts, hit) then
					return
				end
				
				table.insert(hittedParts, hit)
				
				local locked = false
				if hit.Locked == true then
					locked = true
					local a = math.random(0,3)
					if a == 1 then
						locked = false
					end
				end
				
				if hit:GetAttribute("Hitted") == true and hit.Name ~= "Baseplate" and not locked then
					
					hit:Destroy()
				else
					hit:SetAttribute("Hitted", true)
					hit.Anchored = false
				end
	
	
				local exp = Instance.new("Explosion", workspace)
				exp.DestroyJointRadiusPercent = 0
				exp.BlastPressure = 100000000
				exp.Position = hit.Position
			end)
	
			local tween = tweenService:Create(bullet, TweenInfo.new(s/v), {Position = shootPoint})
			tween:Play()
			wait(s/v)
			bullet:Destroy()
	
		end)
	end
	
	local turboValue = script.Parent.Turbo
	
	local portalDebounce = false
	
	local function PortalGun()
		local portalType = 1
		local portal1:Part = nil
		local portal2:Part = nil
		
		local portalGun = Instance.new("Tool", player.Backpack)
		portalGun.Name = "portal_gun"
		portalGun.TextureId = "rbxassetid://11489066329"
		portalGun.Grip = CFrame.new(0.05, -0.3, 0)
		
		local portalGunPart = Instance.new("Part", portalGun)
		portalGunPart.Size = Vector3.new(0.737, 0.184, 0.368)
		portalGunPart.Name = "Handle"
		
		local portalGunMesh = Instance.new("SpecialMesh", portalGunPart)
		portalGunMesh.MeshId = "rbxassetid://5104867494"
		portalGunMesh.TextureId = "rbxassetid://5104867547"
		portalGunMesh.Scale = Vector3.new(0.253, 0.253, 0.253)
		
		local function ChangePortal()
			if portalType == 1 then
				portalType = 2
			else
				portalType = 1
			end
			
			script.Parent.PortalType.Text = "portal_type = "..tostring(portalType)
		end
		
		uis.InputBegan:Connect(function(input, processed)
			if input.KeyCode == Enum.KeyCode.V then
				ChangePortal()
			end
		end)
		
		script.Parent.ChangePortal.MouseButton1Click:Connect(ChangePortal)
		
		portalGun.Equipped:Connect(function(_)
			script.Parent.PortalType.Visible = true
			script.Parent.ChangePortal.Visible = true
		end)
		
		portalGun.Unequipped:Connect(function()
			script.Parent.PortalType.Visible = false
			script.Parent.ChangePortal.Visible = false
		end)
		
		portalGun.Activated:Connect(function()
			local range = 100
			local mousePos2D = uis:GetMouseLocation()
			local mouse3DRay = camera:ViewportPointToRay(mousePos2D.X, mousePos2D.Y, 1)
			
			local rayCastParams = RaycastParams.new()
			rayCastParams.FilterType = Enum.RaycastFilterType.Exclude
			rayCastParams.FilterDescendantsInstances = {char}
			rayCastParams.RespectCanCollide = true
			
			local rayCastResult = workspace:Raycast(mouse3DRay.Origin, mouse3DRay.Direction * range, rayCastParams)
			
			if rayCastResult and rayCastResult.Instance and rayCastResult.Instance:IsA("BasePart") then
				local sound = portalGunPart:FindFirstChildOfClass("Sound")
				if not sound then
					sound = Instance.new("Sound", portalGunPart)
				end
				sound.SoundId = "rbxassetid://2769872789"
				sound:Play()
				
				local portal = Instance.new("Part", workspace)
				portal.Size = Vector3.new(4.92, 6.34, 0.01)
				portal.Anchored = true
				portal.CanCollide = false
				portal.Name = "Portal"
				portal.CastShadow = false
				portal.Transparency = 1
				portal:SetAttribute("PortalType", portalType)
				
				local decal1 = Instance.new("Decal", portal)
				decal1.Face = Enum.NormalId.Front
				decal1.Texture = "http://www.roblox.com/asset/?id=18688262732"
				
				if portalType ~= 1 then
					decal1.Color3 = Color3.fromRGB(158, 255, 47)
					if portal2 then
						portal2:Destroy()
					end
					portal2 = portal
				else
					if portal1 then
						portal1:Destroy()
					end
					portal1 = portal
				end
				
				local decal2 = decal1:Clone()
				decal2.Face = Enum.NormalId.Back
				decal2.Parent = portal
				
				local cx, cy, cz = camera.CFrame:ToEulerAngles()
				
				local normal = rayCastResult.Normal
				portal.CFrame = CFrame.new(rayCastResult.Position) * CFrame.fromEulerAngles(math.rad(90)*normal.Y, math.rad(90)*normal.X, cy*normal.Y)
				
				
				
				portal.Touched:Connect(function(hit)
					if hit:IsDescendantOf(char) then
						if portalDebounce then
							return
						end
						
						if portal1 and portal2 then
							portalDebounce = true
							
							local portalToTeleport:Part = nil
							local portalType = portal:GetAttribute("PortalType")
	
							if portalType == 1 then
								portalToTeleport = portal2
							else
								portalToTeleport = portal1
							end
							
							local distance = math.abs(portal.Position.Magnitude - portalToTeleport.Position.Magnitude)
							
							if turboValue.Value == true then
								
								
								char:PivotTo(portalToTeleport.CFrame)
							else
								local t = distance/10
								local tween = tweenService:Create(char.HumanoidRootPart, TweenInfo.new(t),{CFrame = portalToTeleport.CFrame} )
								tween:Play()
								wait(t)
							end
							
							wait(0.55)
							portalDebounce = false
						end
					end
				end)
				
			end
			
		end)
	end
	
	local function Seller()
		local seller = Instance.new("Part", workspace)
		seller.Name = "Seller"
		seller.Size = Vector3.new(0.479, 0.773, 0.442)
		seller.Anchored = true
	
		local sellerMesh = Instance.new("SpecialMesh", seller)
		sellerMesh.MeshId = "rbxassetid://5343313266"
		sellerMesh.TextureId = "rbxassetid://5343313325"
		sellerMesh.Scale = Vector3.new(0.142, 0.142, 0.142)
	
		local sellerPromt = Instance.new("ProximityPrompt", seller)
		sellerPromt.ActionText = "Get ??? aiosfjiodsfoifsdj"
		sellerPromt.HoldDuration = 1
	
		sellerPromt.Triggered:Connect(function(_)
			Gun()
		end)
	
		seller.CFrame = char:GetPivot() * CFrame.new(0,0,-5) * CFrame.fromOrientation(0,math.rad(180),0)
	
	
	end
	
	script.Parent.Gun.MouseButton1Click:Connect(Gun)
	script.Parent.PortalGun.MouseButton1Click:Connect(PortalGun)
	
	Seller()
end
coroutine.wrap(VKJPNDM_fake_script)()
local function SBPON_fake_script() -- TurboButton.LocalScript 
	local script = Instance.new('LocalScript', TurboButton)

	local turboValue = script.Parent.Parent.Turbo
	
	script.Parent.MouseButton1Click:Connect(function()
		if turboValue.Value == true then
			turboValue.Value = false
			script.Parent.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		else
			turboValue.Value = true
			script.Parent.BackgroundColor3 = Color3.fromRGB(21, 255, 21)
		end
	end)
end
coroutine.wrap(SBPON_fake_script)()
local function KFOL_fake_script() -- Figure.LocalScript 
	local script = Instance.new('LocalScript', Figure)

	script.Parent.MouseButton1Click:Connect(function()
		local model:Model = game:GetService("ReplicatedStorage").JumpscareModels.Figureold
	
	
	
		local player =game.Players.LocalPlayer
		local char = player.Character
	
		while true do
			task.wait(0.1)
	
			local newModel = model:Clone()
			newModel.Parent = workspace
			newModel:PivotTo(char:GetPivot() * CFrame.new(0,0,-4) )
			task.spawn(function()
				while true do
					task.wait(0.05)
					newModel:PivotTo(newModel:GetPivot()*CFrame.fromOrientation(0,math.rad(20),0))
				end
			end)
		end
	end)
end
coroutine.wrap(KFOL_fake_script)()
