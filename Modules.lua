local idk = {}
function idk.isAlive(Entity)
    if not Entity.Character then
        return false
    end

    local aliveFolder = workspace:FindFirstChild("Alive")
    if aliveFolder then
        local aliveEntity = aliveFolder:FindFirstChild(Entity.Name)
        return aliveEntity and aliveEntity:FindFirstChild("Humanoid") and aliveEntity.Humanoid.Health > 0
    end

    return false
end

function idk.getBall()
    local ballsFolder = workspace:WaitForChild("Balls")
    if not ballsFolder then
        return nil
    end

    for _, ball in ipairs(ballsFolder:GetChildren()) do
        if ball:IsA("BasePart") and ball:GetAttribute("realBall") then
            return ball
        end
    end

    return nil
end

return idk;
