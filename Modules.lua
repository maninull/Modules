local idk = {}

local Players = game:GetService("Players")

local Services = {
    game:GetService('AdService'),
    game:GetService('SocialService')
}

function idk.isAlive(Entity)
    return Entity.Character and workspace.Alive:FindFirstChild(Entity.Name) and workspace.Alive:FindFirstChild(Entity.Name).Humanoid.Health > 0
end

function idk.getBall()
    for index, ball in workspace:WaitForChild("Balls"):GetChildren() do
        if ball:IsA("BasePart") and ball:GetAttribute("realBall") then
            return ball
        end
    end
end

return idk;
