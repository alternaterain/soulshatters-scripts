-- Decompiled with the Synapse X Luau decompiler.
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "65"
game.Players.LocalPlayer.Character["Right Arm"]:Destroy()
game.Players.LocalPlayer.Character["Left Arm"]:Destroy()
game.Players.LocalPlayer.StarterPlaylist:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(255, 53, 53)
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 = Color3.fromRGB(204, 0, 0)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(220, 0, 0)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "Impostor"
local ts = game:GetService("TweenService")
--shortening purposes
local player = game.Players.LocalPlayer
local uis = game:GetService("UserInputService")

local char = player.Character
local hum = char:WaitForChild("Humanoid")
local hrp = hum.RootPart

local playing, completed = Enum.PlaybackState.Playing, Enum.PlaybackState.Completed
local style, dir = Enum.EasingStyle.Sine, Enum.EasingDirection.InOut

local sin = Instance.new("NumberValue") --remember, the NumberValue; it will act as the "time" for our curve
local isSprinting = Instance.new("BoolValue") --aah, finally it came in use

local dur, durSprint = 0.3, 0.3 --tween duration while walking & sprint time, respectively

--the tweens for walking and sprinting (I made them reverse, but running only once)
local ti, tiSprint = TweenInfo.new(dur, style, dir, 0, true), TweenInfo.new(durSprint, style, dir, 0, true)
local oneTween, oneSprintTween = ts:Create(sin, ti, {Value = 1}), ts:Create(sin, tiSprint, {Value = 1})

--offset = camera offset; maxRandomBounds = for clamping the Perlin Noise value for point0
local offset, maxRandomBounds = 0.8, 0.8

--point0 and point2 are on the right and left side, respectively
local point0, point2 = Vector3.new(offset, 0, 0), Vector3.new(-offset, 0, 0) 

--remember, point1 is in the middle; we'll be using Perlin Noise for the X position
local point1 = Vector3.new(0, -offset, 0)

local ti2 = TweenInfo.new(dur / 1.6, style, dir)

--tween back to the origin
local tweenBack = ts:Create(hum, ti2, {CameraOffset = Vector3.new(0, 0, 0)})

--tween to point0 so it can bob back and forth
local begTween = ts:Create(hum, ti2, {CameraOffset = point0}) --no, I'm not making the tween beg!

--this will be for our Perlin Noise, the higher the inc, the more random
local counter, counterInc = 1, 0.1

--this will be true once begTween starts playing (to make it not play again)
local running = false

local function curve(t, p0, p1, p2) --curve creation
	
    --skip calculations when t is 0 or 1
	if t == 0 then return p0 elseif t == 1 then return p2 end

    --curve forumla
	return (((1 - t)^2) * p0) + (2 * (1 - t) * t * p1) + (t^2 * p2)

--[[do note: we're going to input vector3 values in p0, p1, and p2 
(point0, point1, and point2); but vector3 can be multiplied! so, the formula
still works]]
	
end

local function sprint() --run different tweens depending on if sprinting or not
	
    --just make sure the tween's not playing so we don't interrupt it
	if oneTween.PlaybackState ~= playing and isSprinting.Value == false then 
			
		oneTween:Play() --run the slower tween when sprinting is false
				
	end
			
	if oneSprintTween.PlaybackState ~= playing and isSprinting.Value == true then
			
        --i notice that we don't need to pause/cancel the tweens, it happens automatically
		oneSprintTween:Play() --run the faster tween when sprinting is true
				
	end
	
