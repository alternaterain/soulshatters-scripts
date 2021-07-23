local plr = game.Players.LocalPlayer.Name
game.Workspace:WaitForChild(plr)
 local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
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
Sound.SoundId = "rbxassetid://6389440465" 
Sound.Name = "XFrisk"
game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Run.AnimationId = "rbxassetid://5941660121"
game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Idle.AnimationId = "rbxassetid://4684237024"
game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Walk.AnimationId = "rbxassetid://4684281026"
HandOut()
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
	[3] = "If we are really friends..", 
	[4] = Color3.new(1, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(4)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "Chatted", 
	[3] = "You will do anything for me right?", 
	[4] = Color3.new(1, 0, 0)
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
HandStop()
local player = game.Players.LocalPlayer

local XFriskBone = game.Players.LocalPlayer.Character
XFriskBone.CrossBone:Destroy()
XFriskBone.CrossBone2:Destroy()
player.Chatted:connect(function(msg)
game.Players.LocalPlayer.Character.Head:WaitForChild("TextBar")
game.Players.LocalPlayer.Character.Head.TextBar.TextLabel.Changed:connect(function()
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "PlaySound", 
	[3] = game:GetService("ReplicatedStorage").Resources.Character.Voices.Voice6,
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
wait(0.2)
end)
end)

game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Run2.AnimationId = "rbxassetid://5941660121"
game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Idle2.AnimationId = "rbxassetid://4684237024"
game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Walk2.AnimationId = "rbxassetid://4684281026"

local uis=game:GetService("UserInputService");
uis.InputBegan:connect(function(input)
    if input.KeyCode==Enum.KeyCode.E then
game.Players.LocalPlayer.Character:WaitForChild("XSansKnifeSummon")
game.Players.LocalPlayer.Character.XSansKnifeSummon:Destroy()
game.Players.LocalPlayer.Character:WaitForChild("CrossSansBlade")
game.Players.LocalPlayer.Character.CrossSansBlade:Destroy()
local A_1 = 
{
	[1] = getrenv()._G.Pass,
	[2] = "Overwrite", 
	[3] = "Summon"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
local b = game.Players.LocalPlayer.Character.OverwriteButton.OverwriteButton
b.Sound.Volume = 10
b.PlaybackSpeed = 0.5
HandOut()
    end
end)

 
uis.InputEnded:connect(function(input)
    if input.KeyCode==Enum.KeyCode.E then
        print("Returned");
        HandStop()
game.Players.LocalPlayer.Character.OverwriteButton:Destroy()
    end
end)


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
wait(0.5)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = "Go away... ", 
    [4] = Color3.new(0.8, 0, 1)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 20, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "KnifeHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
    ["Velocity"] = Vector3.new(0, 100, -50), 
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
    [3] = "Walk away..", 
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
	if k == "b" then
		if db == true then
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = "ACT = [NEW TIMELINE]", 
    [4] = Color3.new(0.8, 0, 1)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local A_1 = 
{
	[1] = getrenv()._G.Pass,
	[2] = "Overwrite", 
	[3] = "Summon"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
wait(0.5)
local A_1 = getrenv()._G.Pass
local A_2 = game.Players.LocalPlayer.Character
local A_3 = 
{
    ["HitTime"] = 0, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "Arena", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
    ["Velocity"] = Vector3.new(0, 0.00001, 0), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
    ["Damage"] = 0
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.5)
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
	if k == "m" then
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
    [3] = "Dance for me..", 
    [4] = Color3.new(0.8, 0, 1)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 108.643, 
    ["Type"] = "Normal", 
    ["HitEffect"] = " ", 
    ["HurtAnimation"] = game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Run, 
    ["Velocity"] = Vector3.new(0, 0.1, 0), 
    ["Sound"] = game:GetService("StarterGui").GameOver["Sound2"],
    ["Damage"] = 0
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local Sound = Instance.new("Sound")
Sound.Parent = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Head
Sound.Volume = 0.5
Sound.PlaybackSpeed = 1.5
Sound.Playing = true
Sound.Looped = false
Sound.SoundId = "rbxassetid://305138647"
Sound.Name = "Dance"
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
local m = game.Players.LocalPlayer:GetMouse()
db = true
m.keyDown:connect(function(k)
	k = k:lower()
	if k == "v" then
		if db == true then
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = "ACT = [SUMMON X SAN]", 
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
    ["HitEffect"] = "CrossLineBones", 
    ["HurtAnimation"] = game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Run, 
    ["Velocity"] = Vector3.new(-35, 0, 35), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
    ["Damage"] = 5
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait()
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 10, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "CrossLineBones", 
    ["HurtAnimation"] = game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Run, 
    ["Velocity"] = Vector3.new(-35, 0, 35), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
    ["Damage"] = 5
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait()
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 10, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "CrossLineBones", 
    ["HurtAnimation"] = game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Run, 
    ["Velocity"] = Vector3.new(-35, 0, 35), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
    ["Damage"] = 5
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
	["HitEffect"] = "PinkWind",  
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
	[3] = "ACT = [Final Goodbye..]", 
	[4] = Color3.new(1, 0.25, 1)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(1.5)
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