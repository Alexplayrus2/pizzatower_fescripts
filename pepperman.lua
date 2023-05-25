chargeanim = Instance.new("Animation")
chargeanim.AnimationId = "rbxassetid://204062532"
jumpanim = Instance.new("Animation")
jumpanim.AnimationId = "rbxassetid://179224234"

mouse = game.Players.LocalPlayer:GetMouse()
char = game.Players.LocalPlayer.Character

mouse.KeyDown:Connect(function(key)
if key == "q" then
anim = char.Humanoid:LoadAnimation(jumpanim)
anim:Play()
char.Humanoid.Jump = true
char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame + Vector3.new(0,20)
wait(0.8)
anim:Stop()
end
if key == "e" then
anim = char.Humanoid:LoadAnimation(chargeanim)
anim:Play()
local tween = game.TweenService:Create(char.HumanoidRootPart, TweenInfo.new(1), {CFrame = CFrame.new(mouse.Hit.p.X, mouse.Hit.p.Y + 3, mouse.Hit.p.Z)})
tween:Play()
end
end)