end
game:GetService("RunService").RenderStepped:Connect(function(deltaTime)	
		
    --[[move direction's magnitude is either 0 (not running) or 1 (running), nothing else!
    use the dot product instead of magnitude to avoid unnecessary square root
    calculations (which are expensive). a vector's dot product w/ itself is
    its magnitude squared, so 0 squared is still 0]]

	if hum.MoveDirection:Dot(hum.MoveDirection) > 0 then
	
        --tween to point0, and run it only once
		if (not running) then begTween:Play() running = true end

		--after the tween reaches point0, continue
		if begTween.PlaybackState == completed then 
			
			if sin.Value == 0 then --aka when it's point0, set some things
				
				counter = counter + counterInc --for different Perlin Noise 

                --[[Perlin Noise is from -1 to 1, which can be too big of a range
                so clamp it down with the maxRandomBounds variable]]
				point1 = Vector3.new(math.clamp(math.noise(counter), -maxRandomBounds, maxRandomBounds), -offset, 0)
				
                --[[separate thread to not delay the function further
                I noticed that if it does delay, the tween becomes lopsided
                where it goes fast to point2 then slower towards point0;
                with coroutines, this will only happen at the beginning
                and it will balance out shortly after (IDK the reason!)]]
				local coro = coroutine.wrap(sprint) 
				coro()
				
			end

			--[[we actually need to set the cam offset w/ the number value
            remember: sin.Value will act as the "time" in the curve function]]
			hum.CameraOffset = curve(sin.Value, point0, point1, point2)
				
		end
			
	else --if the player is not running
					
		tweenBack:Play() --tween back to the beginning (if already there, it's not noticeable)
		oneTween:Cancel() --stop the walk/sprint tweens
		oneSprintTween:Cancel()
		sin.Value = 0 --reset the "time" value to 0
		running = false --make this false to allow begTween to play again
			
	end
			
end)
local music = Instance.new("Sound", game.Players.LocalPlayer.Backpack.Main)
music.Volume = 1.3
music.PlaybackSpeed = 1
music.SoundId = "rbxassetid://6594501743"
music.Looped = true
music:Play()
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = [[AMONG US SUS]],
    [4] = Color3.fromRGB(128, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
for i,v in pairs(game.ReplicatedStorage.RemoteSecurity:GetChildren()) do
			v.Name="Noob"..i
		end
		local personpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
		local playerName = game.Players.LocalPlayer.Name
		local Waiter = false
		local player = game.Players.LocalPlayer
		local uis = game:GetService("UserInputService")
		local damage = game.ReplicatedStorage.Remotes.Damage
		local Players = game.Players
		local LocalPlayer = Players.LocalPlayer;
		local u2 = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait();
		local HumanoidRootPart = u2:WaitForChild("HumanoidRootPart");
		local player = game.Players.LocalPlayer
		local character = player.Character
		local remote = game.ReplicatedStorage.Remotes.Functions
		local pass = getrenv()._G.Pass
		local remote = game.ReplicatedStorage.Remotes["SwordHandler"]
		local security = game.ReplicatedStorage.RemoteSecurity["Noob382"]
		local ClientMusicVariable = true
		local remot = game:GetService("ReplicatedStorage").Remotes.Functions
		local LeftCombo = 0
		local TimeToAttack = .9
		local Delayy = .25
		local LastComboCD = 2.2
		local Cooldown = false
		local remote = game.ReplicatedStorage.Remotes.Damage
		local UserId = game.Players.LocalPlayer.UserId
		local SansLastBreathMovesRemote = Instance.new("BindableEvent") or game.Players[game.Players.LocalPlayer.Name].Backpack:FindFirstChild("RemoteFolder")[UserId]

		SansLastBreathMovesRemote.Name = 'SansLastBreathMoves'

		if not(game.Players[game.Players.LocalPlayer.Name].Backpack:FindFirstChild("RemoteFolder"))then 
			local NewRemoteFolder = Instance.new("Folder")
			NewRemoteFolder.Name = "RemoteFolder"
			NewRemoteFolder.Parent = game.Players[game.Players.LocalPlayer.Name].Backpack
			SansLastBreathMovesRemote.Parent = NewRemoteFolder
		end


		SansLastBreathMovesRemote.Event:Connect(function()
			local gettem = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			tostring(gettem)
			local epic = game.Workspace[tostring(gettem)]
			local target = epic.Torso.Position
			LeftCombo = LeftCombo + 1
			print(tostring(LeftCombo))

			-- Animations and Attacks
			if LeftCombo == 1 then
				game:GetService("Players")[LocalPlayer.Name].Backpack.Main.WalkSpeed.Value = 0
				local Anim = Instance.new("Animation")
				Anim.AnimationId = "rbxassetid://4800629176"
				local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
				track:Play();
				local args = {
					[1] = pass,
					[2] = game.Workspace[tostring(gettem)],
					[3] = {
						["Type"] = "Normal",
						["HitEffect"] = "LightHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, -- Stunned
						["CameraShake"] = "BigExplosion",
						["HitTime"] = 3,
						["VictimCFrame"] = CFrame.new(target),
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, -- StarBlazingHit
						["Damage"] = 9,
						
						["CombatInv"] = true
					}
				}

				remote:InvokeServer(unpack(args))
				game:GetService("Players")[LocalPlayer.Name].Backpack.Main.WalkSpeed.Value = 65
			elseif LeftCombo == 2 then
				game:GetService("Players")[LocalPlayer.Name].Backpack.Main.WalkSpeed.Value = 0
				local Anim = Instance.new("Animation")
				Anim.AnimationId = "rbxassetid://4800624938"
				local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
				track:Play();
				local args = {
					[1] = pass,
					[2] = game.Workspace[tostring(gettem)],
					[3] = {
						["Type"] = "Normal",
						["HitEffect"] = "LightHitEffect2",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, -- Stunned
						["CameraShake"] = "BigExplosion",
						["HitTime"] = 3,
						
						["VictimCFrame"] = CFrame.new(target),
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, -- StarBlazingHit
						["Damage"] = 9,
						
						["CombatInv"] = true
					}
				}

				remote:InvokeServer(unpack(args))
				game:GetService("Players")[LocalPlayer.Name].Backpack.Main.WalkSpeed.Value = 65
			elseif LeftCombo == 3 then
				game:GetService("Players")[LocalPlayer.Name].Backpack.Main.WalkSpeed.Value = 0
				local Anim = Instance.new("Animation")
				Anim.AnimationId = "rbxassetid://4800630930"
				local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
				track:Play();
				local args = {
					[1] = pass,
					[2] = game.Workspace[tostring(gettem)],
					[3] = {
						["Type"] = "Normal",
						["HitEffect"] = "LightHitEffect3",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, -- Stunned
						["CameraShake"] = "BigExplosion",
						["HitTime"] = 3,
						
						["VictimCFrame"] = CFrame.new(target),
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, -- StarBlazingHit
						["Damage"] = 9,
						
						["CombatInv"] = true
					}
				}

				remote:InvokeServer(unpack(args))
				game:GetService("Players")[LocalPlayer.Name].Backpack.Main.WalkSpeed.Value = 65
				
				game:GetService("Players")[LocalPlayer.Name].Backpack.Main.WalkSpeed.Value = 65
			elseif LeftCombo == 4 then
				local Anim = Instance.new("Animation")
				Anim.AnimationId = "rbxassetid://4906108508"
				local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
				track:Play();
							spawn(function()
					remot:InvokeServer({pass, "PlaySound", game:GetService("ReplicatedStorage").RogueSounds.BaneDischarge , character.Head });
				end);
							spawn(function()
				damage:InvokeServer(pass, game.Workspace[tostring(gettem)], {HitTime = 1, Type = "Knockback", CombatInv = true, HitEffect = "BigSlam", HurtAnimation = game.ReplicatedStorage.Animations.HurtAnimations.Knockback2, VictimCFrame = CFrame.new(target), Velocity = HumanoidRootPart.CFrame.lookVector * 180 + Vector3.new(0,2,0), Sound = game:GetService("ReplicatedStorage").RogueSounds.BaneSound, Damage = 34})
				end)
				game:GetService("Players")[LocalPlayer.Name].Backpack.Main.WalkSpeed.Value = 65
				wait(LastComboCD)
				LeftCombo = 0
			elseif LeftCombo == 100 then
				game:GetService("Players")[LocalPlayer.Name].Backpack.Main.WalkSpeed.Value = 65
				LeftCombo = 0
				print(tostring(LeftCombo)..' Restarted')
				game:GetService("Players")[LocalPlayer.Name].Backpack.Main.WalkSpeed.Value = 65
			end




			pcall(function()
				if LeftCombo == 1 then

					warn('Combo 1 fired')
					spawn(function()
						wait(TimeToAttack)
						if LeftCombo == 1 then
							LeftCombo = 0
							warn('Reset LeftCombo 1')
						end
					end)
				elseif LeftCombo == 2 then
					warn('Combo 2 fired')
					spawn(function()
						wait(TimeToAttack)
						if LeftCombo == 2 then
							LeftCombo = 0
							warn('Reset LeftCombo 2')
						end
					end)
				elseif LeftCombo == 3 then
					warn('Combo 3 fired')
					spawn(function()
						wait(TimeToAttack)
						if LeftCombo == 3 then
							LeftCombo = 0
							warn('Reset LeftCombo 3')
						end
					end)
				elseif LeftCombo == 4 then
					warn('Combo 4 fired')
					spawn(function()
						wait(TimeToAttack)
						if LeftCombo == 4 then
						    wait(2.5)
							LeftCombo = 0
							warn('Reset LeftCombo 4')
						end
					end)
					LeftCombo = 100
					wait(1.6)
					LeftCombo = 0
				end
			end)

		end)

		local FireAttack = (function()
			return SansLastBreathMovesRemote:Fire()
		end)

		local Humanoid = u2:WaitForChild("Humanoid")
		function checkIfHurt()
			if not u2:FindFirstChild("Hit") then
				if not u2:FindFirstChild("Debounce") then
					if Humanoid.Health <= 0 then
					else
						return false;
					end;
				end;
			end;
			return true;
		end;
		uis.InputBegan:Connect(function(inp)
			checkIfHurt()
			if inp.UserInputType == Enum.UserInputType.MouseButton1 then
				if uis:GetFocusedTextBox() == nil then
					if Cooldown then return end
					spawn(function()
						Cooldown = true
						wait(Delayy)
						Cooldown = false
					end)

					FireAttack()
					warn('Fired Remote')
				end
			end;
		end)
--first sus kill me 
local debounce = true 
local cooldown = 7

game:GetService("UserInputService").InputBegan:Connect(function(key, typing) 
    if typing then return end 
    local button = Enum.KeyCode.One 

    if key.KeyCode == button then
       if debounce then 
          print("fucking this person up worked wow") 
          debounce = false 
 local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = "SUS WAS EJECTED",
    [4] = Color3.fromRGB(128, 20, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4906108508"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = math.huge,
["Type"] = "Knockback", 
["HitEffect"] = "RedWind",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit,
["CameraShake"] = "BigExplosion",
["Velocity"] = Vector3.new(0, 100, -3),
["CombatInv"] = true,
["Damage"] = 35
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
    Event:InvokeServer(A_1, A_2, A_3)
          wait(cooldown)
          debounce = true
end
end
end)
--imposter knife kill

local debounce = true 
local cooldown = 7

game:GetService("UserInputService").InputBegan:Connect(function(key, typing) 
    if typing then return end 
    local button = Enum.KeyCode.Two

    if key.KeyCode == button then
       if debounce then 
          print("fucking this person up worked wow") 
          debounce = false 
 local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = "IMPOSTER: KNIFE KILL",
    [4] = Color3.fromRGB(128, 20, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5493298904"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 3,
["Type"] = "Knockback", 
["HitEffect"] = "SansKnife",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2,  
["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit,
["CameraShake"] = "BigExplosion",
["Velocity"] = Vector3.new(0, 0, -1),
["CombatInv"] = true,
["Damage"] = 35
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
    Event:InvokeServer(A_1, A_2, A_3)
    wait(0.1)
    local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5493298904"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 3,
["Type"] = "Knockback", 
["HitEffect"] = "RedWind",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit,
["CameraShake"] = "BigExplosion",
["Velocity"] = Vector3.new(0, 0, -1),
["CombatInv"] = true,
["Damage"] = 35
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
    Event:InvokeServer(A_1, A_2, A_3)
    wait(0.1)
    local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5493298904"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 4,
["Type"] = "Knockback", 
["HitEffect"] = "RedWind",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit,
["CameraShake"] = "BigExplosion",
["Velocity"] = Vector3.new(0, -10, 0),
["CombatInv"] = true,
["Damage"] = 35
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
    Event:InvokeServer(A_1, A_2, A_3)
          wait(cooldown)
          debounce = true
end
end
end)
script = Instance.new("LocalScript", game.Players.LocalPlayer.Backpack.Main)
for i,v in pairs(game.Players.LocalPlayer.Backpack.Main.XSansMoves:GetChildren()) do
    v.Parent = script
end
game.Players.LocalPlayer.Backpack.Main.XSansMoves:Destroy()
game.Players.LocalPlayer.Backpack.Main.LocalScript.Animations.Idle.AnimationId = "rbxassetid://5079250270"
game.Players.LocalPlayer.Backpack.Main.LocalScript.Animations.Walk.AnimationId = "rbxassetid://5079260989"
game.Players.LocalPlayer.Backpack.Main.LocalScript.Animations.Run.AnimationId = "rbxassetid://5079265988"
game:GetService("Players").LocalPlayer.Character.Humanoid.JumpHeight = 160
local u1 = nil;
script.Parent:WaitForChild("RunSpeed").Value = 80;
function Lerp(p1, p2, p3)
	return p1 + (p2 - p1) * p3;
end;
local l__LocalPlayer__1 = game.Players.LocalPlayer;
local v2 = l__LocalPlayer__1.Character or l__LocalPlayer__1.CharacterAdded:Wait();
local l__mouse__3 = l__LocalPlayer__1:GetMouse();
local l__HumanoidRootPart__4 = v2:WaitForChild("HumanoidRootPart");
local l__Humanoid__5 = v2:WaitForChild("Humanoid");
local v6 = require(script:WaitForChild("ModuleScript"));
local l__UserInputService__7 = game:GetService("UserInputService");
local l__Remotes__8 = game.ReplicatedStorage.Remotes;
require(game.ReplicatedStorage.CameraShaker).new(Enum.RenderPriority.Camera.Value, function(p4)
	workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * p4;
end):Start();
local l__HumanoidRootPart__9 = v2:WaitForChild("HumanoidRootPart");
local l__Humanoid__10 = v2:WaitForChild("Humanoid");
local l__Head__11 = v2:WaitForChild("Head");
local l__Torso__12 = v2:WaitForChild("Torso");
local l__Left_Leg__15 = v2:WaitForChild("Left Leg");
local l__Right_Leg__16 = v2:WaitForChild("Right Leg");
local v17 = tick();
local v18 = tick();
local v19 = tick();
local v20 = tick();
local v21 = require(game:GetService("ReplicatedStorage").ClientModules.MainModule);
local l__Animations__22 = script:WaitForChild("Animations");
local v23 = l__Humanoid__10:LoadAnimation(l__Animations__22.Idle);
local v24 = l__Humanoid__10:LoadAnimation(l__Animations__22.Walk);
local v25 = l__Humanoid__10:LoadAnimation(l__Animations__22.Run);
local v26 = l__Humanoid__10:LoadAnimation(l__Animations__22.Fall);
local v27 = l__Humanoid__10:LoadAnimation(l__Animations__22.Jump);
local v28 = l__Humanoid__10:LoadAnimation(l__Animations__22.Block);
local v29 = l__Humanoid__10:LoadAnimation(l__Animations__22.DashForward);
local v30 = l__Humanoid__10:LoadAnimation(l__Animations__22.DashBack);
local v31 = l__Humanoid__10:LoadAnimation(l__Animations__22.DashLeft);
local v32 = l__Humanoid__10:LoadAnimation(l__Animations__22.DashRight);
v21.AddKeyframes(v24, l__Humanoid__10);
v21.AddKeyframes(v25, l__Humanoid__10);
local u2 = {};
local v33 = script:WaitForChild("Extra").CharaIndicator:Clone();
v33.Parent = l__LocalPlayer__1.PlayerGui;
function checkIfHurt()
	if not v2:FindFirstChild("Hit") then
		if not v2:FindFirstChild("Debounce") then
			if l__Humanoid__10.Health <= 0 then

			else
				return false;
			end;
		end;
	end;
	return true;
end;
l__Humanoid__10:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false);
l__Humanoid__10:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false);
l__LocalPlayer__1.Chatted:connect(function(p5)
	game.ReplicatedStorage.Remotes.Events:FireServer({ getrenv()._G.Pass, "Chatted", p5, Color3.fromRGB(128, 20, 0) });
end);
l__Humanoid__10.WalkSpeed = 0;
local u3 = "1";
while true do
	u1 = l__Remotes__8;
	local v35 = pcall(function()
		local v36 = Instance.new("BindableEvent");
		v36.Event:connect(function()
			if u1.Functions:InvokeServer({ getrenv()._G.Pass, "Reset" }) then

			end;
		end);
		game:GetService("StarterGui"):SetCore("ResetButtonCallback", v36);
	end);
	wait();
	if v35 then
		break;
	end;
end;
local u4 = false;
local u5 = 80;
local u6 = true;
local u7 = false;
local u8 = false;
local u9 = false;
local u10 = false;
local u11 = false;
function instantRun()
	spawn(function()
		u3 = true;
		l__Humanoid__10.WalkSpeed = coolDownTime(script.Parent.RunSpeed.Value / 1.5, script.Parent.RunSpeed.Value);
		u4 = 100;
		u1.Functions:InvokeServer({ getrenv()._G.Pass, "Running", true, 0.5 });
		while true do
			l__Humanoid__10.WalkSpeed = coolDownTime(script.Parent.RunSpeed.Value / 1.5, script.Parent.RunSpeed.Value);
			wait();
			if not u5 then
				break;
			end;
			if not checkIfHurt() then

			else
				break;
			end;
			if v2:FindFirstChild("Running") then

			else
				break;
			end;
			if u3 then

			else
				break;
			end;
			if not u6 then
				if not u7 then
					if not u8 then
						if u9 then

						else
							break;
						end;
					end;
				end;
			end;
			if not (v2.Data.SprintMeter.Value <= 1) then

			else
				break;
			end;		
		end;
		u1.Functions:InvokeServer({ getrenv()._G.Pass, "Running", false });
		if u3 then
			l__Humanoid__10.WalkSpeed = 0;
		end;
		u4 = 80;
		u3 = false;
	end);
end;
function takeStamina(p6, p7)
	u5 = false;
	if v2.Data.Stamina.Value < p6 then

	else
		return true;
	end;
	u5 = true;
	return false;
end;
local u13 = v17;
local u14 = true;
local u15 = v20;
local u16 = v18;
local u17 = v19;
local u18 = true;
local u19 = 0;
local u20 = 0;
local u21 = 0;
local u22 = "Normal";
local function u23(p13, p14)
	if u2[p13] == nil then
		u2[p13] = true;
		return u2[p13];
	end;
	if p14 ~= nil then
		u2[p13] = p14;
		return;
	end;
	return u2[p13];
end;
local u24 = v28;
local u25 = 1;
local u26 = { "Normal", "Knife" };
local function u27(p15, p16, p17)
	if p16 then
		l__MoveDebounceShower__34["Moves" .. u3][p15].Start.Value = true;
		l__MoveDebounceShower__34["Moves" .. u3][p15].Start.Value = false;
		return;
	end;
	l__MoveDebounceShower__34["Moves" .. u3][p15].Time.Value = p17;
	l__MoveDebounceShower__34["Moves" .. u3][p15].Activated.Value = true;
	l__MoveDebounceShower__34["Moves" .. u3][p15].Activated.Value = false;
end;
local l__LockOn__28 = l__LocalPlayer__1.Backpack.Main:WaitForChild("LockOnScript").LockOn;
l__UserInputService__7.InputBegan:Connect(function(p18, p19)
	if not p19 then
		if p18.KeyCode == Enum.KeyCode.W then
			u8 = true;
			local l__LockOn__38 = l__LocalPlayer__1.Backpack.Main.LockOnScript.LockOn;
			local v39 = tick();
			if v39 - u13 <= 0.25 and u14 and not v21.checkIfHit() and u6 and game.ReplicatedStorage.Remotes.Functions:InvokeServer({ getrenv()._G.Pass, "TakeStamina", 12 }) then
				u14 = false;
				v29:Play(0.1);
				if l__LockOn__38.Value then
					l__HumanoidRootPart__9.CFrame = CFrame.new(l__HumanoidRootPart__9.Position, Vector3.new(l__LockOn__38.Value.HumanoidRootPart.Position.X, l__HumanoidRootPart__9.Position.Y, l__LockOn__38.Value.HumanoidRootPart.Position.Z));
				end;
				v2.Head.Jump:Play();
				v21.CreateBodyMover({ "BodyVelocity", l__HumanoidRootPart__9, Vector3.new(100000, 0, 100000), l__HumanoidRootPart__9.CFrame.lookVector * 100, 0.2 });
				local v40, v41 = game:GetService("Workspace"):FindPartOnRay(Ray.new(l__HumanoidRootPart__9.CFrame.p, Vector3.new(0, -1, 0).unit * 4), v2);
				if v40 then
					game.ReplicatedStorage.Remotes.Effects:FireServer({ getrenv()._G.Pass, "Particle", "SmallForwardSmokeParticle", CFrame.new(v41, v41 + l__HumanoidRootPart__9.CFrame.lookVector * 10) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0)), 0.1 });
				end;
				game.ReplicatedStorage.Remotes.Events:FireServer({ getrenv()._G.Pass, "InvFrames", 0.2 });
				instantRun();
				l__Humanoid__10:ChangeState(Enum.HumanoidStateType.Freefall);
				wait(0.1);
				l__Humanoid__10:ChangeState(Enum.HumanoidStateType.Freefall);
				wait(0.1);
				u14 = true;
			elseif u14 then
				u13 = v39;
			end;
		elseif p18.KeyCode == Enum.KeyCode.A then
			u9 = true;
			local l__LockOn__42 = l__LocalPlayer__1.Backpack.Main.LockOnScript.LockOn;
			local v43 = tick();
			if v43 - u15 <= 0.25 and u14 and not v21.checkIfHit() and u6 and game.ReplicatedStorage.Remotes.Functions:InvokeServer({ getrenv()._G.Pass, "TakeStamina", 12 }) then
				u14 = false;
				v31:Play(0.1);
				if l__LockOn__42.Value then
					l__HumanoidRootPart__9.CFrame = CFrame.new(l__HumanoidRootPart__9.Position, Vector3.new(l__LockOn__42.Value.HumanoidRootPart.Position.X, l__HumanoidRootPart__9.Position.Y, l__LockOn__42.Value.HumanoidRootPart.Position.Z));
				end;
				v2.Head.Jump:Play();
				v21.CreateBodyMover({ "BodyVelocity", l__HumanoidRootPart__9, Vector3.new(100000, 0, 100000), -l__HumanoidRootPart__9.CFrame.rightVector * 100, 0.2 });
				local v44, v45 = game:GetService("Workspace"):FindPartOnRay(Ray.new(l__HumanoidRootPart__9.CFrame.p, Vector3.new(0, -1, 0).unit * 4), v2);
				if v44 then
					game.ReplicatedStorage.Remotes.Effects:FireServer({ getrenv()._G.Pass, "Particle", "SmallForwardSmokeParticle", CFrame.new(v45, v45 - l__HumanoidRootPart__9.CFrame.rightVector * 10) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0)), 0.1 });
				end;
				game.ReplicatedStorage.Remotes.Events:FireServer({ getrenv()._G.Pass, "InvFrames", 0.2 });
				instantRun();
				l__Humanoid__10:ChangeState(Enum.HumanoidStateType.Freefall);
				wait(0.1);
				l__Humanoid__10:ChangeState(Enum.HumanoidStateType.Freefall);
				wait(0.1);
				u14 = true;
			elseif u14 then
				u15 = v43;
			end;
		elseif p18.KeyCode == Enum.KeyCode.S then
			u10 = true;
			local l__LockOn__46 = l__LocalPlayer__1.Backpack.Main.LockOnScript.LockOn;
			local v47 = tick();
			if v47 - u16 <= 0.25 and u14 and not v21.checkIfHit() and u6 and game.ReplicatedStorage.Remotes.Functions:InvokeServer({ getrenv()._G.Pass, "TakeStamina", 12 }) then
				u14 = false;
				v30:Play(0.1);
				if l__LockOn__46.Value then
					l__HumanoidRootPart__9.CFrame = CFrame.new(l__HumanoidRootPart__9.Position, Vector3.new(l__LockOn__46.Value.HumanoidRootPart.Position.X, l__HumanoidRootPart__9.Position.Y, l__LockOn__46.Value.HumanoidRootPart.Position.Z));
				end;
				v2.Head.Jump:Play();
				v21.CreateBodyMover({ "BodyVelocity", l__HumanoidRootPart__9, Vector3.new(100000, 0, 100000), -l__HumanoidRootPart__9.CFrame.lookVector * 100, 0.2 });
				local v48, v49 = game:GetService("Workspace"):FindPartOnRay(Ray.new(l__HumanoidRootPart__9.CFrame.p, Vector3.new(0, -1, 0).unit * 4), v2);
				if v48 then
					game.ReplicatedStorage.Remotes.Effects:FireServer({ getrenv()._G.Pass, "Particle", "SmallForwardSmokeParticle", CFrame.new(v49, v49 - l__HumanoidRootPart__9.CFrame.lookVector * 10) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0)), 0.1 });
				end;
				game.ReplicatedStorage.Remotes.Events:FireServer({ getrenv()._G.Pass, "InvFrames", 0.2 });
				instantRun();
				l__Humanoid__10:ChangeState(Enum.HumanoidStateType.Freefall);
				wait(0.1);
				l__Humanoid__10:ChangeState(Enum.HumanoidStateType.Freefall);
				wait(0.1);
				u14 = true;
			elseif u14 then
				u16 = v47;
			end;
		elseif p18.KeyCode == Enum.KeyCode.D then
			u11 = true;
			local l__LockOn__50 = l__LocalPlayer__1.Backpack.Main.LockOnScript.LockOn;
			local v51 = tick();
			if v51 - u17 <= 0.25 and u14 and not v21.checkIfHit() and u6 and game.ReplicatedStorage.Remotes.Functions:InvokeServer({ getrenv()._G.Pass, "TakeStamina", 12 }) then
				u14 = false;
				v32:Play(0.1);
				if l__LockOn__50.Value then
					l__HumanoidRootPart__9.CFrame = CFrame.new(l__HumanoidRootPart__9.Position, Vector3.new(l__LockOn__50.Value.HumanoidRootPart.Position.X, l__HumanoidRootPart__9.Position.Y, l__LockOn__50.Value.HumanoidRootPart.Position.Z));
				end;
				v2.Head.Jump:Play();
				v21.CreateBodyMover({ "BodyVelocity", l__HumanoidRootPart__9, Vector3.new(100000, 0, 100000), l__HumanoidRootPart__9.CFrame.rightVector * 100, 0.2 });
				local v52, v53 = game:GetService("Workspace"):FindPartOnRay(Ray.new(l__HumanoidRootPart__9.CFrame.p, Vector3.new(0, -1, 0).unit * 4), v2);
				if v52 then
					game.ReplicatedStorage.Remotes.Effects:FireServer({ getrenv()._G.Pass, "Particle", "SmallForwardSmokeParticle", CFrame.new(v53, v53 + l__HumanoidRootPart__9.CFrame.rightVector * 10) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0)), 0.1 });
				end;
				game.ReplicatedStorage.Remotes.Events:FireServer({ getrenv()._G.Pass, "InvFrames", 0.2 });
				instantRun();
				l__Humanoid__10:ChangeState(Enum.HumanoidStateType.Freefall);
				wait(0.1);
				l__Humanoid__10:ChangeState(Enum.HumanoidStateType.Freefall);
				wait(0.1);
				u14 = true;
			elseif u14 then
				u17 = v51;
			end;
		end;
		if p18.UserInputType == Enum.UserInputType.MouseButton1 and u6 and not checkIfHurt() and u18 then
			u6 = false;
			_G.RootPartFollow = false;
			u18 = false;
			if p18.UserInputType == Enum.UserInputType.MouseButton1 then
				u19 = u19 + 1;
				local v54 = "Light" .. u19;
			else
				u20 = u20 + 1;
				v54 = "Heavy" .. u20;
			end;
			v6.HoverForwardEffect();
			u21 = math.huge;
			if u22 == "Normal" and v54 ~= "Light4" and v54 ~= "Light5" then
			elseif u22 == "Normal" and v54 == "Light4" or u22 == "Normal" and v54 == "Light5" then
				spawnBone(false);
			end;
			if u22 == "Normal" and v54 ~= "Light4" and v54 ~= "Light5" then
			end;
			u21 = 75;
			u6 = true;
			_G.RootPartFollow = true;
			if u19 == 6 or u20 == 6 then
				u19 = 0;
				u20 = 0;
				u1.Functions:InvokeServer({ getrenv()._G.Pass, "Comfirmation" });
				wait(2);
			end;
			u18 = true;
		end;
		if p18.KeyCode == Enum.KeyCode.LeftControl and u6 and not checkIfHurt() then
			u4 = true;
			local v55 = v21.CreateTween(l__Humanoid__10, { 2, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0 }, {
				WalkSpeed = coolDownTime(script.Parent.RunSpeed.Value / 1.5, script.Parent.RunSpeed.Value)
			}, true);
			u5 = 100;
			u1.Functions:InvokeServer({ getrenv()._G.Pass, "Running", true, 0.5 });
			while true do
				wait();
				if not u6 then
					break;
				end;
				if checkIfHurt() then
					break;
				end;
				if not v2:FindFirstChild("Running") then
					break;
				end;
				if not u4 then
					break;
				end;
				if not u8 and not u9 and not u10 and not u11 then
					break;
				end;
				if v2.Data.SprintMeter.Value <= 1 then
					break;
				end;			
			end;
			u1.Functions:InvokeServer({ getrenv()._G.Pass, "Running", false });
			v55:Cancel();
			if u4 then
				l__Humanoid__10.WalkSpeed = 0;
			end;
			u5 = 80;
			u4 = false;
		end;
		if p18.KeyCode == Enum.KeyCode.R and not workspace.ServerEffects.ServerCooldown[v2.Name]:FindFirstChild("TeleportDebounce") and (not workspace.ServerEffects.ServerCooldown[v2.Name]:FindFirstChild("MoveDebounce") and u6 and not checkIfHurt() and u23("Teleport", nil)) then
			local v56 = nil;
			if v2:FindFirstChild("DisableTeleport") then
				u23("Teleport", true);
				return;
			end;
			if not takeStamina(10, 5) then
				return;
			end;
			u23("Teleport", false);
			u6 = false;
			local l__LockOn__29 = l__LocalPlayer__1.Backpack.Main.LockOnScript.LockOn;
			v56 = function()
				if not l__LockOn__29.Value then
					if (l__mouse__3.Hit.p - l__HumanoidRootPart__9.Position).magnitude > 650 then
						return CFrame.new(l__HumanoidRootPart__9.Position, l__mouse__3.hit.p) * CFrame.new(0, -30, -650);
					else
						return CFrame.new(l__mouse__3.Hit.p, l__mouse__3.Hit.p + l__HumanoidRootPart__9.CFrame.lookVector *-1);
					end;
				end;
				if (l__LockOn__29.Value.HumanoidRootPart.Position - l__HumanoidRootPart__9.Position).magnitude > 650 then
					return CFrame.new(l__HumanoidRootPart__9.Position, l__LockOn__29.Value.HumanoidRootPart.Position) * CFrame.new(0, -30, -650);
				end;
				return CFrame.new(l__LockOn__29.Value.HumanoidRootPart.Position + v21.getSpot(l__LockOn__29.Value, l__LockOn__29.Value.HumanoidRootPart.CFrame, -1).lookVector *-1, l__LockOn__29.Value.HumanoidRootPart.Position);
			end;
			if u22 ~= "XChara" then
				u1.XSansMoves:InvokeServer({ getrenv()._G.Pass, "Teleport", v56() });
			else
				u1.XSansMoves:InvokeServer({ getrenv()._G.Pass, "XCharaTeleport", v56() });
			end;
			u6 = true;
			wait(2);
			u23("Teleport", true);
		end;
		if p18.KeyCode == Enum.KeyCode.F and u6 and not checkIfHurt() then
			local u30 = nil;
			local u31 = false;
			u30 = l__UserInputService__7.InputEnded:Connect(function(p20)
				if p20.KeyCode == Enum.KeyCode.F then
					u30:disconnect();
					u31 = true;
				end;
			end);
			u6 = false;
			local l__LockOn__57 = l__LocalPlayer__1.Backpack.Main.LockOnScript.LockOn;
			u4 = false;
			l__Humanoid__10.WalkSpeed = 3;
			if u22 == "Knife" then
				if u24.Animation == l__Animations__22.Block then
					u24:Stop();
					u24 = l__Humanoid__10:LoadAnimation(l__Animations__22.Block2);
				end;
			elseif u22 == "Normal" then
				if u24.Animation == l__Animations__22.Block2 then
					u24:Stop();
					u24 = l__Humanoid__10:LoadAnimation(l__Animations__22.Block);
				end;
			elseif u24.Animation == l__Animations__22.Block or u24.Animation == l__Animations__22.Block2 then
				u24:Stop();
				u24 = l__Humanoid__10:LoadAnimation(l__Animations__22.Block3);
			end;
			u1.Functions:InvokeServer({ getrenv()._G.Pass, "Blocking", true });
			u24:Play(0.2);
			while true do
				wait();
				if u31 then
					break;
				end;
				if checkIfHurt() then
					break;
				end;			
			end;
			u1.Functions:InvokeServer({ getrenv()._G.Pass, "Blocking", false });
			u24:Stop(0.2);
			l__Humanoid__10.WalkSpeed = 3;
			u6 = true;
		end;
		end;
	end)
