task.spawn(function()

    local player = game.Players.LocalPlayer

    while true do
        task.wait(1)

        local char = player.Character
        if not char then continue end

        local root = char:FindFirstChild("HumanoidRootPart")
        if not root then continue end

        local original = root.CFrame

        for _,prompt in pairs(workspace:GetDescendants()) do

            if prompt:IsA("ProximityPrompt") then

                local parent = prompt.Parent
                local part

                if parent:IsA("BasePart") then
                    part = parent
                elseif parent.Parent and parent.Parent:IsA("BasePart") then
                    part = parent.Parent
                end

                if part then

                    pcall(function()

                        --teleport to item
                        root.CFrame = part.CFrame + Vector3.new(0,2,0)

                        --look at item
                        root.CFrame = CFrame.lookAt(root.Position, part.Position)

                        task.wait(0.3)

                        --activate prompt
                        fireproximityprompt(prompt, prompt.HoldDuration)

                        task.wait(0.4)

                    end)

                end

            end

        end

        root.CFrame = original

    end

end)