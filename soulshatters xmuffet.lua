local plr = game.Players.LocalPlayer.Name
game.Workspace:WaitForChild(plr)
 local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
-- Animations
local humanoid = player.Character.Humanoid
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://5101233182"

local playAnim = humanoid:LoadAnimation(anim)
function button()
playAnim:Play()
end


 local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://5101202405"

local playAnim = humanoid:LoadAnimation(anim)
function HandOut()
playAnim:Play()
end
function HandStop()
playAnim:Stop()
end
-- Background Chat
game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Chat")
wait(2)
game.Players.LocalPlayer.Character.Head.Voice:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundColor3 = Color3.new(0.8, 0, 1)
game.Players.LocalPlayer:WaitForChild("StarterPlaylist")
game.Players.LocalPlayer.StarterPlaylist["1Theme"]:Destroy()
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
Sound.Volume = 2
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://6183455278" 
Sound.Name = "XMuffet"
game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Run.AnimationId = "rbxassetid://5941660121"
game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Idle.AnimationId = "rbxassetid://6136039008"
game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Walk.AnimationId = "rbxassetid://4684281026"
local A_1 = 
{
	[1] = getrenv()._G.Pass,
	[2] = "Overwrite", 
	[3] = "Summon"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.Character.Head
Sound.Volume = 5
Sound.Playing = false
Sound.Looped = false
Sound.SoundId = "rbxassetid://4459132147"
Sound.Name = "Voice"
Sound.PlaybackSpeed = 0.7
wait(0.5)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "Chatted", 
	[3] = "... The fact that there is another you is a threat.. ", 
	[4] = Color3.new(1, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(6)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "Chatted", 
	[3] = "I promise.. one of us will remain", 
	[4] = Color3.new(1, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(6)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "Chatted", 
	[3] = "and it won't be YOU", 
	[4] = Color3.new(1, 0, 1)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(1.5)
local A_1 = 
{
	[1] = getrenv()._G.Pass,
	[2] = "Overwrite", 
	[3] = "UnSummon"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
local Player = game.Players.LocalPlayer
local Char = Player.Character
local Humanoid = Char.Humanoid
local UIS = game:GetService("UserInputService")

UIS.InputBegan:Connect(function(Input, IsTyping)
	if IsTyping then return end
	if Input.KeyCode == Enum.KeyCode.N then
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "Chatted", 
	[3] = "Time have stopped..", 
	[4] = Color3.new(0.8, 0, 1)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 99999, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
    ["Velocity"] = Vector3.new(0, 0.0001, 0), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.TimeStop2, 
    ["Damage"] = 0
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
	end
end)



local Player = game.Players.LocalPlayer
local Char = Player.Character
local Humanoid = Char.Humanoid
local UIS = game:GetService("UserInputService")

UIS.InputBegan:Connect(function(Input, IsTyping)
	if IsTyping then return end
	if Input.KeyCode == Enum.KeyCode.M then
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "Chatted", 
	[3] = "Time may move again..", 
	[4] = Color3.new(0.8, 0, 1)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
    ["Velocity"] = Vector3.new(0, 0.0001, 0), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.TimeStop, 
    ["Damage"] = 0
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
	end
end)
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local mouse = player:GetMouse()


local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://3786809782"

mouse.KeyDown:connect(function(key)
  if key == "j" then
   local playAnim = humanoid:LoadAnimation(anim)
   playAnim:Play()
   wait(8)
   playAnim:Stop()

    end
end)

local m = game.Players.LocalPlayer:GetMouse()
db = true
m.keyDown:connect(function(k)
	k = k:lower()
	if k == "j" then
		if db == true then
local A_1 = 
{
	[1] = getrenv()._G.Pass,
	[2] = "Overwrite", 
	[3] = "Summon"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
local A_1 = 
{
	[1] = getrenv()._G.Pass,
	[2] = "Overwrite", 
	[3] = "Unsummon"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 8, 
	["Type"] = "Normal", 
	["HitEffect"] = "BettyAttackHitEffect",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
	["VictimCFrame"] = CFrame.new(), 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
	["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 8, 
	["Type"] = "Normal", 
	["HitEffect"] = "HateScytheSlash",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
	["VictimCFrame"] = CFrame.new(), 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
	["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(6)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "Chatted", 
	[3] = "Well.. I always wanted a pet.. ", 
	[4] = Color3.new(1, 0.25, 1)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 8, 
	["Type"] = "Normal", 
	["HitEffect"] = "BettyKickExplosion",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
	["VictimCFrame"] = CFrame.new(), 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
	["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 8, 
	["Type"] = "Normal", 
	["HitEffect"] = "BettyKickExplosion",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
	["VictimCFrame"] = CFrame.new(), 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
	["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 8, 
	["Type"] = "Normal", 
	["HitEffect"] = "BettyKickExplosion",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
	["VictimCFrame"] = CFrame.new(), 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
	["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 8, 
	["Type"] = "Normal", 
	["HitEffect"] = "BettyKickExplosion",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
	["VictimCFrame"] = CFrame.new(), 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
	["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 8, 
	["Type"] = "Normal", 
	["HitEffect"] = "BettyKickExplosion",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
	["VictimCFrame"] = CFrame.new(), 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
	["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 8, 
	["Type"] = "Normal", 
	["HitEffect"] = "BettyKickExplosion",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
	["VictimCFrame"] = CFrame.new(), 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
	["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 8, 
	["Type"] = "Normal", 
	["HitEffect"] = "BettyKickExplosion",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
	["VictimCFrame"] = CFrame.new(), 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
	["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 8, 
	["Type"] = "Normal", 
	["HitEffect"] = "BettyKickExplosion",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
	["VictimCFrame"] = CFrame.new(), 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
	["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 8, 
	["Type"] = "Normal", 
	["HitEffect"] = "BettyKickExplosion",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
	["VictimCFrame"] = CFrame.new(), 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
	["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 8, 
	["Type"] = "Normal", 
	["HitEffect"] = "BettyKickExplosion",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
	["VictimCFrame"] = CFrame.new(), 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
	["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 8, 
	["Type"] = "Normal", 
	["HitEffect"] = "BettyKickExplosion",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
	["VictimCFrame"] = CFrame.new(), 
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
local m = game.Players.LocalPlayer:GetMouse()
db = true
m.keyDown:connect(function(k)
	k = k:lower()
	if k == "c" then
		if db == true then
local A_1 = 
{
	[1] = getrenv()._G.Pass,
	[2] = "Overwrite", 
	[3] = "Summon"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
wait(0.5)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = "Heh.. Well goodbye..", 
    [4] = Color3.new(0.8, 0, 1)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 10, 
    ["Type"] = "Normal", 
    ["HitEffect"] = " ", 
    ["HurtAnimation"] = game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Run, 
    ["Velocity"] = Vector3.new(-35, 0, 35), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
    ["Damage"] = 0
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
			db = false
			wait(1)
			db = true
		end
	end
end)
local m = game.Players.LocalPlayer:GetMouse()
db = true
m.keyDown:connect(function(k)
	k = k:lower()
	if k == "g" then
		if db == true then
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 20, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
    ["Velocity"] = Vector3.new(0, 0.000001, 0), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
    ["Damage"] = 0
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "Chatted", 
	[3] = "... Well..", 
	[4] = Color3.new(1, 1, 1)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(2)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "Chatted", 
	[3] = "Hmm... Heh", 
	[4] = Color3.new(1, 1, 1)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(3)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "Chatted", 
	[3] = "There goes.. My final attack.. ", 
	[4] = Color3.new(0.5, 0.32, 0.3)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(5)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "Chatted", 
	[3] = "Goodbye.", 
	[4] = Color3.new(0.5, 0.32, 0.3)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 20, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BigWindEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
    ["Velocity"] = Vector3.new(0, 0.000001, 0), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 20, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BigWindEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
    ["Velocity"] = Vector3.new(0, 0.000001, 0), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 20, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BigWindEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
    ["Velocity"] = Vector3.new(0, 0.000001, 0), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 20, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BigWindEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
    ["Velocity"] = Vector3.new(0, 0.000001, 0), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 20, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BigWindEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
    ["Velocity"] = Vector3.new(0, 0.000001, 0), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 20, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BigWindEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
    ["Velocity"] = Vector3.new(0, 0.000001, 0), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 20, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BigWindEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
    ["Velocity"] = Vector3.new(0, 0.000001, 0), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 20, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BigWindEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
    ["Velocity"] = Vector3.new(0, 0.000001, 0), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 20, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BigWindEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
    ["Velocity"] = Vector3.new(0, 0.000001, 0), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 20, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BigWindEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
    ["Velocity"] = Vector3.new(0, 0.000001, 0), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
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
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://5667194069"
local playAnim = humanoid:LoadAnimation(anim)
function finish()
playAnim:Play()
playAnim:AdjustSpeed(0.5)
end
 local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://4800436094"
local playAnim = humanoid:LoadAnimation(anim)
function mudamuda()
playAnim:Play()
playAnim.TimePosition = 0.5
playAnim:AdjustSpeed(1)
end

function mudastop()
playAnim:Stop()
end
local userInputService = game:GetService("UserInputService")

userInputService.InputBegan:Connect(function(input, isTyping)
    if not isTyping then
        if input.KeyCode == Enum.KeyCode.Y then
            if not pressed then
                pressed = true
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = "Shadow Barrage..", 
    [4] = Color3.new(0.8, 0, 1)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
                repeat wait()
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 2.5, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HateHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
    ["Velocity"] = Vector3.new(0, 0.00001, 0), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
mudamuda()
                until not pressed
            end
        end
    end
end)


userInputService.InputEnded:Connect(function(input, isTyping)
    if not isTyping then
        if input.KeyCode == Enum.KeyCode.Y then
            pressed = false
mudastop()
print("Barrage done")
        end
    end
end)
local m = game.Players.LocalPlayer:GetMouse()
db = true
m.keyDown:connect(function(k)
	k = k:lower()
	if k == "p" then
		if db == true then
local A_1 = 
{
	[1] = getrenv()._G.Pass,
	[2] = "Overwrite", 
	[3] = "UnSummon"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
			db = false
			wait(1)
			db = true
		end
	end
end)
local m = game.Players.LocalPlayer:GetMouse()
db = true
m.keyDown:connect(function(k)
	k = k:lower()
	if k == "z" then
		if db == true then
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
wait(1)
local A_1 = 
{
	[1] = getrenv()._G.Pass,
	[2] = "Overwrite", 
	[3] = "UnSummon"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
			db = false
			wait(1)
			db = true
		end
	end
end)