local model:Model = game:GetService("ReplicatedStorage").JumpscareModels.Figureold



local player =game.Players.LocalPlayer
local char = player.Character

while true do
    task.wait(0.1)
    
    local newModel = model:Clone()
    newModel.Parent = workspace
    newModel:PivotTo(char:GetPivot() * CFrame.new(0,0,-4) )
    task.spawn(function()
        while true do
            task.wait(0.05)
            newModel:PivotTo(newModel:GetPivot()*CFrame.fromOrientation(0,math.rad(20),0))
        end
    end)
end
