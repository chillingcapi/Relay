if not script_key then print("No Key Found") return end
if not script_id then print("No ID Found") return end

repeat task.wait() until game:IsLoaded()
task.wait(1)

if (identifyexecutor() == "Xeno" and identifyexecutor() == "Solara") then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/chillingcapi/Relay/refs/heads/main/Xeno%2CSolara"))()
    task.wait(1)
end

task.spawn(function()
    while task.wait(0.5) do 
        local Player = game.Players.LocalPlayer
        local MainMenu = Player.PlayerGui:FindFirstChild("MainMenu")
        if not MainMenu then continue end
        local ButtonContainer = MainMenu:FindFirstChild("ButtonContainer")
        if not ButtonContainer then continue end
        local PlayButton = ButtonContainer:FindFirstChild("PlayButton")
        if PlayButton then 
            firesignal(PlayButton.MouseButton1Click)
        end
    end
end)

local luarmorURL = string.format("https://api.luarmor.net/files/v4/loaders/%s.lua", script_id)

local success, result = pcall(function()
    loadstring(game:HttpGet(luarmorURL))()
end)

if not success then 
    game:GetService("Players").LocalPlayer:Kick("Failed to load script: " .. tostring(result))
end
