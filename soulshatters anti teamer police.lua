-->:3
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "XSans"
-- Music:
for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 0.7
music.SoundId = "rbxassetid://6293322074"
music.Looped = true
music:Play()
print("musik gone")
--
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
    game.Players.LocalPlayer.Chatted:connect(function(arg_1)
local SW_4 = getrenv()._G.Pass
local SW_5 = "Chatted"
local SW_6 = arg_1
local SW_7 = Color3.fromRGB(0,255,255)
game.ReplicatedStorage.Remotes.Events:FireServer({SW_4,"Chatted",SW_6,Color3.fromRGB(0,255,255)})
end)
game.Players:Chat(("Anti teamer mode on! >:3"))
wait(2.25)

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "[Anti teamer police]"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(135,206,250)
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(135,206,250)
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 = Color3.fromRGB(255,255,0)
	

--teamer suck
local uis=game:GetService("UserInputService");
uis.InputBegan:connect(function(input)
    if input.KeyCode==Enum.KeyCode.E then
game.Players.LocalPlayer.Character:WaitForChild("XSansKnifeSummon")
game.Players.LocalPlayer.Character.XSansKnifeSummon:Destroy()
        local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "HOI mr.anti-teamer knife", 
				[4] = Color3.new(0,255,255)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		wait(0.5)
                k:Stop()
    end
end)

 
uis.InputEnded:connect(function(input)
    if input.KeyCode==Enum.KeyCode.E then
        print("Returned");
    end
end)

--Custom Attacks

--bone
game.Players.LocalPlayer:GetMouse()
game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.Z then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "Ya is sans bone :3", 
				[4] = Color3.new(0,255,255)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Normal", 
				["HitEffect"] = "SansLineBones", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
				["HitTime"] = 1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
				["Damage"] = 10
			}
		}
		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

game.Players.LocalPlayer:GetMouse()
game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.Z then
		wait(1.5)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "SansLineBones",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
				["Damage"] = 10
			}
		}
		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

game.Players.LocalPlayer:GetMouse()
game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.Z then
		
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "SansLineBones",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
				["Damage"] = 10
			}
		}
		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

--...
game.Players.LocalPlayer:GetMouse()
game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.X then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "Regret for teaming =3 ", 
				[4] = Color3.new(0,255,255)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Normal", 
				["HitEffect"] = "", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
				["HitTime"] = 1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
				["Damage"] = 10
			}
		}
		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then 
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3786809782"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "CarrotHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then 
		wait(1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3786809782"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "PurpleHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then 
		wait(1.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3786809782"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "IntHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then 
		wait(1.2)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3786809782"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "CarrotHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then 
		wait(1.3)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3786809782"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "IntHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then 
		wait(1.4)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3786809782"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "PurpleHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then 
		wait(1.5)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3786809782"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "PurpleHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then 
		wait(1.6)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3786809782"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "CarrotHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then 
		wait(1.7)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3786809782"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "IntHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then 
		wait(1.8)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3786809782"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "PurpleHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then 
		wait(1.9)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3786809782"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Normal",
				["HitEffect"] = "CarrotHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then 
		wait(2)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3786809782"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Knockback",
				["HitEffect"] = "Wind",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, 200),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

--Heal
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "c" then 
local A_1 = 
{
	[1] = getrenv()._G.Pass,
	[2] = "Overwrite", 
	[3] = "Summon"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
wait(0.6)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "Overwrite", 
	[3] = "Heal"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
wait(0.8)
local A_1 = 
{
	[1] = getrenv()._G.Pass,
	[2] = "Overwrite", 
	[3] = "UnSummon"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
		wait(1)
		k:Stop()
	end
end)


--.w.

game.Players.LocalPlayer:GetMouse()
game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.V then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "get flinged", 
				[4] = Color3.new(0,255,255)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4057830287"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "HeavyHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(-0, 29.999994277954, -0),
				["HitTime"] = 0.5,
				["CombatInv"] = true,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 6
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
	end
end)
