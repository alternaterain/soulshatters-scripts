--open and close


-- init
local library = loadstring(game:HttpGet("https://pastebin.com/raw/qwdPKKDN"))()
local venyx = library.new("Soulmodders", 5013109572)

 -- ==============================================================================================================================
            local rgbb = Color3.new(1, 0, 0)
            local textt = ""
            local custom_things = venyx:addPage("Custom Text", 5012544693)
            local custom_text = custom_things:addSection("Custom text")
            custom_text:addColorPicker(
                "The color of the text",
                rgbb,
                function(val)
                    rgbb = val
                end
            )
            custom_text:addTextbox(
                "What to say?",
                "",
                function(val)
                    textt = val
                end
            )
            custom_text:addButton(
                "Send the text",
                function()
                    local A_1 = {
                        [1] = getrenv()._G.Pass,
                        [2] = "Chatted",
                        [3] = textt,
                        [4] = rgbb
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Events
                    Event:FireServer(A_1)
                end
            )


-- 2 page
local page2 = venyx:addPage("Moves", 5012544693)
local section21 = page2:addSection("Asriel")
local section22 = page2:addSection("Xchara/Cross")
local section23 = page2:addSection("Sans")
local section24 = page2:addSection("Frisk")
local section25 = page2:addSection("Gt Frisk")
local section26 = page2:addSection("Gt chara")
local section27 = page2:addSection("ss chara")
local section28 = page2:addSection("Betty")
local section29 = page2:addSection("Undyne")


 
section22:addButton("summon knives", function()
	local A_1 = 
		{
			[1] = getrenv()._G.Pass, 
			[2] = "SummonKnivesChara", 
			[3] = "Spawn"
		}
	local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
	Event:InvokeServer(A_1)
end)

section26:addButton("special hell", function()
	local A_1 = 
		{
			[1] = getrenv()._G.Pass, 
			[2] = "AreaAttack", 
			[3] = "Start"
		}
	local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
	Event:InvokeServer(A_1)
end)

section21:addButton("Shocker break it", function()
	local args = {
		[1] = {
			[1] = getrenv()._G.Pass,
			[2] = "ShockerBreaker",
			[3] = "Start"
		}
	}

	game:GetService("ReplicatedStorage").Remotes.AsrielMoves:InvokeServer(unpack(args))
end)

section21:addButton("HyperBeam", function()
	local args = {
		[1] = {
			[1] = getrenv()._G.Pass,
			[2] = "HyperBeam",
			[3] = "Fire"
		}
	}

	game:GetService("ReplicatedStorage").Remotes.AsrielMoves:InvokeServer(unpack(args))
end)

section27:addButton("Chaos Buster 1", function()
	local args = {
		[1] = {
			[1] = getrenv()._G.Pass,
			[2] = "ChaosBusterBlasters",
			[3] = "SummonOne",
			[4] = Vector3.new(1091.2574462891, -5.8583984375, 528.84344482422)
		}
	}

	game:GetService("ReplicatedStorage").Remotes.SFCharaMoves:InvokeServer(unpack(args))
end)

section27:addButton("Chaos Buster 4", function()
	local args = {
		[1] = {
			[1] = getrenv()._G.Pass,
			[2] = "ChaosBusterBlasters",
			[3] = "SummonEight",
			[4] = Vector3.new(1091.2574462891, -5.8583984375, 528.84344482422)
		}
	}

	game:GetService("ReplicatedStorage").Remotes.SFCharaMoves:InvokeServer(unpack(args))
end)

section21:addButton("Star Blazing", function()
	local args = {
		[1] = {
			[1] = getrenv()._G.Pass,
			[2] = "StarBlazing",
			[3] = "Start"
		}
	}

	game:GetService("ReplicatedStorage").Remotes.AsrielMoves:InvokeServer(unpack(args))
end)

-- first page
local page = venyx:addPage("Customs", 5012544693)
local section1 = page:addSection("InMenu Customs")
local section2 = page:addSection("Sans Customs")
local section3 = page:addSection("xtale Customs")
local section4 = page:addSection("All Characters")





section1:addButton("LB Sans", function()
	local phase = 1
	local inv = false
	local dead = false
	local holdbone = false
	local CAS = game:GetService("ContextActionService")
	local FREEZE_COMMAND  = "Stunned"
	CAS:UnbindAction(FREEZE_COMMAND)
	local pass = getrenv()._G.Pass
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
	local Players = game:GetService("Players")
	local localPlayer = Players.LocalPlayer
	local mouse = localPlayer:GetMouse()
	game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Sans"
	if not localPlayer.Character then
		localPlayer.CharacterAdded:Wait()
	end
	wait(0.5)
	local root = localPlayer.Character.HumanoidRootPart
	wait(2)
	print("running main thingy idk")

	local humanoid = localPlayer.Character:WaitForChild("Humanoid")

	humanoid.Died:Connect(function()
		print("died")
		for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
			v:Destroy()
		end
		dead = true
		inv = false
	end)

	spawn(function()
		while wait() do
			if dead == true then break end
			local A_1 = 
				{
					[1] = pass, 
					[2] = "ChangeSetting", 
					[3] = "DeathScene", 
					[4] = false
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Functions
			Event:InvokeServer(A_1)
		end
	end)

	spawn(function()
		while wait() do
			if dead == true then break end
			if holdbone == true then
				if game.Players.LocalPlayer.Character.Bone.Transparency ~= 0 then
					local A_1 = 
						{
							[1] = getrenv()._G.Pass, 
							[2] = "SpawnBone", 
							[3] = true, 
							[4] = true
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
					Event:InvokeServer(A_1)
				end
			end
		end
	end)

	function hidebone()
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "SpawnBone", 
				[3] = false, 
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
		Event:InvokeServer(A_1)
	end

	function bone(v)
		spawn(function()
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "SpawnBone", 
					[3] = v, 
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
			Event:InvokeServer(A_1)
		end)
	end

	function stun(val)
		if val == true then
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			CAS:BindActionAtPriority(
				FREEZE_COMMAND,
				function() 
					return Enum.ContextActionResult.Sink
				end,
				false,
				Enum.ContextActionPriority.High.Value,
				Enum.KeyCode.W,
				Enum.KeyCode.S,
				Enum.KeyCode.A,
				Enum.KeyCode.D,
				Enum.KeyCode.F,
				Enum.KeyCode.R,
				Enum.KeyCode.One,
				Enum.KeyCode.Two,
				Enum.KeyCode.Three,
				Enum.KeyCode.Four,
				Enum.KeyCode.Five,
				Enum.KeyCode.Six,
				Enum.KeyCode.Seven,
				Enum.KeyCode.Eight,
				Enum.KeyCode.Nine,
				Enum.KeyCode.Zero
			)
		elseif val == false then
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
			CAS:UnbindAction(FREEZE_COMMAND)
		end
	end

	function unblock()
		spawn(function()
			for i = 1,5 do
				wait()
				local A_1 = 
					{
						[1] = pass, 
						[2] = "Blocking", 
						[3] = false
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Functions
				Event:InvokeServer(A_1)
			end
		end)
	end

	AnimationId = '0'
	local player = game.Players.LocalPlayer
	local mouse = player:GetMouse()
	bind = "g" -- has to be lowercase


	mouse.KeyDown:connect(function(key)
		if key == bind then
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "BoneHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)

			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "WindHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)

			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "SakuyaOrb",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)

			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "SansLineBones",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "SansLineBones",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "SansLineBones",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnockBack",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "BiggerBurstEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "SansLineBones",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "BigWindEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "BurstEffect1",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

	spawn(function()
		while true do
			if dead == true then break end
			wait()
			if inv == true then
				spawn(function()
					local A_1 = 
						{
							[1] = pass, 
							[2] = "InvFrames", 
							[3] = 0.5
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Events
					Event:FireServer(A_1)
				end)
			end
		end
	end)

	local m = game.Players.LocalPlayer:GetMouse()
	db = true
	m.keyDown:connect(function(k)
		k = k:lower()
		if k == "h" then
			if db == true then
				local args = {
					[1] = {
						[1] = getrenv()._G.Pass,
						[2] = "Telekinesis",
						[3] = "Special2",
						[4] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
					}
				}

				game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))

			end
		end
	end)

	function hitnear()
		spawn(function()
			for i,v in pairs(workspace:GetChildren()) do
				if v:FindFirstChild("Torso") then
					if v.Name ~= game.Players.LocalPlayer.Name then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
							local A_1 = pass
							local A_2 = v
							local A_3 = 
								{
									["Type"] = "Knockback", 
									["HitEffect"] = "BoneHitEffect", 
									["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
									["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 100, 
									["CameraShake"] = "Bump", 
									["HitTime"] = 1, 
									["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
									["Sound"] = nil, 
									["Damage"] = 0
								}
							local Event = game:GetService("ReplicatedStorage").Remotes.Damage
							Event:InvokeServer(A_1, A_2, A_3)
						end
					end
				end
			end
		end)
	end

	AnimationId = '0'
	local player = game.Players.LocalPlayer
	local mouse = player:GetMouse()
	bind = "g" -- has to be lowercase


	mouse.KeyDown:connect(function(key)
		if key == bind then
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "BoneHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)

			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "WindHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)

			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "SakuyaOrb",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)

			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "SansLineBones",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "SansLineBones",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "SansLineBones",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnockBack",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "BiggerBurstEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "SansLineBones",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "BigWindEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "BurstEffect1",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

	function talk(text,color)
		if dead == true then return end
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "Chatted", 
				[3] = text, 
				[4] = color
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
	end

	function getlockchar()
		local char = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		return char
	end

	function getlock()
		local pos = mouse.Hit.p
		if game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value ~= nil then
			pos = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
		end
		warn(pos)
		return pos
	end


	-- AMIMATIONS:

	local PunchAnim = Instance.new("Animation")
	PunchAnim.AnimationId = "rbxassetid://4357851278"
	local PunchAnimTrack = humanoid:LoadAnimation(PunchAnim)
	PunchAnimTrack.Priority = Enum.AnimationPriority.Action
	PunchAnimTrack.Looped = false

	local PunchAnim2 = Instance.new("Animation")
	PunchAnim2.AnimationId = "rbxassetid://4357872409"
	local PunchAnim2Track = humanoid:LoadAnimation(PunchAnim2)
	PunchAnim2Track.Priority = Enum.AnimationPriority.Action
	PunchAnim2Track.Looped = false

	local PunchAnim3 = Instance.new("Animation")
	PunchAnim3.AnimationId = "rbxassetid://4357890370"
	local PunchAnim3Track = humanoid:LoadAnimation(PunchAnim3)
	PunchAnim3Track.Priority = Enum.AnimationPriority.Action
	PunchAnim3Track.Looped = false

	local LastPunchAnim = Instance.new("Animation")
	LastPunchAnim.AnimationId = "rbxassetid://4357907686"
	local LastPunchAnimTrack = humanoid:LoadAnimation(LastPunchAnim)
	LastPunchAnimTrack.Priority = Enum.AnimationPriority.Action
	LastPunchAnimTrack.Looped = false

	local SleepAnim = Instance.new("Animation")
	SleepAnim.AnimationId = "rbxassetid://3877055653"
	local SleepAnimTrack = humanoid:LoadAnimation(SleepAnim)
	SleepAnimTrack.Priority = Enum.AnimationPriority.Action
	SleepAnimTrack.Looped = true
	--SleepAnimTrack:Play()

	local HurtAnim = Instance.new("Animation")
	HurtAnim.AnimationId = "rbxassetid://4460182501"
	local HurtAnimTrack = humanoid:LoadAnimation(HurtAnim)
	HurtAnimTrack.Priority = Enum.AnimationPriority.Action
	HurtAnimTrack.Looped = false
	--HurtAnimTrack:Play()

	local HurtGroundAnim = Instance.new("Animation")
	HurtGroundAnim.AnimationId = "rbxassetid://4416715001"
	local HurtGroundAnimTrack = humanoid:LoadAnimation(HurtGroundAnim)
	HurtGroundAnimTrack.Priority = Enum.AnimationPriority.Action
	HurtGroundAnimTrack.Looped = true
	--HurtGroundAnimTrack:Play()

	-- ATTACKS:
	function punch()
		PunchAnimTrack:Play()
		bone(true)
		spawn(function()
			for i,v in pairs(workspace:GetChildren()) do
				if v:FindFirstChild("Torso") then
					if v.Name ~= game.Players.LocalPlayer.Name then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
							local A_1 = pass
							local A_2 = v
							local A_3 = 
								{
									["Type"] = "Knockback", 
									["HitEffect"] = "BoneHitEffect", 
									["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
									["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 100, 
									["CameraShake"] = "Bump", 
									["Karma"] = 50,
									["HitTime"] = 1, 
									["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
									["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
									["Damage"] = 10
								}
							local Event = game:GetService("ReplicatedStorage").Remotes.Damage
							Event:InvokeServer(A_1, A_2, A_3)
						end
					end
				end
			end
			wait(0.5)
			bone(false)
		end)
	end

	function dunk()
		local anim = Instance.new("Animation")
		anim.AnimationId = "rbxassetid://6122095988"
		local animmTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)
		animmTrack.Priority = Enum.AnimationPriority.Action
		animmTrack.Looped = false
		animmTrack:Play()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getlockchar().HumanoidRootPart.CFrame * CFrame.new(0,0,3)
		talk("get dunked on.",Color3.new(1,1,1))
		for i = 1,7 do
			spawn(function()
				for i = 1,2 do
					local A_1 = pass
					local A_3 = 
						{
							["Type"] = "Normal", 
							["HitEffect"] = "SansLineBones", 
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
							["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector +  Vector3.new(0.001,0.001,0.001), 
							["Karma"] = 2, 
							["HitTime"] = 1, 
							["VictimCFrame"] = CFrame.new(0,0,0), 
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.Hurt, 
							["Damage"] = 10
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					Event:InvokeServer(A_1,getlockchar(), A_3)
				end
			end)
			wait(0.17)
		end
		spawn(function()
			local A_1 = pass
			local A_2 = game:GetService("Workspace").NoStaminaDummy
			local A_3 = 
				{
					["Type"] = "Knockback", 
					["HitEffect"] = "BoneHitEffect", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector +  Vector3.new(0.001,25,0.001), 
					["Karma"] = 10, 
					["HitTime"] = 1, 
					["VictimCFrame"] = CFrame.new(0,0,0), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1,getlockchar(), A_3)
		end)
	end

	function infkr()
		stun(true)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getlockchar().HumanoidRootPart.CFrame * CFrame.new(0,0,3)
		local target = getlockchar()
		holdbone = true
		local A_1 = pass
		local A_2 = target
		local A_3 = 
			{
				["Type"] = "Normal", 
				["HitEffect"] = "BoneHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
				["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.01, 
				["CameraShake"] = "Bump", 
				["HitTime"] = 5, 
				["Karma"] = 0,
				["VictimCFrame"] = nil, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Break, 
				["Damage"] = 10
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		wait(1)
		for i = 1,8 do 
			spawn(function()
				local A_1 = pass
				local A_2 = target
				local A_3 = 
					{
						["Type"] = "Normal", 
						["HitEffect"] = "BoneHitEffect", 
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.01, 
						["CameraShake"] = "Bump", 
						["HitTime"] = 5, 
						["Karma"] = 0,
						["VictimCFrame"] = nil, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
			end)
			local anim = math.random(1,3)
			if anim == 1 then
				PunchAnimTrack:Play()
			elseif anim == 2 then
				PunchAnim2Track:Play()
			elseif anim == 3 then
				PunchAnim3Track:Play()
			end
			wait(0.5)
		end
		LastPunchAnimTrack:Play()
		wait(0.3)
		stun(false)
		bone(false)
		local A_1 = pass
		local A_2 = target
		local A_3 = 
			{
				["Type"] = "Knockback", 
				["HitEffect"] = "BoneHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
				["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 100, 
				["CameraShake"] = "Bump", 
				["HitTime"] = 2, 
				["Karma"] = math.huge,
				["VictimCFrame"] = nil, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
				["Damage"] = 10
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end

	function rainbowattack()
		spawn(function()
			for i,v in pairs(workspace:GetChildren()) do
				if v:FindFirstChild("Torso") then
					if v.Name ~= game.Players.LocalPlayer.Name then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
							local A_1 = pass
							local A_2 = v
							local A_3 = 
								{
									["Type"] = "Knockback", 
									["HitEffect"] = "RainbowExplosion", 
									["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
									["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 100, 
									["CameraShake"] = "Bump", 
									["HitTime"] = 1, 
									["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
									["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire, 
									["Damage"] = 10
								}
							local Event = game:GetService("ReplicatedStorage").Remotes.Damage
							Event:InvokeServer(A_1, A_2, A_3)
						end
					end
				end
			end
		end)
	end

	-- COOLDOWNS
	local punchcd = false
	local dunkcd = false
	local rainbowcd = false
	local infkrcd = false

	mouse.KeyDown:Connect(function(k)
		if dead == true then return end
		if game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored == true then return end
		if k == "z" then
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "GasterBlasters", 
					[3] = "SummonSpecial", 
					[4] = getlock()
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
			Event:InvokeServer(A_1)
		elseif k == "x" then
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "GasterBlasters", 
					[3] = "SummonEight", 
					[4] = getlock()
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
			Event:InvokeServer(A_1)
		elseif k == "c" then
			if dunkcd == true then return end
			spawn(function()
				dunkcd = true
				wait(5)
				dunkcd = false
			end)
			print("dunk")
			dunk()
		elseif k == "v" then
			if punchcd == true then return end
			spawn(function()
				punchcd = true
				wait(1)
				punchcd = false
			end)
			print("punch")
			punch()
		elseif k == "b" then
			if rainbowcd == true then return end
			spawn(function()
				rainbowcd = true
				wait(1)
				rainbowcd = false
			end)
			print("rainbowattack")
			rainbowattack()
		elseif k == "n" then
			if infkrcd == true then return end
			spawn(function()
				infkrcd = true
				wait(8)
				infkrcd = false
			end)
			print("inf kr")
			infkr()
		end
	end)

	-- Music:
	for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
		v:Destroy()
	end
	local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
	music.Volume = 0.7
	music.SoundId = "rbxassetid://4628607656"
	music.Looped = true
	music:Play()
	print("musik gone")



	warn("Waiting For Phase 2")
	repeat wait()

	until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 700
	inv = true
	hitnear()
	spawn(function()
		wait()
		local oldcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf * CFrame.new(0,-40,0)
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf
	end)
	wait(0.4)
	stun(true)
	HurtAnimTrack:Play()
	phase = 2
	print("phase "..phase)
	music:Stop()
	wait(2)
	HurtGroundAnimTrack:Play()
	wait(1)
	talk("!?",Color3.new(0.5,0.5,0.5))
	wait(3)
	talk("heh.",Color3.new(0.5,0.5,0.5))
	wait(3)
	HurtGroundAnimTrack:Stop()
	wait()
	SleepAnimTrack:Play()
	talk("guess i have another shot at you, huh?",Color3.new(1,0,0))
	wait(3)
	talk("there's no point in giving up at this point.",Color3.new(0.5,0.5,0.5))
	wait(3)
	talk("and i can't screw up this last chance i've been given.",Color3.new(1,0,0))
	wait(5)
	talk("no matter what it takes...",Color3.new(0.5,0.5,0.5))
	wait(3)
	talk("i'll bring you to justice.",Color3.new(0.5,0.5,0.5))
	wait(3)
	talk("and i will make you suffer what we felt.",Color3.new(1,0,0))
	wait(4)
	talk("so, kiddo, get ready...",Color3.new(0.5,0.5,0.5))
	wait(4)
	talk("because you're about to get dunked on much harder than before.",Color3.new(1,0,0))
	wait(6)
	holdbone = true
	SleepAnimTrack:Stop()
	music.SoundId = "rbxassetid://4686555781"
	music.TimePosition = 0
	music:Play()
	inv = false
	unblock()
	stun(false)
	warn("Waiting For Phase 3")
	repeat wait()

	until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 500
	music:Stop()
	inv = true
	hitnear()
	spawn(function()
		wait()
		local oldcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf * CFrame.new(0,-40,0)
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf
	end)
	wait(0.4)
	stun(true)
	holdbone = false
	wait()
	hidebone()
	wait(2)
	talk("what just happened?",Color3.new(1,0,0))
	wait(3)
	talk("..?",Color3.new(0.5,0.5,0.5))
	wait(3)
	talk("oh hey there!",Color3.new(0.5,0.5,0.5))
	wait(2)
	talk("i see that you have finally arrived huh?",Color3.new(1,0,0))
	wait(3)
	talk("oh well, kid",Color3.new(0.5,0.5,0.5))
	wait(2)
	talk("you will now face something that you will hardly forget.",Color3.new(1,0,0))
	wait(5)
	talk("i have told you from many genocide routes before...",Color3.new(0.5,0.5,0.5))
	wait(5)
	talk("reset.",Color3.new(1,0,0))
	wait(1)
	talk("but you didn't listen to me.",Color3.new(0.5,0.5,0.5))
	wait(3)
	talk("you could have fixed all this in only a press of a button.",Color3.new(1,0,0))
	wait(5)
	talk("but now, it's too late.",Color3.new(0.5,0.5,0.5))
	wait(3)
	talk("now you will face our your consequences...",Color3.new(1,0,0))
	wait(4)
	talk("that driven you into this.",Color3.new(1,0,0))
	SleepAnimTrack:Play()
	music.SoundId = "rbxassetid://4739499225"
	music.TimePosition = 0
	music.Looped = false
	music:Play()
	wait(47)
	stun(false)
	SleepAnimTrack:Stop()
	wait(147)
	stun(true)
	wait(45)
	local A_1 = 
		{
			[1] = getrenv()._G.Pass, 
			[2] = "Reset"
		}
	local Event = game:GetService("ReplicatedStorage").Remotes.Functions
	Event:InvokeServer(A_1)
end)

section1:addButton("Asgore", function()
	local textonattack = false
	local godmode = true
	local autoblock = true
	local dead = false
	local pass = getrenv()._G.Pass
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
	local Players = game:GetService("Players")
	local localPlayer = Players.LocalPlayer
	local uis = game:GetService("UserInputService")
	local mouse = game.Players.LocalPlayer:GetMouse()
	game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "XSans"
	if not localPlayer.Character then
		localPlayer.CharacterAdded:Wait()
	end
	wait(2)
	print("running main thingy idk")
	local humanoid = localPlayer.Character:WaitForChild("Humanoid")
	humanoid.Died:Connect(function()
		dead = true
		warn("dead how")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,-10,0)
	end)
	local NormalPunchAnim = Instance.new("Animation")
	NormalPunchAnim.AnimationId = "rbxassetid://5411089475"
	local NormalPunchAnimTrack = humanoid:LoadAnimation(NormalPunchAnim)
	NormalPunchAnimTrack.Priority = Enum.AnimationPriority.Action
	NormalPunchAnimTrack.Looped = false

	-- Remove Animations/Attacks:
	local AnimationTracks = humanoid:GetPlayingAnimationTracks()
	repeat wait()
	until game.Players.LocalPlayer.Backpack:FindFirstChild("Main")
	game.Players.LocalPlayer.Backpack.Main:WaitForChild("XSansMoves"):Destroy()
	for i, track in pairs (AnimationTracks) do
		track:Stop()
	end

	spawn(function()
		wait(0.5)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
	end)

	-- Music:

	local music = game.Players.LocalPlayer:WaitForChild("StarterPlaylist")["1Theme"]
	music.SoundId = "rbxassetid://511172361"
	music.TimePosition = 0
	music.Looped = true
	music:Play()

	-- GodMode:

	spawn(function()
		wait(2)
		if godmode == true then
			while wait(0.1) do
				if dead == true then return end
				local A_1 = 
					{
						[1] = pass, 
						[2] = "InvFrames", 
						[3] = 0.5
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Events
				Event:FireServer(A_1)
			end
		end
	end)

	-- Auto Block:
	spawn(function()
		if autoblock == true then
			while wait(0.1) do
				if dead == true then return end
				local A_1 = 
					{
						[1] = pass, 
						[2] = "Blocking", 
						[3] = true
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Functions
				Event:InvokeServer(A_1)
			end
		end
	end)

	-- UnAnchor:

	spawn(function()
		while wait() do
			for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA("Part") then
					v.Anchored = false
				end
			end
		end
	end)

	-- Talk Function:

	function talk(message)
		if dead == true then return end
		local A_1 = 
			{
				[1] = pass,
				[2] = "Chatted", 
				[3] = message, 
				[4] = Color3.new(0.9,0.9,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
	end

	game.Players.LocalPlayer.Chatted:Connect(function(msg)
		talk(msg)
	end)

	-- Attack Coolowns:

	local normalpunchcooldown = false
	local normalbarragecooldown = false
	local uppercutnormalcooldown = false
	local seriousbarragecooldown = false
	local uppercutseriouscooldown = false
	local seriouspunchcooldown = false

	-- Attacks:

	function seriouspunch()
		if seriouspunchcooldown == true then return end
		spawn(function()
			seriouspunchcooldown = true
			wait(5)
			seriouspunchcooldown = false
		end)
		if textonattack == true then
			talk("Serious Punch")
		end
		NormalPunchAnimTrack:Play()
		spawn(function()
			for i,v in pairs(workspace:GetChildren()) do
				if v:FindFirstChild("Torso") then
					if v.Name ~= game.Players.LocalPlayer.Name then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
							local A_1 = pass
							local A_2 = v
							local A_3 = 
								{
									["Type"] = "Normal", 
									["HitEffect"] = "BigWindEffect", 
									["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
									["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 100, 
									["CameraShake"] = "Bump", 
									["HitTime"] = 0, 
									["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
									["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Explosion, 
									["Damage"] = 10
								}
							local Event = game:GetService("ReplicatedStorage").Remotes.Damage
							Event:InvokeServer(A_1, A_2, A_3)
						end
					end
				end
			end
		end)
	end

	function normalpunch()
		if normalpunchcooldown == true then return end
		spawn(function()
			normalpunchcooldown = true
			wait(0.3)
			normalpunchcooldown = false
		end)
		if textonattack == true then
			talk("Normal Punch")
		end
		NormalPunchAnimTrack:Play()
		spawn(function()
			for i,v in pairs(workspace:GetChildren()) do
				if v:FindFirstChild("Torso") then
					if v.Name ~= game.Players.LocalPlayer.Name then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
							local A_1 = pass
							local A_2 = v
							local A_3 = 
								{
									["Type"] = "Normal", 
									["HitEffect"] = "WindEffect", 
									["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
									["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 50, 
									["CameraShake"] = "Bump", 
									["HitTime"] = 0, 
									["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
									["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
									["Damage"] = 10
								}
							local Event = game:GetService("ReplicatedStorage").Remotes.Damage
							Event:InvokeServer(A_1, A_2, A_3)
						end
					end
				end
			end
		end)
	end

	function tp()
		if game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value ~= nil then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Torso.CFrame * CFrame.new(0,0,5)
		else
			game.Players.LocalPlayer.Character:MoveTo(mouse.Hit.p)
		end
	end

	function barragenormal()
		if normalbarragecooldown == true then return end
		if textonattack == true then
			talk("Consecutive Normal Punch")
		end
		spawn(function()
			normalbarragecooldown = true
			wait(3)
			normalbarragecooldown = false
		end)
		local BarrageAnim = Instance.new("Animation")
		BarrageAnim.AnimationId = "rbxassetid://5411101340"
		local BarrageAnimTrack = humanoid:LoadAnimation(BarrageAnim)
		BarrageAnimTrack.Priority = Enum.AnimationPriority.Action
		BarrageAnimTrack.Looped = false
		BarrageAnimTrack:Play()
		wait(0.5)
		for i = 1,7 do
			spawn(function()
				for i,v in pairs(workspace:GetChildren()) do
					if v:FindFirstChild("Torso") then
						if v.Name ~= game.Players.LocalPlayer.Name then
							if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
								local A_1 = pass
								local A_2 = v
								local A_3 = 
									{
										["Type"] = "Normal", 
										["HitEffect"] = "WindEffect", 
										["HurtAnimation"] = nil, 
										["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.01, 
										["CameraShake"] = "Bump", 
										["HitTime"] = 0, 
										["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
										["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
										["Damage"] = 10
									}
								local Event = game:GetService("ReplicatedStorage").Remotes.Damage
								Event:InvokeServer(A_1, A_2, A_3)
							end
						end
					end
				end
			end)
			wait(0.1)
		end
		spawn(function()
			for i,v in pairs(workspace:GetChildren()) do
				if v:FindFirstChild("Torso") then
					if v.Name ~= game.Players.LocalPlayer.Name then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
							local A_1 = pass
							local A_2 = v
							local A_3 = 
								{
									["Type"] = "Normal", 
									["HitEffect"] = "WindEffect", 
									["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
									["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 50, 
									["CameraShake"] = "Bump", 
									["HitTime"] = 0, 
									["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
									["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
									["Damage"] = 10
								}
							local Event = game:GetService("ReplicatedStorage").Remotes.Damage
							Event:InvokeServer(A_1, A_2, A_3)
						end
					end
				end
			end
		end)
	end

	function barrageserious()
		if seriousbarragecooldown == true then return end
		if textonattack == true then
			talk("Consecutive Serious Punch")
		end
		spawn(function()
			seriousbarragecooldown = true
			wait(3)
			seriousbarragecooldown = false
		end)
		local BarrageAnim = Instance.new("Animation")
		BarrageAnim.AnimationId = "rbxassetid://5411103778"
		local BarrageAnimTrack = humanoid:LoadAnimation(BarrageAnim)
		BarrageAnimTrack.Priority = Enum.AnimationPriority.Action
		BarrageAnimTrack.Looped = false
		BarrageAnimTrack:Play()
		wait(0.5)
		for i = 1,7 do
			spawn(function()
				for i,v in pairs(workspace:GetChildren()) do
					if v:FindFirstChild("Torso") then
						if v.Name ~= game.Players.LocalPlayer.Name then
							if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
								local A_1 = pass
								local A_2 = v
								local A_3 = 
									{
										["Type"] = "Normal", 
										["HitEffect"] = "BigWindEffect", 
										["HurtAnimation"] = nil, 
										["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.01, 
										["CameraShake"] = "Bump", 
										["HitTime"] = 0, 
										["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
										["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Explosion, 
										["Damage"] = 10
									}
								local Event = game:GetService("ReplicatedStorage").Remotes.Damage
								Event:InvokeServer(A_1, A_2, A_3)
							end
						end
					end
				end
			end)
			wait(0.1)
		end
		spawn(function()
			for i,v in pairs(workspace:GetChildren()) do
				if v:FindFirstChild("Torso") then
					if v.Name ~= game.Players.LocalPlayer.Name then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
							local A_1 = pass
							local A_2 = v
							local A_3 = 
								{
									["Type"] = "Normal", 
									["HitEffect"] = "BigWindEffect", 
									["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
									["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 100, 
									["CameraShake"] = "Bump", 
									["HitTime"] = 0, 
									["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
									["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Explosion, 
									["Damage"] = 10
								}
							local Event = game:GetService("ReplicatedStorage").Remotes.Damage
							Event:InvokeServer(A_1, A_2, A_3)
						end
					end
				end
			end
		end)
	end

	function uppercutnormal()
		if uppercutnormalcooldown == true then return end
		if textonattack == true then
			talk("Normal Uppercut")
		end
		spawn(function()
			uppercutnormalcooldown = true
			wait(2)
			uppercutnormalcooldown = false
		end)
		local UpperCutAnim = Instance.new("Animation")
		UpperCutAnim.AnimationId = "rbxassetid://5411106079"
		local UpperCutAnimTrack = humanoid:LoadAnimation(UpperCutAnim)
		UpperCutAnimTrack.Priority = Enum.AnimationPriority.Action
		UpperCutAnimTrack.Looped = false
		UpperCutAnimTrack:Play()
		spawn(function()
			for i,v in pairs(workspace:GetChildren()) do
				if v:FindFirstChild("Torso") then
					if v.Name ~= game.Players.LocalPlayer.Name then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
							local A_1 = pass
							local A_2 = v
							local A_3 = 
								{
									["Type"] = "Normal", 
									["HitEffect"] = "WindEffect", 
									["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1, 
									["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 25 + Vector3.new(0.01,50,0.01), 
									["CameraShake"] = "Bump", 
									["HitTime"] = 0, 
									["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
									["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
									["Damage"] = 10
								}
							local Event = game:GetService("ReplicatedStorage").Remotes.Damage
							Event:InvokeServer(A_1, A_2, A_3)
						end
					end
				end
			end
		end)
	end

	function uppercutserious()
		if uppercutseriouscooldown == true then return end
		if textonattack == true then
			talk("Serious Uppercut")
		end
		spawn(function()
			uppercutseriouscooldown = true
			wait(2)
			uppercutseriouscooldown = false
		end)
		local UpperCutAnim = Instance.new("Animation")
		UpperCutAnim.AnimationId = "rbxassetid://5411107197"
		local UpperCutAnimTrack = humanoid:LoadAnimation(UpperCutAnim)
		UpperCutAnimTrack.Priority = Enum.AnimationPriority.Action
		UpperCutAnimTrack.Looped = false
		UpperCutAnimTrack:Play()
		spawn(function()
			for i,v in pairs(workspace:GetChildren()) do
				if v:FindFirstChild("Torso") then
					if v.Name ~= game.Players.LocalPlayer.Name then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
							local A_1 = pass
							local A_2 = v
							local A_3 = 
								{
									["Type"] = "Normal", 
									["HitEffect"] = "BigWindEffect", 
									["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1, 
									["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 70 + Vector3.new(0.01,100,0.01), 
									["CameraShake"] = "Bump", 
									["HitTime"] = 0, 
									["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
									["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Explosion, 
									["Damage"] = 10
								}
							local Event = game:GetService("ReplicatedStorage").Remotes.Damage
							Event:InvokeServer(A_1, A_2, A_3)
						end
					end
				end
			end
		end)
	end
	local attacking = false
	uis.InputBegan:Connect(function(input,gpe)
		if dead == true then return end
		if input.UserInputType == Enum.UserInputType.Keyboard then
			if input.KeyCode == Enum.KeyCode.R then
				tp()
			end
			if attacking == true then return end
			if input.KeyCode == Enum.KeyCode.One then
				spawn(function()
					attacking = true
					wait(0)
					attacking = false
				end)
				normalpunch()
			elseif input.KeyCode == Enum.KeyCode.Two then
				spawn(function()
					attacking = true
					wait(0)
					attacking = false
				end)
				barragenormal()
			elseif input.KeyCode == Enum.KeyCode.Three then
				spawn(function()
					attacking = true
					wait(0)
					attacking = false
				end)
				uppercutnormal()
			elseif input.KeyCode == Enum.KeyCode.Four then
				spawn(function()
					attacking = true
					wait(0)
					attacking = false
				end)
				barrageserious()
			elseif input.KeyCode == Enum.KeyCode.Five then
				spawn(function()
					attacking = true
					wait(0)
					attacking = false
				end)
				uppercutserious()
			elseif input.KeyCode == Enum.KeyCode.Six then
				spawn(function()
					attacking = true
					wait(0)
					attacking = false
				end)
				seriouspunch()
			end
		end
	end)
end)

section1:addButton("Saitama", function()
	local textonattack = true
	local godmode = true
	local autoblock = true
	local dead = false
	local pass = getrenv()._G.Pass
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
	local Players = game:GetService("Players")
	local localPlayer = Players.LocalPlayer
	local uis = game:GetService("UserInputService")
	local mouse = game.Players.LocalPlayer:GetMouse()
	game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "XSans"
	if not localPlayer.Character then
		localPlayer.CharacterAdded:Wait()
	end
	wait(2)
	print("running main thingy idk")
	local humanoid = localPlayer.Character:WaitForChild("Humanoid")
	humanoid.Died:Connect(function()
		dead = true
		warn("dead how")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,-10,0)
	end)
	local NormalPunchAnim = Instance.new("Animation")
	NormalPunchAnim.AnimationId = "rbxassetid://5776238345"
	local NormalPunchAnimTrack = humanoid:LoadAnimation(NormalPunchAnim)
	NormalPunchAnimTrack.Priority = Enum.AnimationPriority.Action
	NormalPunchAnimTrack.Looped = false

	-- Remove Animations/Attacks:
	local AnimationTracks = humanoid:GetPlayingAnimationTracks()
	repeat wait()
	until game.Players.LocalPlayer.Backpack:FindFirstChild("Main")
	game.Players.LocalPlayer.Backpack.Main:WaitForChild("XSansMoves"):Destroy()
	for i, track in pairs (AnimationTracks) do
		track:Stop()
	end

	spawn(function()
		wait(0.5)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
	end)

	-- Music:

	local music = game.Players.LocalPlayer:WaitForChild("StarterPlaylist")["1Theme"]
	music.SoundId = "rbxassetid://431438203"
	music.TimePosition = 0
	music.Looped = true
	music:Play()

	-- GodMode:

	spawn(function()
		wait(2)
		if godmode == true then
			while wait(0.1) do
				if dead == true then return end
				local A_1 = 
					{
						[1] = pass, 
						[2] = "InvFrames", 
						[3] = 0.5
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Events
				Event:FireServer(A_1)
			end
		end
	end)

	-- Auto Block:
	spawn(function()
		if autoblock == true then
			while wait(0.1) do
				if dead == true then return end
				local A_1 = 
					{
						[1] = pass, 
						[2] = "Blocking", 
						[3] = true
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Functions
				Event:InvokeServer(A_1)
			end
		end
	end)

	-- UnAnchor:

	spawn(function()
		while wait() do
			for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA("Part") then
					v.Anchored = false
				end
			end
		end
	end)

	-- Talk Function:

	function talk(message)
		if dead == true then return end
		local A_1 = 
			{
				[1] = pass,
				[2] = "Chatted", 
				[3] = message, 
				[4] = Color3.new(0.9,0.9,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
	end

	game.Players.LocalPlayer.Chatted:Connect(function(msg)
		talk(msg)
	end)

	-- Attack Coolowns:

	local normalpunchcooldown = false
	local normalbarragecooldown = false
	local uppercutnormalcooldown = false
	local seriousbarragecooldown = false
	local uppercutseriouscooldown = false
	local seriouspunchcooldown = false

	-- Attacks:

	function seriouspunch()
		if seriouspunchcooldown == true then return end
		spawn(function()
			seriouspunchcooldown = true
			wait(5)
			seriouspunchcooldown = false
		end)
		if textonattack == true then
			talk("Serious Punch")
		end
		NormalPunchAnimTrack:Play()
		spawn(function()
			for i,v in pairs(workspace:GetChildren()) do
				if v:FindFirstChild("Torso") then
					if v.Name ~= game.Players.LocalPlayer.Name then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
							local A_1 = pass
							local A_2 = v
							local A_3 = 
								{
									["Type"] = "Normal", 
									["HitEffect"] = "BigWindEffect", 
									["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
									["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 100, 
									["CameraShake"] = "Bump", 
									["HitTime"] = 0, 
									["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
									["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Explosion, 
									["Damage"] = 10
								}
							local Event = game:GetService("ReplicatedStorage").Remotes.Damage
							Event:InvokeServer(A_1, A_2, A_3)
						end
					end
				end
			end
		end)
	end

	function normalpunch()
		if normalpunchcooldown == true then return end
		spawn(function()
			normalpunchcooldown = true
			wait(0.3)
			normalpunchcooldown = false
		end)
		if textonattack == true then
			talk("Normal Punch")
		end
		NormalPunchAnimTrack:Play()
		spawn(function()
			for i,v in pairs(workspace:GetChildren()) do
				if v:FindFirstChild("Torso") then
					if v.Name ~= game.Players.LocalPlayer.Name then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
							local A_1 = pass
							local A_2 = v
							local A_3 = 
								{
									["Type"] = "Normal", 
									["HitEffect"] = "WindEffect", 
									["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
									["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 50, 
									["CameraShake"] = "Bump", 
									["HitTime"] = 0, 
									["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
									["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
									["Damage"] = 10
								}
							local Event = game:GetService("ReplicatedStorage").Remotes.Damage
							Event:InvokeServer(A_1, A_2, A_3)
						end
					end
				end
			end
		end)
	end

	function tp()
		if game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value ~= nil then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Torso.CFrame * CFrame.new(0,0,5)
		else
			game.Players.LocalPlayer.Character:MoveTo(mouse.Hit.p)
		end
	end

	function barragenormal()
		if normalbarragecooldown == true then return end
		if textonattack == true then
			talk("Consecutive Normal Punch")
		end
		spawn(function()
			normalbarragecooldown = true
			wait(3)
			normalbarragecooldown = false
		end)
		local BarrageAnim = Instance.new("Animation")
		BarrageAnim.AnimationId = "rbxassetid://4800436094"
		local BarrageAnimTrack = humanoid:LoadAnimation(BarrageAnim)
		BarrageAnimTrack.Priority = Enum.AnimationPriority.Action
		BarrageAnimTrack.Looped = false
		BarrageAnimTrack:Play()
		wait(0.5)
		for i = 1,7 do
			spawn(function()
				for i,v in pairs(workspace:GetChildren()) do
					if v:FindFirstChild("Torso") then
						if v.Name ~= game.Players.LocalPlayer.Name then
							if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
								local A_1 = pass
								local A_2 = v
								local A_3 = 
									{
										["Type"] = "Normal", 
										["HitEffect"] = "WindEffect", 
										["HurtAnimation"] = nil, 
										["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.01, 
										["CameraShake"] = "Bump", 
										["HitTime"] = 0, 
										["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
										["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
										["Damage"] = 10
									}
								local Event = game:GetService("ReplicatedStorage").Remotes.Damage
								Event:InvokeServer(A_1, A_2, A_3)
							end
						end
					end
				end
			end)
			wait(0.1)
		end
		spawn(function()
			for i,v in pairs(workspace:GetChildren()) do
				if v:FindFirstChild("Torso") then
					if v.Name ~= game.Players.LocalPlayer.Name then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
							local A_1 = pass
							local A_2 = v
							local A_3 = 
								{
									["Type"] = "Normal", 
									["HitEffect"] = "WindEffect", 
									["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
									["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 50, 
									["CameraShake"] = "Bump", 
									["HitTime"] = 0, 
									["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
									["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
									["Damage"] = 10
								}
							local Event = game:GetService("ReplicatedStorage").Remotes.Damage
							Event:InvokeServer(A_1, A_2, A_3)
						end
					end
				end
			end
		end)
	end

	function barrageserious()
		if seriousbarragecooldown == true then return end
		if textonattack == true then
			talk("Consecutive Serious Punch")
		end
		spawn(function()
			seriousbarragecooldown = true
			wait(3)
			seriousbarragecooldown = false
		end)
		local BarrageAnim = Instance.new("Animation")
		BarrageAnim.AnimationId = "rbxassetid://4800436094"
		local BarrageAnimTrack = humanoid:LoadAnimation(BarrageAnim)
		BarrageAnimTrack.Priority = Enum.AnimationPriority.Action
		BarrageAnimTrack.Looped = false
		BarrageAnimTrack:Play()
		wait(0.5)
		for i = 1,7 do
			spawn(function()
				for i,v in pairs(workspace:GetChildren()) do
					if v:FindFirstChild("Torso") then
						if v.Name ~= game.Players.LocalPlayer.Name then
							if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
								local A_1 = pass
								local A_2 = v
								local A_3 = 
									{
										["Type"] = "Normal", 
										["HitEffect"] = "BigWindEffect", 
										["HurtAnimation"] = nil, 
										["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.01, 
										["CameraShake"] = "Bump", 
										["HitTime"] = 0, 
										["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
										["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Explosion, 
										["Damage"] = 10
									}
								local Event = game:GetService("ReplicatedStorage").Remotes.Damage
								Event:InvokeServer(A_1, A_2, A_3)
							end
						end
					end
				end
			end)
			wait(0.1)
		end
		spawn(function()
			for i,v in pairs(workspace:GetChildren()) do
				if v:FindFirstChild("Torso") then
					if v.Name ~= game.Players.LocalPlayer.Name then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
							local A_1 = pass
							local A_2 = v
							local A_3 = 
								{
									["Type"] = "Normal", 
									["HitEffect"] = "BigWindEffect", 
									["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
									["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 100, 
									["CameraShake"] = "Bump", 
									["HitTime"] = 0, 
									["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
									["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Explosion, 
									["Damage"] = 10
								}
							local Event = game:GetService("ReplicatedStorage").Remotes.Damage
							Event:InvokeServer(A_1, A_2, A_3)
						end
					end
				end
			end
		end)
	end

	function uppercutnormal()
		if uppercutnormalcooldown == true then return end
		if textonattack == true then
			talk("Normal Uppercut")
		end
		spawn(function()
			uppercutnormalcooldown = true
			wait(2)
			uppercutnormalcooldown = false
		end)
		local UpperCutAnim = Instance.new("Animation")
		UpperCutAnim.AnimationId = "rbxassetid://4300091335"
		local UpperCutAnimTrack = humanoid:LoadAnimation(UpperCutAnim)
		UpperCutAnimTrack.Priority = Enum.AnimationPriority.Action
		UpperCutAnimTrack.Looped = false
		UpperCutAnimTrack:Play()
		spawn(function()
			for i,v in pairs(workspace:GetChildren()) do
				if v:FindFirstChild("Torso") then
					if v.Name ~= game.Players.LocalPlayer.Name then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
							local A_1 = pass
							local A_2 = v
							local A_3 = 
								{
									["Type"] = "Normal", 
									["HitEffect"] = "WindEffect", 
									["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1, 
									["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 25 + Vector3.new(0.01,50,0.01), 
									["CameraShake"] = "Bump", 
									["HitTime"] = 0, 
									["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
									["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
									["Damage"] = 10
								}
							local Event = game:GetService("ReplicatedStorage").Remotes.Damage
							Event:InvokeServer(A_1, A_2, A_3)
						end
					end
				end
			end
		end)
	end

	function uppercutserious()
		if uppercutseriouscooldown == true then return end
		if textonattack == true then
			talk("Serious Uppercut")
		end
		spawn(function()
			uppercutseriouscooldown = true
			wait(2)
			uppercutseriouscooldown = false
		end)
		local UpperCutAnim = Instance.new("Animation")
		UpperCutAnim.AnimationId = "rbxassetid://4300091335"
		local UpperCutAnimTrack = humanoid:LoadAnimation(UpperCutAnim)
		UpperCutAnimTrack.Priority = Enum.AnimationPriority.Action
		UpperCutAnimTrack.Looped = false
		UpperCutAnimTrack:Play()
		spawn(function()
			for i,v in pairs(workspace:GetChildren()) do
				if v:FindFirstChild("Torso") then
					if v.Name ~= game.Players.LocalPlayer.Name then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
							local A_1 = pass
							local A_2 = v
							local A_3 = 
								{
									["Type"] = "Normal", 
									["HitEffect"] = "BigWindEffect", 
									["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1, 
									["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 70 + Vector3.new(0.01,100,0.01), 
									["CameraShake"] = "Bump", 
									["HitTime"] = 0, 
									["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
									["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Explosion, 
									["Damage"] = 10
								}
							local Event = game:GetService("ReplicatedStorage").Remotes.Damage
							Event:InvokeServer(A_1, A_2, A_3)
						end
					end
				end
			end
		end)
	end
	local attacking = false
	uis.InputBegan:Connect(function(input,gpe)
		if dead == true then return end
		if input.UserInputType == Enum.UserInputType.Keyboard then
			if input.KeyCode == Enum.KeyCode.R then
				tp()
			end
			if attacking == true then return end
			if input.KeyCode == Enum.KeyCode.One then
				spawn(function()
					attacking = true
					wait(0)
					attacking = false
				end)
				normalpunch()
			elseif input.KeyCode == Enum.KeyCode.Two then
				spawn(function()
					attacking = true
					wait(0)
					attacking = false
				end)
				barragenormal()
			elseif input.KeyCode == Enum.KeyCode.Three then
				spawn(function()
					attacking = true
					wait(0)
					attacking = false
				end)
				uppercutnormal()
			elseif input.KeyCode == Enum.KeyCode.Four then
				spawn(function()
					attacking = true
					wait(0)
					attacking = false
				end)
				barrageserious()
			elseif input.KeyCode == Enum.KeyCode.Five then
				spawn(function()
					attacking = true
					wait(0)
					attacking = false
				end)
				uppercutserious()
			elseif input.KeyCode == Enum.KeyCode.Six then
				spawn(function()
					attacking = true
					wait(0)
					attacking = false
				end)
				seriouspunch()
			end
		end
	end)
end)

section2:addButton("bluebone lmb sans", function()
	AnimationId = '0'
	local player = game.Players.LocalPlayer
	local mouse = player:GetMouse()
	bind = "x" -- has to be lowercase


	mouse.KeyDown:connect(function(key)
		if key == bind then
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://5657141412"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 5,
					["Type"] = "Normal",
					["HitEffect"] = "SpearHitEffect",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 5,
					["Type"] = "Normal",
					["HitEffect"] = "SakuyaBar",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
		end
	end)
end)
section3:addButton("XGaster", function()
	local player = game.Players.LocalPlayer
	repeat wait() until player.Character.Humanoid
	local humanoid = player.Character.Humanoid
	local mouse = player:GetMouse()

	local m = game.Players.LocalPlayer:GetMouse()
	db = true
	m.keyDown:connect(function(k)
		k = k:lower()
		if k == "x" then
			if db == true then
				local A_1 = 
					{
						[1] = getrenv()._G.Pass, 
						[2] = "Overwrite", 
						[3] = "Summon"
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
				Event:InvokeServer(A_1)
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{	
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "PurpleHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{	
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "PurpleHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{	
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "PurpleHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{	
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "PurpleHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{	
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "PurpleHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				wait(0.1)
				local A_1 = 
					{
						[1] = getrenv()._G.Pass, 
						[2] = "Chatted", 
						[3] = "ACT = [SUMMON KNIVES]", 
						[4] = Color3.new(1, 0.0784314, 1)
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Events
				Event:FireServer(A_1)
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{	
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "IntHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				local A_1 = 
					{
						[1] = getrenv()._G.Pass, 
						[2] = "Overwrite", 
						[3] = "UnSummon"
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
				Event:InvokeServer(A_1)

			end
		end
	end)
	local player = game.Players.LocalPlayer
	repeat wait() until player.Character.Humanoid
	local humanoid = player.Character.Humanoid
	local mouse = player:GetMouse()


	local anim = Instance.new("Animation")
	anim.AnimationId = "rbxassetid://3201766456"

	mouse.KeyDown:connect(function(key)
		if key == "z" then
			local playAnim = humanoid:LoadAnimation(anim)
			playAnim:Play()
			wait(3)
			playAnim:Stop()

		end
	end)

	local m = game.Players.LocalPlayer:GetMouse()
	db = true
	m.keyDown:connect(function(k)
		k = k:lower()
		if k == "z" then
			if db == true then
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{	
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "YellowHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				wait(0.1)
				local A_1 = 
					{
						[1] = getrenv()._G.Pass, 
						[2] = "Chatted", 
						[3] = "ACT = [SUMMON BARAGE]", 
						[4] = Color3.new(1, 0.0784314, 1)
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Events
				Event:FireServer(A_1)
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{	
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "IntHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{	
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "YellowHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{	
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "YellowHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{	
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "YellowHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{	
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "YellowHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{	
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "YellowHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{	
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "HateHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{	
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "HateHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				db = false
				wait(1)
				db = true
			end
		end
	end)
	AnimationId = '0'
	local player = game.Players.LocalPlayer
	local mouse = player:GetMouse()
	bind = "c" -- has to be lowercase


	mouse.KeyDown:connect(function(key)
		if key == bind then
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Overwrite", 
					[3] = "Summon"
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
			Event:InvokeServer(A_1)

			game.Players:Chat[[[ACT] = [CONTROL =  SPAWN CHARACTER = INK!SANS   = FORCE SET SPAWN DELTA!SANS SPECIAL ATTACK]]


			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "FinalDeltaAttack",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Overwrite", 
					[3] = "UnSummon"
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
			Event:InvokeServer(A_1)

			game.Players:Chat[[[ACT] = [CONTROL =  SPAWN CHARACTER = INK!SANS   = FORCE SET SPAWN DELTA!SANS SPECIAL ATTACK]]


			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "SakuyaOrb",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()

			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "SansLineBones",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "SansLineBones",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "SansLineBones",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "SansLineBones",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "SansLineBones",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "SansLineBones",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "SansLineBones",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "SansLineBones",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Normal",
					["HitEffect"] = "SansLineBones",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 5,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeEffect4",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 5,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect4",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 5,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect4",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 5,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect4",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
		end
	end)

	m.keyDown:connect(function(k)
		k = k:lower()
		if k == "v" then
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "SakuyaOrb",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "UndyingExplosion",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "UndyingExplosion",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "UndyingExplosion",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "UndyingExplosion",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "UndyingExplosion",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "UndyingExplosion",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "Knockback",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "UndyingExplosion",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnockBack",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "Knockback",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "UndyingExplosion",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnockBack",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "UndyingExplosion",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "UndyingExplosion",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "UndyingExplosion",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "UndyingExplosion",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "UndyingExplosion",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "UndyingExplosion",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "Knockback",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "UndyingExplosion",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnockBack",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "Knockback",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "UndyingExplosion",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnockBack",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "UndyingExplosion",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "UndyingExplosion",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "UndyingExplosion",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "UndyingExplosion",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(100, 100, 100), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)
	section1:addButton("Epic!Sans V2", function()
		local textonattack = true
		local godmode = true
		local autoblock = true
		local dead = false
		local pass = getrenv()._G.Pass
		game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
		local Players = game:GetService("Players")
		local localPlayer = Players.LocalPlayer
		local uis = game:GetService("UserInputService")
		local mouse = game.Players.LocalPlayer:GetMouse()
		game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "XSans"
		if not localPlayer.Character then
			localPlayer.CharacterAdded:Wait()
		end
		wait(2)
		print("running main thingy idk")
		local humanoid = localPlayer.Character:WaitForChild("Humanoid")
		humanoid.Died:Connect(function()
			dead = true
			warn("dead how")
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,-10,0)
		end)
		local NormalPunchAnim = Instance.new("Animation")
		NormalPunchAnim.AnimationId = "rbxassetid://5776238345"
		local NormalPunchAnimTrack = humanoid:LoadAnimation(NormalPunchAnim)
		NormalPunchAnimTrack.Priority = Enum.AnimationPriority.Action
		NormalPunchAnimTrack.Looped = false

		-- Remove Animations/Attacks:
		local AnimationTracks = humanoid:GetPlayingAnimationTracks()
		repeat wait()
		until game.Players.LocalPlayer.Backpack:FindFirstChild("Main")
		game.Players.LocalPlayer.Backpack.Main:WaitForChild("XSansMoves"):Destroy()
		for i, track in pairs (AnimationTracks) do
			track:Stop()
		end

		spawn(function()
			wait(0.5)
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		end)

		-- Music:

		local music = game.Players.LocalPlayer:WaitForChild("StarterPlaylist")["1Theme"]
		music.SoundId = "rbxassetid://6123744744"
		music.TimePosition = 0
		music.Looped = true
		music:Play()

		-- GodMode:

		spawn(function()
			wait(2)
			if godmode == true then
				while wait(0.1) do
					if dead == true then return end
					local A_1 = 
						{
							[1] = pass, 
							[2] = "InvFrames", 
							[3] = 0.5
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Events
					Event:FireServer(A_1)
				end
			end
		end)

		-- Auto Block:
		spawn(function()
			if autoblock == true then
				while wait(0.1) do
					if dead == true then return end
					local A_1 = 
						{
							[1] = pass, 
							[2] = "Blocking", 
							[3] = true
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Functions
					Event:InvokeServer(A_1)
				end
			end
		end)

		-- UnAnchor:

		spawn(function()
			while wait() do
				for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA("Part") then
						v.Anchored = false
					end
				end
			end
		end)

		-- Talk Function:

		function talk(message)
			if dead == true then return end
			local A_1 = 
				{
					[1] = pass,
					[2] = "Chatted", 
					[3] = message, 
					[4] = Color3.new(128,0,128)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
		end

		game.Players.LocalPlayer.Chatted:Connect(function(msg)
			talk(msg)
		end)

		-- Attack Coolowns:

		local normalpunchcooldown = false
		local normalbarragecooldown = false
		local uppercutnormalcooldown = false
		local seriousbarragecooldown = false
		local uppercutseriouscooldown = false
		local seriouspunchcooldown = false

		-- Attacks:

		function seriouspunch()
			if seriouspunchcooldown == true then return end
			spawn(function()
				seriouspunchcooldown = true
				wait(5)
				seriouspunchcooldown = false
			end)
			if textonattack == true then
				talk("totally not from Won punch man serious punch!")
			end
			NormalPunchAnimTrack:Play()
			spawn(function()
				for i,v in pairs(workspace:GetChildren()) do
					if v:FindFirstChild("Torso") then
						if v.Name ~= game.Players.LocalPlayer.Name then
							if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
								local A_1 = pass
								local A_2 = v
								local A_3 = 
									{
										["Type"] = "Normal", 
										["HitEffect"] = "RainbowExplosion", 
										["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
										["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 100, 
										["CameraShake"] = "Bump", 
										["HitTime"] = 0, 
										["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
										["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordSlash,
										["Damage"] = 10
									}
								local Event = game:GetService("ReplicatedStorage").Remotes.Damage
								Event:InvokeServer(A_1, A_2, A_3)
							end
						end
					end
				end
			end)
		end

		function normalpunch()
			if normalpunchcooldown == true then return end
			spawn(function()
				normalpunchcooldown = true
				wait(0.3)
				normalpunchcooldown = false
			end)
			if textonattack == true then
				talk("Epic tap!")
			end
			NormalPunchAnimTrack:Play()
			spawn(function()
				for i,v in pairs(workspace:GetChildren()) do
					if v:FindFirstChild("Torso") then
						if v.Name ~= game.Players.LocalPlayer.Name then
							if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
								local A_1 = pass
								local A_2 = v
								local A_3 = 
									{
										["Type"] = "Normal", 
										["HitEffect"] = "RainbowExplosion", 
										["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
										["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 50, 
										["CameraShake"] = "Bump", 
										["HitTime"] = 0, 
										["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
										["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
										["Damage"] = 10
									}
								local Event = game:GetService("ReplicatedStorage").Remotes.Damage
								Event:InvokeServer(A_1, A_2, A_3)
							end
						end
					end
				end
			end)
		end

		function tp()
			if game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value ~= nil then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Torso.CFrame * CFrame.new(0,0,5)
			else
				game.Players.LocalPlayer.Character:MoveTo(mouse.Hit.p)
			end
		end

		function barragenormal()
			if normalbarragecooldown == true then return end
			if textonattack == true then
				talk("EPIC CONSECUTIVE BARRAGE!")
			end
			spawn(function()
				normalbarragecooldown = true
				wait(3)
				normalbarragecooldown = false
			end)
			local BarrageAnim = Instance.new("Animation")
			BarrageAnim.AnimationId = "rbxassetid://4800436094"
			local BarrageAnimTrack = humanoid:LoadAnimation(BarrageAnim)
			BarrageAnimTrack.Priority = Enum.AnimationPriority.Action
			BarrageAnimTrack.Looped = false
			BarrageAnimTrack:Play()
			wait(0.5)
			for i = 1,7 do
				spawn(function()
					for i,v in pairs(workspace:GetChildren()) do
						if v:FindFirstChild("Torso") then
							if v.Name ~= game.Players.LocalPlayer.Name then
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
									local A_1 = pass
									local A_2 = v
									local A_3 = 
										{
											["Type"] = "Normal", 
											["HitEffect"] = "ConstantExplosions", 
											["HurtAnimation"] = nil, 
											["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.01, 
											["CameraShake"] = "Bump", 
											["HitTime"] = 0, 
											["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
											["Sound"] = game:GetService("ReplicatedStorage").Sounds.HumanVoice, 
											["Damage"] = 10
										}
									local Event = game:GetService("ReplicatedStorage").Remotes.Damage
									Event:InvokeServer(A_1, A_2, A_3)
								end
							end
						end
					end
				end)
				wait(0.1)
			end
			spawn(function()
				for i,v in pairs(workspace:GetChildren()) do
					if v:FindFirstChild("Torso") then
						if v.Name ~= game.Players.LocalPlayer.Name then
							if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
								local A_1 = pass
								local A_2 = v
								local A_3 = 
									{
										["Type"] = "Normal", 
										["HitEffect"] = "ConstantExplosions", 
										["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
										["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 50, 
										["CameraShake"] = "Bump", 
										["HitTime"] = 0, 
										["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
										["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
										["Damage"] = 10
									}
								local Event = game:GetService("ReplicatedStorage").Remotes.Damage
								Event:InvokeServer(A_1, A_2, A_3)
							end
						end
					end
				end
			end)
		end

		function barrageserious()
			if seriousbarragecooldown == true then return end
			if textonattack == true then
				talk("Consecutive TROLL BARRAGE- ORA ORA ORA!")
			end
			spawn(function()
				seriousbarragecooldown = true
				wait(3)
				seriousbarragecooldown = false
			end)
			local BarrageAnim = Instance.new("Animation")
			BarrageAnim.AnimationId = "rbxassetid://4800436094"
			local BarrageAnimTrack = humanoid:LoadAnimation(BarrageAnim)
			BarrageAnimTrack.Priority = Enum.AnimationPriority.Action
			BarrageAnimTrack.Looped = false
			BarrageAnimTrack:Play()
			wait(0.5)
			for i = 1,7 do
				spawn(function()
					for i,v in pairs(workspace:GetChildren()) do
						if v:FindFirstChild("Torso") then
							if v.Name ~= game.Players.LocalPlayer.Name then
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
									local A_1 = pass
									local A_2 = v
									local A_3 = 
										{
											["Type"] = "Normal", 
											["HitEffect"] = "HateExplosion", 
											["HurtAnimation"] = nil, 
											["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.01, 
											["CameraShake"] = "Bump", 
											["HitTime"] = 0, 
											["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
											["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Explosion, 
											["Damage"] = 10
										}
									local Event = game:GetService("ReplicatedStorage").Remotes.Damage
									Event:InvokeServer(A_1, A_2, A_3)
								end
							end
						end
					end
				end)
				wait(0.1)
			end
			spawn(function()
				for i,v in pairs(workspace:GetChildren()) do
					if v:FindFirstChild("Torso") then
						if v.Name ~= game.Players.LocalPlayer.Name then
							if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
								local A_1 = pass
								local A_2 = v
								local A_3 = 
									{
										["Type"] = "Normal", 
										["HitEffect"] = "HateExplosion", 
										["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
										["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 100, 
										["CameraShake"] = "Bump", 
										["HitTime"] = 0, 
										["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
										["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Explosion, 
										["Damage"] = 10
									}
								local Event = game:GetService("ReplicatedStorage").Remotes.Damage
								Event:InvokeServer(A_1, A_2, A_3)
							end
						end
					end
				end
			end)
		end

		function uppercutnormal()
			if uppercutnormalcooldown == true then return end
			if textonattack == true then
				talk("normal epic pog tap")
			end
			spawn(function()
				uppercutnormalcooldown = true
				wait(2)
				uppercutnormalcooldown = false
			end)
			local UpperCutAnim = Instance.new("Animation")
			UpperCutAnim.AnimationId = "rbxassetid://4300091335"
			local UpperCutAnimTrack = humanoid:LoadAnimation(UpperCutAnim)
			UpperCutAnimTrack.Priority = Enum.AnimationPriority.Action
			UpperCutAnimTrack.Looped = false
			UpperCutAnimTrack:Play()
			spawn(function()
				for i,v in pairs(workspace:GetChildren()) do
					if v:FindFirstChild("Torso") then
						if v.Name ~= game.Players.LocalPlayer.Name then
							if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
								local A_1 = pass
								local A_2 = v
								local A_3 = 
									{
										["Type"] = "Normal", 
										["HitEffect"] = "SpearJusticeExplosion", 
										["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1, 
										["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 25 + Vector3.new(0.01,50,0.01), 
										["CameraShake"] = "Bump", 
										["HitTime"] = 0, 
										["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
										["Sound"] = game:GetService("ReplicatedStorage").Sounds.HeavySlash, 
										["Damage"] = 10
									}
								local Event = game:GetService("ReplicatedStorage").Remotes.Damage
								Event:InvokeServer(A_1, A_2, A_3)
							end
						end
					end
				end
			end)
		end

		function uppercutserious()
			if uppercutseriouscooldown == true then return end
			if textonattack == true then
				talk("serious quake pog cut!")
			end
			spawn(function()
				uppercutseriouscooldown = true
				wait(2)
				uppercutseriouscooldown = false
			end)
			local UpperCutAnim = Instance.new("Animation")
			UpperCutAnim.AnimationId = "rbxassetid://4300091335"
			local UpperCutAnimTrack = humanoid:LoadAnimation(UpperCutAnim)
			UpperCutAnimTrack.Priority = Enum.AnimationPriority.Action
			UpperCutAnimTrack.Looped = false
			UpperCutAnimTrack:Play()
			spawn(function()
				for i,v in pairs(workspace:GetChildren()) do
					if v:FindFirstChild("Torso") then
						if v.Name ~= game.Players.LocalPlayer.Name then
							if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
								local A_1 = pass
								local A_2 = v
								local A_3 = 
									{
										["Type"] = "Normal", 
										["HitEffect"] = "SpearJusticeExplosion", 
										["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1, 
										["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 70 + Vector3.new(0.01,100,0.01), 
										["CameraShake"] = "Bump", 
										["HitTime"] = 0, 
										["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
										["Sound"] = game:GetService("ReplicatedStorage").Sounds.Crack, 
										["Damage"] = 10
									}
								local Event = game:GetService("ReplicatedStorage").Remotes.Damage
								Event:InvokeServer(A_1, A_2, A_3)
							end
						end
					end
				end
			end)
		end
		local attacking = false
		uis.InputBegan:Connect(function(input,gpe)
			if dead == true then return end
			if input.UserInputType == Enum.UserInputType.Keyboard then
				if input.KeyCode == Enum.KeyCode.R then
					tp()
				end
				if attacking == true then return end
				if input.KeyCode == Enum.KeyCode.One then
					spawn(function()
						attacking = true
						wait(0)
						attacking = false
					end)
					normalpunch()
				elseif input.KeyCode == Enum.KeyCode.Two then
					spawn(function()
						attacking = true
						wait(0)
						attacking = false
					end)
					barragenormal()
				elseif input.KeyCode == Enum.KeyCode.Three then
					spawn(function()
						attacking = true
						wait(0)
						attacking = false
					end)
					uppercutnormal()
				elseif input.KeyCode == Enum.KeyCode.Four then
					spawn(function()
						attacking = true
						wait(0)
						attacking = false
					end)
					barrageserious()
				elseif input.KeyCode == Enum.KeyCode.Five then
					spawn(function()
						attacking = true
						wait(0)
						attacking = false
					end)
					uppercutserious()
				elseif input.KeyCode == Enum.KeyCode.Six then
					spawn(function()
						attacking = true
						wait(0)
						attacking = false
					end)
					seriouspunch()
				end
			end
		end)end)
end)

section4:addButton("Godmode (Dm antiiiic if not working)", function()
	while wait() do
		local args = {
			[1] = {
				[1] = getrenv()._G.Pass,
				[2] = "InvFrames",
				[3] = 4.5
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
		for tryhard,mode in pairs(game:service("Players").LocalPlayer.character.HumanoidRootPart:GetChildren()) do
			if mode.Name == "Server" then
				mode.Name = "no"
				mode:Destroy()
			end
		end
		for i,v in pairs(game:service("Players").LocalPlayer.character:GetChildren()) do
			if v.Name == "Hit" then
				v.Name = "ae"
				v:Destroy()
			end
		end
	end
end)

section1:addButton("Dusttrust sans", function()
	local phase = 1
	local inv = false
	local dead = false
	local holdbone = false
	local CAS = game:GetService("ContextActionService")
	local FREEZE_COMMAND  = "Stunned"
	CAS:UnbindAction(FREEZE_COMMAND)
	local pass = getrenv()._G.Pass
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
	local Players = game:GetService("Players")
	local localPlayer = Players.LocalPlayer
	local mouse = localPlayer:GetMouse()
	game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Sans"
	if not localPlayer.Character then
		localPlayer.CharacterAdded:Wait()
	end
	wait(0.5)
	local root = localPlayer.Character.HumanoidRootPart
	wait(2)
	print("running main thingy idk")

	local humanoid = localPlayer.Character:WaitForChild("Humanoid")

	humanoid.Died:Connect(function()
		print("died")
		for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
			v:Destroy()
		end
		dead = true
		inv = false
	end)

	spawn(function()
		while wait() do
			if dead == true then break end
			local A_1 = 
				{
					[1] = pass, 
					[2] = "ChangeSetting", 
					[3] = "DeathScene", 
					[4] = false
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Functions
			Event:InvokeServer(A_1)
		end
	end)

	spawn(function()
		while wait() do
			if dead == true then break end
			if holdbone == true then
				if game.Players.LocalPlayer.Character.Bone.Transparency ~= 0 then
					local A_1 = 
						{
							[1] = getrenv()._G.Pass, 
							[2] = "SpawnBone", 
							[3] = true, 
							[4] = true
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
					Event:InvokeServer(A_1)
				end
			end
		end
	end)

	function hidebone()
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "SpawnBone", 
				[3] = false, 
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
		Event:InvokeServer(A_1)
	end

	function bone(v)
		spawn(function()
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "SpawnBone", 
					[3] = v, 
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
			Event:InvokeServer(A_1)
		end)
	end

	function stun(val)
		if val == true then
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			CAS:BindActionAtPriority(
				FREEZE_COMMAND,
				function() 
					return Enum.ContextActionResult.Sink
				end,
				false,
				Enum.ContextActionPriority.High.Value,
				Enum.KeyCode.W,
				Enum.KeyCode.S,
				Enum.KeyCode.A,
				Enum.KeyCode.D,
				Enum.KeyCode.F,
				Enum.KeyCode.R,
				Enum.KeyCode.One,
				Enum.KeyCode.Two,
				Enum.KeyCode.Three,
				Enum.KeyCode.Four,
				Enum.KeyCode.Five,
				Enum.KeyCode.Six,
				Enum.KeyCode.Seven,
				Enum.KeyCode.Eight,
				Enum.KeyCode.Nine,
				Enum.KeyCode.Zero
			)
		elseif val == false then
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
			CAS:UnbindAction(FREEZE_COMMAND)
		end
	end

	function unblock()
		spawn(function()
			for i = 1,5 do
				wait()
				local A_1 = 
					{
						[1] = pass, 
						[2] = "Blocking", 
						[3] = false
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Functions
				Event:InvokeServer(A_1)
			end
		end)
	end



	AnimationId = '0'
	local player = game.Players.LocalPlayer
	local mouse = player:GetMouse()
	bind = "h" -- has to be lowercase


	mouse.KeyDown:connect(function(key)
		if key == bind then
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "BoneHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)

			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "WindHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)

			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "SakuyaOrb",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)

			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "SansLineBones",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "SansLineBones",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "SansLineBones",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnockBack",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "BiggerBurstEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "SansLineBones",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "BigWindEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "BurstEffect1",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

	spawn(function()
		while true do
			if dead == true then break end
			wait()
			if inv == true then
				spawn(function()
					local A_1 = 
						{
							[1] = pass, 
							[2] = "InvFrames", 
							[3] = 0.5
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Events
					Event:FireServer(A_1)
				end)
			end
		end
	end)

	local m = game.Players.LocalPlayer:GetMouse()
	db = true
	m.keyDown:connect(function(k)
		k = k:lower()
		if k == "h" then
			if db == true then
				local args = {
					[1] = {
						[1] = getrenv()._G.Pass,
						[2] = "Telekinesis",
						[3] = "Special2",
						[4] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
					}
				}

				game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))

			end
		end
	end)

	function hitnear()
		spawn(function()
			for i,v in pairs(workspace:GetChildren()) do
				if v:FindFirstChild("Torso") then
					if v.Name ~= game.Players.LocalPlayer.Name then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character["Right Leg"].Position).Magnitude <= 10 then
							local A_1 = pass
							local A_2 = v
							local A_3 = 
								{
									["Type"] = "Knockback", 
									["HitEffect"] = "BoneHitEffect", 
									["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
									["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 100, 
									["CameraShake"] = "Bump", 
									["HitTime"] = 1, 
									["VictimCFrame"] = v.HumanoidRootPart.CFrame, 
									["Sound"] = nil, 
									["Damage"] = 0
								}
							local Event = game:GetService("ReplicatedStorage").Remotes.Damage
							Event:InvokeServer(A_1, A_2, A_3)
						end
					end
				end
			end
		end)
	end

	AnimationId = '0'
	local player = game.Players.LocalPlayer
	local mouse = player:GetMouse()
	bind = "g" -- has to be lowercase


	mouse.KeyDown:connect(function(key)
		if key == bind then
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "BoneHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)

			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "WindHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)

			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "SakuyaOrb",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)

			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "SansLineBones",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "SansLineBones",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "SansLineBones",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnockBack",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "BiggerBurstEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "SansLineBones",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "BigWindEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "BurstEffect1",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

	function talk(text,color)
		if dead == true then return end
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "Chatted", 
				[3] = text, 
				[4] = color
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
	end

	function getlockchar()
		local char = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		return char
	end

	function getlock()
		local pos = mouse.Hit.p
		if game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value ~= nil then
			pos = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
		end
		warn(pos)
		return pos
	end


	-- AMIMATIONS:

	local PunchAnim = Instance.new("Animation")
	PunchAnim.AnimationId = "rbxassetid://4357851278"
	local PunchAnimTrack = humanoid:LoadAnimation(PunchAnim)
	PunchAnimTrack.Priority = Enum.AnimationPriority.Action
	PunchAnimTrack.Looped = false

	local PunchAnim2 = Instance.new("Animation")
	PunchAnim2.AnimationId = "rbxassetid://4357872409"
	local PunchAnim2Track = humanoid:LoadAnimation(PunchAnim2)
	PunchAnim2Track.Priority = Enum.AnimationPriority.Action
	PunchAnim2Track.Looped = false

	local PunchAnim3 = Instance.new("Animation")
	PunchAnim3.AnimationId = "rbxassetid://4357890370"
	local PunchAnim3Track = humanoid:LoadAnimation(PunchAnim3)
	PunchAnim3Track.Priority = Enum.AnimationPriority.Action
	PunchAnim3Track.Looped = false

	local LastPunchAnim = Instance.new("Animation")
	LastPunchAnim.AnimationId = "rbxassetid://4357907686"
	local LastPunchAnimTrack = humanoid:LoadAnimation(LastPunchAnim)
	LastPunchAnimTrack.Priority = Enum.AnimationPriority.Action
	LastPunchAnimTrack.Looped = false

	local SleepAnim = Instance.new("Animation")
	SleepAnim.AnimationId = "rbxassetid://3877055653"
	local SleepAnimTrack = humanoid:LoadAnimation(SleepAnim)
	SleepAnimTrack.Priority = Enum.AnimationPriority.Action
	SleepAnimTrack.Looped = true
	--SleepAnimTrack:Play()

	local HurtAnim = Instance.new("Animation")
	HurtAnim.AnimationId = "rbxassetid://4460182501"
	local HurtAnimTrack = humanoid:LoadAnimation(HurtAnim)
	HurtAnimTrack.Priority = Enum.AnimationPriority.Action
	HurtAnimTrack.Looped = false
	--HurtAnimTrack:Play()

	local HurtGroundAnim = Instance.new("Animation")
	HurtGroundAnim.AnimationId = "rbxassetid://4416715001"
	local HurtGroundAnimTrack = humanoid:LoadAnimation(HurtGroundAnim)
	HurtGroundAnimTrack.Priority = Enum.AnimationPriority.Action
	HurtGroundAnimTrack.Looped = true
	--HurtGroundAnimTrack:Play()

	-- MOVES
	--zmove
	local m = game.Players.LocalPlayer:GetMouse()
	db = true
	m.keyDown:connect(function(k)
		k = k:lower()
		if k == "z" then
			if db == true then
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "CrossLineBones",  
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "CrossLineBones",  
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				wait(0.1)
				local A_1 = 
					{
						[1] = getrenv()._G.Pass, 
						[2] = "Chatted", 
						[3] = "...", 
						[4] = Color3.new(1, 0, 0)
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Events
				Event:FireServer(A_1)
				wait(1.5)
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "CrossLineBones",  
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "CrossLineBones",  
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "CrossLineBones",  
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}

				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				db = false
				wait(8)
				db = true
			end
		end
	end)
	--xmove
	local m = game.Players.LocalPlayer:GetMouse()
	db = true
	m.keyDown:connect(function(k)
		k = k:lower()
		if k == "x" then
			if db == true then
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "BettyAttackHitEffect",  
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.FinalPunchHurt, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "RainbowExplosion",  
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.FinalPunchHurt, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				wait(0.1)
				local A_1 = 
					{
						[1] = getrenv()._G.Pass, 
						[2] = "Chatted", 
						[3] = "i didnt know where to go, what to do... then one idea came up my mind", 
						[4] = Color3.new(1, 0, 0.0156863)
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Events
				Event:FireServer(A_1)
				wait(1.5)
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "RainbowExplosion",  
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.FinalPunchHurt, 
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				db = false
				wait(1)
				db = true
			end
		end
	end)

	--cmove

	m.keyDown:connect(function(k)
		k = k:lower()
		if k == "c" then
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 20,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect4",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 20,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect4",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 20,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect4",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 20,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect4",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 20,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect4",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 20,
					["Type"] = "Normal",
					["HitEffect"] = "KnifeHitEffect4",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "CrossLineBones",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(100, 100, 100), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

	--vmove

	AnimationId = '0'
	local player = game.Players.LocalPlayer
	local mouse = player:GetMouse()
	bind = "g" -- has to be lowercase


	mouse.KeyDown:connect(function(key)
		if key == bind then
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 20,
					["Type"] = "Normal",
					["HitEffect"] = "RainbowExplosion",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 20,
					["Type"] = "Normal",
					["HitEffect"] = "ConstantExplosions",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = {
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 20,
					["Type"] = "Normal",
					["HitEffect"] = "HateHitEffect",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0, -1),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 10
				}
			}

			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(1)
			k:Stop()

			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnockBack",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(100, 100, 100), 
					["CombatInv"] = true,
					["Damage"] = 35
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)



	-- Music:
	for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
		v:Destroy()
	end
	local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
	music.Volume = 0.7
	music.SoundId = "rbxassetid://5972286369"
	music.Looped = true
	music:Play()
	print("musik gone")



	warn("Waiting For Phase 2")
	repeat wait()

	until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 700
	inv = true
	hitnear()
	spawn(function()
		wait()
		local oldcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf * CFrame.new(0,-40,0)
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf
	end)
	wait(0.4)
	stun(true)
	HurtAnimTrack:Play()
	phase = 2
	print("phase "..phase)
	music:Stop()
	wait(2)
	talk("you think you are good enough to kill me in only one blow??",Color3.new(1,0,0))
	wait(3)
	talk("im not that weak",Color3.new(1,0,0))
	wait(3)
	talk("you will have to do more then stab me with that old rusty knife",Color3.new(1,0,0))
	wait(6)
	holdbone = false
	SleepAnimTrack:Stop()
	music.SoundId = "rbxassetid://6069012922"
	music.TimePosition = 0
	music:Play()
	inv = false
	unblock()
	stun(false)
	warn("Waiting For Phase 3")
	repeat wait()

	until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 500
	music:Stop()
	inv = true
	hitnear()
	spawn(function()
		wait()
		local oldcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf * CFrame.new(0,-40,0)
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf
	end)
	wait(0.4)
	stun(true)
	holdbone = true
	wait()
	hidebone()
	wait(3)
	talk("ALPHYS DETERMINATION SHINES INTO SANS SOUL",Color3.new(1,0,0))
	wait(4)
	SleepAnimTrack:Play()
	music.SoundId = "rbxassetid://5858116342"
	music.TimePosition = 0
	music.Looped = false
	music:Play()
	wait(1)
	stun(false)
	SleepAnimTrack:Stop()
	wait(200)
	stun(true)
	wait(5)

	inv = true
	hitnear()
	spawn(function()
		wait()
		local oldcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf * CFrame.new(0,-40,0)
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf
	end)
	wait(0.4)
	stun(true)
	HurtAnimTrack:Play()
	phase = 2
	print("phase "..phase)
	music:Stop()
	wait(2)
	talk("you think you are good enough to kill me in only one blow??",Color3.new(1,0,0))
	wait(3)
	talk("im not that weak",Color3.new(1,0,0))
	wait(3)
	talk("you will have to do more then stab me with that old rusty knife",Color3.new(1,0,0))
	wait(6)
	holdbone = false
	SleepAnimTrack:Stop()
	music.SoundId = "rbxassetid://6069012922"
	music.TimePosition = 0
	music:Play()
	inv = false
	unblock()
	stun(false)
	warn("Waiting For Phase 4")
	repeat wait()

		canmove = false
	until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 500
	music:Stop()
	inv = true
	hitnear()
	spawn(function()
		wait()
		local oldcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf * CFrame.new(0,-40,0)
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf
	end)
	wait(0.4)
	stun(true)
	holdbone = true
	wait()
	hidebone()
	wait(3)
	talk("You feel fear.",Color3.new(1,0,0))
	wait(3)
	talk("You feel scared.",Color3.new(1,0,0))
	wait(3)
	talk("You feel eer ie",Color3.new(1,0,0))
	wait(3)
	talk("You think something is wrong.",Color3.new(1,0,0))
	wait(3)
	SleepAnimTrack:Stop()
	music.SoundId = "rbxassetid://5881326660"
	music.TimePosition = 0
	canmove = true
	local A_1 = 
		{
			[1] = getrenv()._G.Pass, 
			[2] = "Reset"
		}
	local Event = game:GetService("ReplicatedStorage").Remotes.Functions
	Event:InvokeServer(A_1)
end)
section4:addKeybind("Toggle Keybind", Enum.KeyCode.One, function()
print("Activated Keybind")
venyx:toggle()
end, function()
print("Changed Keybind")
end)

section1:addButton("Undyne the True Hero", function()
	--Spawner
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Undyne"

--Music
for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
	v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 0.7
music.SoundId = "rbxassetid://3143843068"
music.Looped = true
music:Play()

--hold spear
local m = game.Players.LocalPlayer:GetMouse()
db = true
m.keyDown:connect(function(k)
	k = k:lower()
	if k == "t" then
		if db == true then
			local A_1 = getrenv()._G.Pass
			local args = {
				[1] = {
					[1] = getrenv()._G.Pass,
					[2] = "SpawnWeapon",
					[3] = true
				}
			}

			game:GetService("ReplicatedStorage").Remotes.UndyneMoves:InvokeServer(unpack(args))

			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			db = false
			wait(1)
			db = true
		end
	end
end)

--remove spear
local m = game.Players.LocalPlayer:GetMouse()
db = true
m.keyDown:connect(function(k)
	k = k:lower()
	if k == "y" then
		if db == true then
			local A_1 = getrenv()._G.Pass
			local args = {
				[1] = {
					[1] = getrenv()._G.Pass,
					[2] = "SpawnWeapon",
					[3] = false
				}
			}

			game:GetService("ReplicatedStorage").Remotes.UndyneMoves:InvokeServer(unpack(args))

			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			db = false
			wait(1)
			db = true
		end
	end
end)

--attacks

--undyne z
	local player = game.Players.LocalPlayer
		repeat wait() until player.Character.Humanoid
		local humanoid = player.Character.Humanoid
		local mouse = player:GetMouse()
	
	
		local anim = Instance.new("Animation")
		anim.AnimationId = "rbxassetid://3201766456"
	
		mouse.KeyDown:connect(function(key)
			if key == "z" then
				local playAnim = humanoid:LoadAnimation(anim)
				playAnim:Play()
				wait(3)
				playAnim:Stop()
	
			end
		end)
	
		local m = game.Players.LocalPlayer:GetMouse()
		db = true
		m.keyDown:connect(function(k)
			k = k:lower()
			if k == "z" then
				if db == true then
					local A_1 = getrenv()._G.Pass
					local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
						{
							["HitTime"] = 0.5, 
							["Type"] = "Normal", 
							["HitEffect"] = "LightHitEffect2",  
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
							["Damage"] = 10
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					Event:InvokeServer(A_1, A_2, A_3)
					local A_1 = getrenv()._G.Pass
					local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
						{
							["HitTime"] = 0.5, 
							["Type"] = "Normal", 
							["HitEffect"] = "PinkWind",  
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
							["Damage"] = 10
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					Event:InvokeServer(A_1, A_2, A_3)
					wait(0.1)
					local A_1 = 
						{
							[1] = getrenv()._G.Pass, 
							[2] = "Chatted", 
							[3] = "You will have to try a little harder to beat me", 
							[4] = Color3.new(1, 0, 0)
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Events
					Event:FireServer(A_1)
					wait(0.1)
					local A_1 = getrenv()._G.Pass
					local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
						{
							["HitTime"] = 0.5, 
							["Type"] = "Normal", 
							["HitEffect"] = "SpearJusticeExplosion",  
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
							["Damage"] = 10
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Events
					Event:FireServer(A_1)
					local A_1 = getrenv()._G.Pass
					local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
					{
					    ["HitTime"] = 0.5, 
					    ["Type"] = "Knockback", 
					    ["HitEffect"] = "UndyingExplosion", 
					    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					    ["Velocity"] = Vector3.new(100, 100, 100), 
					    ["Damage"] = 10
					}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					Event:InvokeServer(A_1, A_2, A_3)
					db = false
					wait(8)
					db = true
				end
			end
			end)


--Special
local m = game.Players.LocalPlayer:GetMouse()
db = true
m.keyDown:connect(function(k)
	k = k:lower()
	if k == "g" then
		if db == true then
			local A_1 = getrenv()._G.Pass
			local args = {
				[1] = {
					[1] = getrenv()._G.Pass,
					[2] = "Spear",
					[3] = "Special"
				}
			}

			game:GetService("ReplicatedStorage").Remotes.UndyneMoves:InvokeServer(unpack(args))
			db = false
			wait(1)
			db = true
		end
	end
end)

--xmove 
	local player = game.Players.LocalPlayer
		repeat wait() until player.Character.Humanoid
		local humanoid = player.Character.Humanoid
		local mouse = player:GetMouse()
	
	
		local anim = Instance.new("Animation")
		anim.AnimationId = "rbxassetid://4064062039"
	
		mouse.KeyDown:connect(function(key)
			if key == "x" then
				local playAnim = humanoid:LoadAnimation(anim)
				playAnim:Play()
				wait(3)
				playAnim:Stop()
	
			end
		end)
	
		local m = game.Players.LocalPlayer:GetMouse()
		db = true
		m.keyDown:connect(function(k)
			k = k:lower()
			if k == "x" then
				if db == true then
					local A_1 = getrenv()._G.Pass
					local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
						{
							["HitTime"] = 0.5, 
							["Type"] = "Normal", 
							["HitEffect"] = "LightHitEffect2",  
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
							["Damage"] = 10
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					Event:InvokeServer(A_1, A_2, A_3)
					local A_1 = getrenv()._G.Pass
					local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
						{
							["HitTime"] = 0.5, 
							["Type"] = "Normal", 
							["HitEffect"] = "LightHitEffect2",  
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
							["Damage"] = 10
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					Event:InvokeServer(A_1, A_2, A_3)
					local A_1 = getrenv()._G.Pass
					local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
						{
							["HitTime"] = 0.5, 
							["Type"] = "Normal", 
							["HitEffect"] = "LightHitEffect2",  
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
							["Damage"] = 10
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					Event:InvokeServer(A_1, A_2, A_3)
					local A_1 = getrenv()._G.Pass
					local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
						{
							["HitTime"] = 0.5, 
							["Type"] = "Normal", 
							["HitEffect"] = "LightHitEffect2",  
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
							["Damage"] = 10
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					Event:InvokeServer(A_1, A_2, A_3)
					local A_1 = getrenv()._G.Pass
					local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
						{
							["HitTime"] = 0.5, 
							["Type"] = "Normal", 
							["HitEffect"] = "LightHitEffect2",  
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
							["Damage"] = 10
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					Event:InvokeServer(A_1, A_2, A_3)
					local A_1 = getrenv()._G.Pass
					local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
						{
							["HitTime"] = 0.5, 
							["Type"] = "Normal", 
							["HitEffect"] = "LightHitEffect2",  
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
							["Damage"] = 10
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					Event:InvokeServer(A_1, A_2, A_3)
					local A_1 = getrenv()._G.Pass
					local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
						{
							["HitTime"] = 0.5, 
							["Type"] = "Normal", 
							["HitEffect"] = "LightHitEffect2",  
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
							["Damage"] = 10
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					Event:InvokeServer(A_1, A_2, A_3)
					local A_1 = getrenv()._G.Pass
					local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
					{
					    ["HitTime"] = 0.5, 
					    ["Type"] = "Knockback", 
					    ["HitEffect"] = "UndyingExplosion", 
					    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					    ["Velocity"] = Vector3.new(100, 100, 100), 
					    ["Damage"] = 10
					}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					Event:InvokeServer(A_1, A_2, A_3)
					db = false
					wait(1)
					db = true
				end
			end
			end)
			
--cmove
	local player = game.Players.LocalPlayer
		repeat wait() until player.Character.Humanoid
		local humanoid = player.Character.Humanoid
		local mouse = player:GetMouse()
	
	
		local anim = Instance.new("Animation")
		anim.AnimationId = "rbxassetid://3207868272"
	
		mouse.KeyDown:connect(function(key)
			if key == "c" then
				local playAnim = humanoid:LoadAnimation(anim)
				playAnim:Play()
				wait(3)
				playAnim:Stop()
	
			end
		end)
	
		local m = game.Players.LocalPlayer:GetMouse()
		db = true
		m.keyDown:connect(function(k)
			k = k:lower()
			if k == "c" then
				if db == true then
					local A_1 = getrenv()._G.Pass
					local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
						{
							["HitTime"] = 0.5, 
							["Type"] = "Normal", 
							["HitEffect"] = "LightHitEffect2",  
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
							["Damage"] = 10
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					Event:InvokeServer(A_1, A_2, A_3)
					local A_1 = getrenv()._G.Pass
					local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
					{
					    ["HitTime"] = 0.5, 
					    ["Type"] = "Knockback", 
					    ["HitEffect"] = "UndyingExplosion", 
					    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					    ["Velocity"] = Vector3.new(100, 100, 100), 
					    ["Damage"] = 10
					}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					Event:InvokeServer(A_1, A_2, A_3)
					db = false
					wait(1)
					db = true
				end
			end
			end)
end)
section3:addButton("Revenge Papyrus", function()

local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local mouse = player:GetMouse()


local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://3201766456"

mouse.KeyDown:connect(function(key)
	if key == "z" then
		local playAnim = humanoid:LoadAnimation(anim)
		playAnim:Play()
		wait(3)
		playAnim:Stop()

	end
end)

local m = game.Players.LocalPlayer:GetMouse()
db = true
m.keyDown:connect(function(k)
	k = k:lower()
	if k == "z" then
		if db == true then
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "YellowHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			wait(0.1)
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Chatted", 
					[3] = "so", 
					[4] = Color3.new(1, 0, 0)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 10, 
					["Type"] = "Normal", 
					["HitEffect"] = "YellowHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			wait(0.1)
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Chatted", 
					[3] = "Ill teach you a lesson you wont forget", 
					[4] = Color3.new(1, 0, 0)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 15, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 20, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 5, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 13, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			db = false
			wait(1)
			db = true
		end
	end
end)
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local mouse = player:GetMouse()


local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://3207868272"

mouse.KeyDown:connect(function(key)
	if key == "x" then
		local playAnim = humanoid:LoadAnimation(anim)
		playAnim:Play()
		wait(3)
		playAnim:Stop()

	end
end)

local m = game.Players.LocalPlayer:GetMouse()
db = true
m.keyDown:connect(function(k)
	k = k:lower()
	if k == "x" then
		if db == true then
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "YellowHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			wait(0.1)
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Chatted", 
					[3] = "Nyeh Heh heh", 
					[4] = Color3.new(1, 1, 1)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.InGround, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "YellowHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			db = false
			wait(1)
			db = true
		end
	end
end)
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local mouse = player:GetMouse()


local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://4062755689"

mouse.KeyDown:connect(function(key)
	if key == "c" then
		local playAnim = humanoid:LoadAnimation(anim)
		playAnim:Play()
		wait(3)
		playAnim:Stop()

	end
end)

local m = game.Players.LocalPlayer:GetMouse()
db = true
m.keyDown:connect(function(k)
	k = k:lower()
	if k == "c" then
		if db == true then
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "YellowHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			wait(0.1)
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Chatted", 
					[3] = "You need someone to teach you good manners", 
					[4] = Color3.new(1, 1, 1)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "IntHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.InGround, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "YellowHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "YellowHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "YellowHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "YellowHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "YellowHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "YellowHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "YellowHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "YellowHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{	
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "YellowHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			db = false
			wait(1)
			db = true
		end
	end
end)
AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "v" -- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind then
game.Players:Chat[[This is a lesson!]]


local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4820768545"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4820768545"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4820768545"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4820768545"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4820768545"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4820768545"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4820768545"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4820768545"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
game.Players:Chat[[GIVE ME SANS BACK!!!!!]]
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4820768545"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "SpearJusticeExplosion",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
game.Players:Chat[[JUST GIVE ME HIM BACK!]]
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4820768545"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "ConstantExplosions",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4820768545"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "HateExplosion",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
			end
			end)
end)