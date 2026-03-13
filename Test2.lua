local player = game.Players.LocalPlayer

task.spawn(function()
    while true do
        task.wait(0.5)

        local char = player.Character
        if not char then continue end

        local root = char:FindFirstChild("HumanoidRootPart")
        if not root then continue end

        for _,prompt in pairs(workspace:GetDescendants()) do
            if prompt:IsA("ProximityPrompt") then

                local part = prompt.Parent
                if part and part:IsA("BasePart") then

                    local dist = (root.Position - part.Position).Magnitude

                    if dist < 8 then
                        prompt:InputHoldBegin()
                        task.wait(prompt.HoldDuration or 0.5)
                        prompt:InputHoldEnd()
                    end

                end
            end
        end
    end
end)