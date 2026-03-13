task.spawn(function()

    local player = game.Players.LocalPlayer

    while true do
        task.wait(2)

        local char = player.Character
        if not char then continue end

        local root = char:FindFirstChild("HumanoidRootPart")
        if not root then continue end

        local elevator = root.CFrame

        for _,prompt in pairs(workspace:GetDescendants()) do
            if prompt:IsA("ProximityPrompt") then

                local part = prompt.Parent
                if part and part:IsA("BasePart") then

                    root.CFrame = part.CFrame + Vector3.new(0,2,0)

                    task.wait(0.4)

                    prompt:InputHoldBegin()
                    task.wait(prompt.HoldDuration)
                    prompt:InputHoldEnd()

                    task.wait(0.4)

                    root.CFrame = elevator

                end
            end
        end

    end
end)