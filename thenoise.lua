chargeanim = Instance.new("Animation")
chargeanim.AnimationId = "rbxassetid://204295235"

skateanim = Instance.new("Animation")
skateanim.AnimationId = "rbxassetid://204328711"

mouse = game.Players.LocalPlayer:GetMouse()
char = game.Players.LocalPlayer.Character

mouse.KeyDown:Connect(function(key)
if key == "e" then
anim = char.Humanoid:LoadAnimation(chargeanim)
anim:Play()
wait(0.8)
local tween = game.TweenService:Create(char.HumanoidRootPart, TweenInfo.new(1), {CFrame = CFrame.new(mouse.Hit.p.X, mouse.Hit.p.Y + 3, mouse.Hit.p.Z)})
tween:Play()
end
if key == "q" then
anim = char.Humanoid:LoadAnimation(skateanim)
anim:Play()
anim:AdjustSpeed(0)
local tween = game.TweenService:Create(char.HumanoidRootPart, TweenInfo.new(2), {CFrame = CFrame.new(mouse.Hit.p.X, mouse.Hit.p.Y + 3, mouse.Hit.p.Z)})
tween:Play()
wait(2)
anim:Stop()
end
end)