l__UserInputService__7.InputEnded:Connect(function(p23, p24)
	if p23.KeyCode == Enum.KeyCode.W then
		u8 = false;
		return;
	end;
	if p23.KeyCode == Enum.KeyCode.A then
		u9 = false;
		return;
	end;
	if p23.KeyCode == Enum.KeyCode.S then
		u10 = false;
		return;
	end;
	if p23.KeyCode == Enum.KeyCode.D then
		u11 = false;
	end;
end);
local u34 = false;
l__Humanoid__10.StateChanged:Connect(function(p25, p26)
	if p26 == Enum.HumanoidStateType.Jumping then
		if not u34 then
			u34 = true;
			l__Humanoid__10:SetStateEnabled(Enum.HumanoidStateType.Jumping, false);
			return;
		end;
	elseif p26 == Enum.HumanoidStateType.Landed and u34 then
		u34 = false;
		wait(2);
		l__Humanoid__10:SetStateEnabled(Enum.HumanoidStateType.Jumping, true);
	end;
end);
l__Humanoid__10.Changed:connect(function()
	if checkIfHurt() or not u6 then
		l__Humanoid__10.Jump = false;
	end;
end);
l__Humanoid__10.Jumping:Connect(function(p27)
	if not p27 or not (not v27.isPlaying) then
		return;
	end;
	v27:Play(0.25);
end);
local l__C1__68 = l__HumanoidRootPart__9:WaitForChild("RootJoint").C1;
local l__C1__69 = v2.Torso:WaitForChild("Neck").C1;
local l__C1__70 = v2.Torso:WaitForChild("Left Shoulder").C1;
local l__C1__71 = v2.Torso:WaitForChild("Right Shoulder").C1;
function MakePositive(p28)
	local v72 = tostring(p28);
	local v73 = string.sub(v72, 1, 1);
	if v73 == "-" then

	elseif v73 ~= "-" then
		return p28;
	else
		return;
	end;
	return tonumber(string.sub(v72, 2));
