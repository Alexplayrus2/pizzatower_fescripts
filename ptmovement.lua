--pizza tower movement script made by Alexplayrus1#0746
speedmultiplier = 0
dashanim = "rbxassetid://204328711"
anim = Instance.new("Animation")
--taunt code ive made like a month ago probably lol
anims = {"rbxassetid://429703734", "rbxassetid://204292303", "rbxassetid://45834924", "rbxassetid://35154961", "rbxassetid://129423131", "rbxassetid://128853357"}
mouse = game.Players.LocalPlayer:GetMouse()
char = game.Players.LocalPlayer.Character
workspace.CurrentCamera.FieldOfView = 40
cantaunt = true
local taunt = mouse.KeyDown:Connect(function(key)
if key == "t" then
if cantaunt == true then
speedmultiplier = 0
workspace.CurrentCamera.FieldOfView = 40
cantaunt = false
local anim = Instance.new("Animation")
anim.AnimationId = anims[math.random(1,#anims)]
local loadedanim = char.Humanoid:LoadAnimation(anim)
loadedanim:Play()
wait(0.2)
loadedanim:AdjustSpeed(0)
wait(0.4)
loadedanim:Stop()
wait(0.1)
cantaunt = true
end
end
end)

--dash code
hum = char:FindFirstChildOfClass("Humanoid")
root = char:FindFirstChild("HumanoidRootPart")
runservice = game:GetService("RunService")
lol = runservice.RenderStepped:Connect(function()
if hum.MoveDirection ~= Vector3.new(0,0,0) then
if anim2 then
anim2:Stop()
end
root.CFrame = root.CFrame + Vector3.new(hum.MoveDirection.X * speedmultiplier, hum.MoveDirection.Y * speedmultiplier, hum.MoveDirection.Z * speedmultiplier)
speedmultiplier = speedmultiplier + 0.01
workspace.CurrentCamera.FieldOfView = workspace.CurrentCamera.FieldOfView + 1
if speedmultiplier < 1 then
dashanim = "rbxassetid://204328711"
end
if speedmultiplier > 1 then
dashanim = "rbxassetid://429703734"
end
if speedmultiplier > 2 then
dashanim = "rbxassetid://204062532"
end
if speedmultiplier > 3 then
dashanim = "rbxassetid://45834924"
end
anim.AnimationId = dashanim
anim2 = hum:LoadAnimation(anim)
anim2:Play()

else
speedmultiplier = 0
workspace.CurrentCamera.FieldOfView = 40
if anim2 then
anim2:Stop()
end
end
if hum.Health<1 then
workspace.CurrentCamera.FieldOfView = 70
taunt:Disconnect()
lol:Disconnect()
end
end)
