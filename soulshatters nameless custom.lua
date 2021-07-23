for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 0.7
music.SoundId = "rbxassetid://3198254322"
music.Looped = true
music:Play()
print("script by antiiiic xD")

-- z attack
AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "z" -- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind then

function getlockchar()
local char = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
return char
end

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getlockchar().HumanoidRootPart.CFrame * CFrame.new(0,0,3)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4300091335"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "Knockback",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(25, 25, 25),
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
Anim.AnimationId = "rbxassetid://ANIMATIONIDHERE"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 111111111111111,
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
wait(1.5)

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
end
end)