end;
function MakeNegative(p29)
	local v74 = string.sub(tostring(p29), 1, 1);
	if v74 == "-" then
		return p29;
	end;
	if v74 ~= "-" then

	else
		return;
	end;
	p29 = -p29;
	return p29;
end;
l__Humanoid__10.HealthChanged:Connect(function(p30)
	if p30 <= 0 then
		if u22 == "Knife" then
			l__XSansMoves__12:InvokeServer({ getrenv()._G.Pass, "SummonKnife", false });
		end;
		while true do
			u6 = false;
			wait();
			if l__Humanoid__10.Health == 190 then
				break;
			end;		
		end;
		wait(3);
		u22 = "XChara";
		v33.Indicator.Text = u22;
		v33.Help.Text = "Hold E to toggle Overwrite";
		u3 = "3";
		for v75, v76 in pairs(l__MoveDebounceShower__34:GetChildren()) do
			if string.match(v76.Name, "Moves") then
				v76.Visible = false;
			end;
		end;
		l__MoveDebounceShower__34.Moves3.Visible = true;
		u6 = true;
	end;
end);
function checkRegion3(p31, p32)
	local v77, v78, v79 = pairs(game.Workspace:FindPartsInRegion3WithWhiteList(Region3.new(p31 - p32 / 2, p31 + p32 / 2), { l__HumanoidRootPart__9 }));
	local v80, v81 = v77(v78, v79);
	if v80 then

	else
		return false;
	end;
	return true;
