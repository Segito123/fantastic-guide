getgenv().asd = true
local CamCFrame = workspace.Camera.CFrame
local CamLook = CamCFrame.LookVector
local Angle = -math.atan2(CamLook.Z, CamLook.X) + math.rad(50)
game.RunService.Stepped:Connect(function()
    local Root = game.Players.LocalPlayer.Character.HumanoidRootPart
    Game:GetService("ReplicatedStorage").Events.ControlTurn:FireServer(52)
    game.Players.LocalPlayer.Character.Humanoid.AutoRotate = false
	--Root.CFrame = Root.CFrame * CFrame.Angles(0, math.rad(50), 0)
    CamCFrame = workspace.Camera.CFrame
    CamLook = CamCFrame.LookVector
    if asd == true then
        Angle = -math.atan2(CamLook.Z, CamLook.X) + math.rad(-50)
        print(asd)
        getgenv().asd = false
    else 
        Angle = -math.atan2(CamLook.Z, CamLook.X) + math.rad(125)
        print(asd)
        getgenv().asd = true
    end
    local CFramePos = CFrame.new(Root.Position) * CFrame.Angles(0, Angle + 180, 0)
    Root.CFrame = CFramePos
end)