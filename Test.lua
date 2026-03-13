for _,v in pairs(game:GetDescendants()) do
    if v:IsA("RemoteEvent") then
        print(v:GetFullName())
    end
end