end;
local l__HealthBar__35 = v2.Head.HealthBar;
v2.Head.DescendantRemoving:Connect(function(p33)
	if p33 ~= l__HealthBar__35 and (not p33:IsA("TextLabel") or not p33:IsDescendantOf(l__HealthBar__35)) then
		return;
	end;
	while true do
	
	end;
end);
v2.DescendantRemoving:Connect(function(p34)
	if p34.Name ~= "LockOn" then
		return;
	end;
	while true do
	
	end;
end);
local u36 = true;
local u37 = l__HumanoidRootPart__9.CFrame;
local u38 = v25;
local u39 = v24;
local u40 = v23;
local u41 = true;
local l__CurrentCamera__42 = workspace.CurrentCamera;
game:GetService("RunService").RenderStepped:Connect(function()
	if u21 > 0 then
		u21 = u21 - 1;
		if u21 <= 0 then
			u21 = 0;
			u19 = 0;
			u20 = 0;
		end;
	end;
	spawn(function()
		if u36 and not v2:FindFirstChild("Battling") and not v2:FindFirstChild("Hit") and not l__HumanoidRootPart__9.Anchored then
			if u36 and not checkRegion3(workspace.Map.MapCFrame.Value.p, workspace.Map.MapSize.Value) and not v2:FindFirstChild("Hit") and not l__HumanoidRootPart__9.Anchored and not v2:FindFirstChild("Battling") then
				u36 = false;
				local v82 = CFrame.new(u37.p, workspace.Map.MapCFrame.Value.p);
				l__HumanoidRootPart__9.CFrame = v82 + v82.LookVector * 30;
				wait(0.5);
				u36 = true;
				return;
			end;
			if not v2:FindFirstChild("Hit") and not l__HumanoidRootPart__9.Anchored and not v2:FindFirstChild("Battling") then
				u36 = false;
				u37 = l__HumanoidRootPart__9.CFrame;
				wait(0.5);
				u36 = true;
			end;
		end;
	end);
	if not u9 and not u8 and not u10 and not u11 or not u6 and not u7 then
		l__Humanoid__10.WalkSpeed = 0;
	end;
	if l__Humanoid__10.WalkSpeed > 66 and not v2:FindFirstChild("Battling") then
		while true do
		
		end;
	end;
	if not (not l__HumanoidRootPart__9:FindFirstChildOfClass("BodyPosition")) and l__HumanoidRootPart__9:FindFirstChildOfClass("BodyPosition").Name ~= "Client" and l__HumanoidRootPart__9:FindFirstChildOfClass("BodyPosition").Name ~= "Server" or not (not l__HumanoidRootPart__9:FindFirstChildOfClass("BodyGyro")) and l__HumanoidRootPart__9:FindFirstChildOfClass("BodyGyro").Name ~= "Client" and l__HumanoidRootPart__9:FindFirstChildOfClass("BodyGyro").Name ~= "Server" or l__HumanoidRootPart__9:FindFirstChildOfClass("BodyVelocity") and l__HumanoidRootPart__9:FindFirstChildOfClass("BodyVelocity").Name ~= "Client" and l__HumanoidRootPart__9:FindFirstChildOfClass("BodyVelocity").Name ~= "Server" then
		while true do
		
		end;
	end;
	local v83 = l__HumanoidRootPart__9.CFrame:VectorToObjectSpace(l__HumanoidRootPart__9.Velocity);
	if l__Humanoid__10.MoveDirection.X ~= 0 or l__Humanoid__10.MoveDirection.Z ~= 0 then
		if l__Humanoid__10:GetState() ~= Enum.HumanoidStateType.Jumping and l__Humanoid__10:GetState() ~= Enum.HumanoidStateType.Freefall then
			if v83.Z < 0 and v83.Z < 0 or not u8 and not u10 then
				if l__Humanoid__10.WalkSpeed > 0 and l__Humanoid__10.WalkSpeed < 11 then
					u38:Stop(0.1);
					if not u39.isPlaying then
						u39:Play(0.5);
					end;
					u39:AdjustSpeed(l__Humanoid__10.WalkSpeed / 10);
				elseif l__Humanoid__10.WalkSpeed > 11 then
					u39:Stop(0.1);
					if not u38.isPlaying then
						u38:Play(0.5);
					end;
					u38:AdjustSpeed(l__Humanoid__10.WalkSpeed / 35);
				end;
			elseif l__Humanoid__10.WalkSpeed > 0 and l__Humanoid__10.WalkSpeed < 11 then
				u38:Stop(0.1);
				if not u39.isPlaying then
					u39:Play(0.5);
				end;
				u39:AdjustSpeed(-(l__Humanoid__10.WalkSpeed / 10));
			elseif l__Humanoid__10.WalkSpeed > 11 then
				u38:Stop(0.1);
				if not u39.isPlaying then
					u39:Play(0.5);
				end;
				u39:AdjustSpeed(-(1 + l__Humanoid__10.WalkSpeed / 50));
			end;
		else
			u39:Stop(0.1);
			u38:Stop(0.1);
		end;
	end;
	if v2:FindFirstChild("Determination") then
		if u22 == "Knife" then
			if u40.Animation == l__Animations__22.Idle then
				u40:Stop();
				u40 = l__Humanoid__10:LoadAnimation(l__Animations__22.Idle2);
			end;
			if u39.Animation == l__Animations__22.Walk then
				u39:Stop();
				u39 = l__Humanoid__10:LoadAnimation(l__Animations__22.Walk2);
				v21.AddKeyframes(u39, l__Humanoid__10);
			end;
			if u38.Animation == l__Animations__22.Run then
				u38:Stop();
				u38 = l__Humanoid__10:LoadAnimation(l__Animations__22.Run2);
				v21.AddKeyframes(u38, l__Humanoid__10);
			end;
		else
			if u40.Animation == l__Animations__22.Idle2 then
				u40:Stop();
				u40 = l__Humanoid__10:LoadAnimation(l__Animations__22.Idle);
			end;
			if u38.Animation == l__Animations__22.Run2 then
				u38:Stop();
				u38 = l__Humanoid__10:LoadAnimation(l__Animations__22.Run);
				v21.AddKeyframes(u38, l__Humanoid__10);
			end;
			if u39.Animation == l__Animations__22.Walk2 then
				u39:Stop();
				u39 = l__Humanoid__10:LoadAnimation(l__Animations__22.Walk);
				v21.AddKeyframes(u39, l__Humanoid__10);
			end;
		end;
	else
		if u40.Animation == l__Animations__22.Idle or u40.Animation == l__Animations__22.Idle2 then
			u40:Stop();
			u40 = l__Humanoid__10:LoadAnimation(l__Animations__22.Idle3);
		end;
		if u38.Animation == l__Animations__22.Run or u38.Animation == l__Animations__22.Run2 then
			u38:Stop();
			u38 = l__Humanoid__10:LoadAnimation(l__Animations__22.Run3);
			v21.AddKeyframes(u38, l__Humanoid__10);
		end;
		if u39.Animation == l__Animations__22.Walk or u39.Animation == l__Animations__22.Walk2 then
			u39:Stop();
			u39 = l__Humanoid__10:LoadAnimation(l__Animations__22.Walk3);
			v21.AddKeyframes(u39, l__Humanoid__10);
		end;
	end;
	if l__Humanoid__10.MoveDirection == Vector3.new(0, 0, 0) and l__Humanoid__10:GetState() ~= Enum.HumanoidStateType.Jumping and l__Humanoid__10:GetState() ~= Enum.HumanoidStateType.Freefall then
		u39:Stop(0.1);
		u38:Stop(0.1);
		if not u40.isPlaying then
			u40:Play(0.1);
		end;
	elseif (l__Humanoid__10:GetState() == Enum.HumanoidStateType.Running or l__Humanoid__10:GetState() == Enum.HumanoidStateType.RunningNoPhysics) and (not (l__Humanoid__10.WalkSpeed < 20) and u41 and u6) then
		u41 = false;
		v6.HoverForwardEffect();
		wait(0.2);
		u41 = true;
	end;
	if l__Humanoid__10:GetState() == Enum.HumanoidStateType.Freefall and l__HumanoidRootPart__9.Velocity.Y < 0.1 and u6 then
		v27:Stop(0.25);
		if not v26.isPlaying then
			v26:Play(0.25);
		end;
		u39:Stop(0.1);
		u38:Stop(0.1);
	else
		v26:Stop(0.25);
	end;
	if l__Humanoid__10.Health > 0 and v2.Torso:FindFirstChild("Neck") then
		if not u8 and not u9 and not u10 and not u11 then
			v2.Torso.Neck.C1 = v2.Torso.Neck.C1:lerp(l__C1__69 * CFrame.Angles(0, 0, 0), 0.1);
			l__HumanoidRootPart__9.RootJoint.C1 = l__HumanoidRootPart__9.RootJoint.C1:lerp(l__C1__68 * CFrame.Angles(0, 0, 0), 0.1);
			v2.Torso["Left Shoulder"].C1 = v2.Torso["Left Shoulder"].C1:lerp(l__C1__70 * CFrame.Angles(0, 0, 0), 0.1);
			v2.Torso["Right Shoulder"].C1 = v2.Torso["Right Shoulder"].C1:lerp(l__C1__71 * CFrame.Angles(0, 0, 0), 0.1);
			l__CurrentCamera__42.FieldOfView = Lerp(l__CurrentCamera__42.FieldOfView, 70, 0.1);
			return;
		end;
	else
		return;
	end;
	if l__Humanoid__10.WalkSpeed == 0 and not v21.checkIfHit() and not (not u6) or l__Humanoid__10.WalkSpeed == 0 and not v21.checkIfHit() and u7 then
		l__Humanoid__10.WalkSpeed = 0;
		local v84 = v21.CreateTween(l__Humanoid__10, { 0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0 }, {
			WalkSpeed = script.Parent.WalkSpeed.Value
		}, true);
	end;
	local v85 = math.clamp(l__HumanoidRootPart__9.RotVelocity.Y, -10, 10);
	local v86 = math.clamp(v83.X, -10, 10);
	local v87 = math.clamp(v83.X, -20, 20);
	local v88 = math.clamp(v83.Z, -10, 10);
	v2.Torso.Neck.C1 = v2.Torso.Neck.C1:lerp(l__C1__69 * CFrame.Angles(math.rad(-v88), math.rad(v86), math.rad(v86)) * CFrame.Angles(0, 0, math.rad(-v85)), 0.1);
	l__HumanoidRootPart__9.RootJoint.C1 = l__HumanoidRootPart__9.RootJoint.C1:lerp(l__C1__68 * CFrame.Angles(math.rad(v88), math.rad(v87), math.rad(v87)) * CFrame.Angles(0, 0, math.rad(v85)), 0.1);
	v2.Torso["Left Shoulder"].C1 = v2.Torso["Left Shoulder"].C1:lerp(l__C1__70 * CFrame.Angles(0, 0, v85 / 20), 0.1);
	v2.Torso["Right Shoulder"].C1 = v2.Torso["Right Shoulder"].C1:lerp(l__C1__71 * CFrame.Angles(0, 0, v85 / 20), 0.1);
	l__CurrentCamera__42.FieldOfView = Lerp(l__CurrentCamera__42.FieldOfView, u5, 0.1);
end);