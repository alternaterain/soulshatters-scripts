--Music
KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
KG.Volume = 3
KG.SoundId = "rbxassetid://2998560595"
KG.Looped = true
KG:Play()

--Custom LMB

local player = game:GetService("Players").LocalPlayer
local MoveAnimations = player.Backpack.Main.AsrielMoves.Animations
local ClickAnimations = player.Backpack.Main.AsrielMoves.ModuleScript.Animations.BasicCombat
local pass = getrenv()._G.Pass
local remote = game.ReplicatedStorage.Remotes["Events"]


ClickAnimations.Light1.AnimationId = "rbxassetid://4689503513"
ClickAnimations.Light2.AnimationId = "rbxassetid://5776249806"
ClickAnimations.Light3.AnimationId = "rbxassetid://5776251749"
ClickAnimations.Light4.AnimationId = "rbxassetid://5776253664"
ClickAnimations.Light5.AnimationId = "rbxassetid://5776256280"
ClickAnimations.Light6.AnimationId = "rbxassetid://5776258610"
ClickAnimations.Heavy1.AnimationId = "rbxassetid://4689531984"
ClickAnimations.Heavy2.AnimationId = "rbxassetid://5776230796"
ClickAnimations.Heavy3.AnimationId = "rbxassetid://5776233108"
ClickAnimations.Heavy4.AnimationId = "rbxassetid://4800438618"
ClickAnimations.Heavy5.AnimationId = "rbxassetid://4800416901"
ClickAnimations.Heavy6.AnimationId = "rbxassetid://3201755772"

--Custom Attacks

--Detroit Smash

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then 
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "Detroit, SMASH!", 
				[4] = Color3.new(0,0.7,0.9)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3207868272"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigSlam",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then 
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3207868272"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigSlam",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then 
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3207868272"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigSlam",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then 
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3207868272"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigSlam",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then 
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3207868272"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigSlam",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then 
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3207868272"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigSlam",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then 
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3207868272"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "HighJump",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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

--Shoot Style

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then 
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "Shoot Style!", 
				[4] = Color3.new(0,0.7,0.9)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5858687214"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigWindEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then 
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5858687214"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "HighJump",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then 
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5858687214"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "SmallBurst",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then 
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5858687214"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigSlam",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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

--Delaware Smash

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "c" then 
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "Dela ware, SMASH!", 
				[4] = Color3.new(0,0.7,0.9)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5667215116"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigSlam",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "c" then 
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5667215116"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigSlam",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "c" then 
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5667215116"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigSlam",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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

--1000000% Percent Delaware Detroit Smash

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then 
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "One Million Percent, Dela ware, Detroit..SMAAAAAAAAAASHHHH!", 
				[4] = Color3.new(0,0.7,0.9)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3201755772"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "SpearJusticeExplosion",
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then 
		wait(4)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5667213065"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigSlam",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then 
		wait(4)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5667213065"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigSlam",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then 
		wait(4)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5667213065"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigSlam",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then 
		wait(4)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5667213065"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigSlam",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then 
		wait(4)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5667213065"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigSlam",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then 
		wait(4)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5667213065"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigSlam",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then 
		wait(4)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5667213065"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "HighJump",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then 
		wait(4)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5667213065"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigWindEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then 
		wait(4)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5667213065"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "HighJump",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
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

--Plus Ultra Smash

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3201755772"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "LightHitEffect",
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "Plus Ultra!", 
				[4] = Color3.new(0,0.7,0.9)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3201755772"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "LightHitEffect",
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		wait(0.5)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3201766456"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigWindEffect",
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		wait(1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3201766456"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigWindEffect",
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		wait(1.5)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3201766456"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigWindEffect",
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		wait(2)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3201766456"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigWindEffect",
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		wait(2.5)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3201766456"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigWindEffect",
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		wait(3)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3201766456"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigWindEffect",
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		wait(3.5)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3201766456"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigWindEffect",
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		wait(4)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3201766456"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigWindEffect",
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		wait(4.5)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3201766456"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigWindEffect",
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		wait(5)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3201766456"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigWindEffect",
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		wait(5.5)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3201766456"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigWindEffect",
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		wait(6)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3201766456"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigWindEffect",
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		wait(6.5)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3201766456"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigWindEffect",
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		wait(7)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3201766456"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigWindEffect",
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		wait(7.5)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3201766456"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigWindEffect",
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		wait(8)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3201766456"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigWindEffect",
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		wait(8.5)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3201766456"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigWindEffect",
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		wait(9)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3201766456"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigWindEffect",
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		wait(9.5)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3201766456"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigWindEffect",
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		wait(9.9)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3207868272"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "BigWindEffect",
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

