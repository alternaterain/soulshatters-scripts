game.Players:Chat(("Loaded! Bind is V"))
AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "v" -- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4062755689"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 999999999999999999999999999999,
        ["Type"] = "Normal",
        ["HitEffect"] = "PurpleHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(999999999999999999999999999999)
k:Stop()
end
end)