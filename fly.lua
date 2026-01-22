_G.GodMode = true
_G.FlySpeed = 50

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- 無敵・自動回復
spawn(function()
    while _G.GodMode do
        task.wait(0.5)
        if humanoid.Health < humanoid.MaxHealth then
            humanoid.Health = humanoid.MaxHealth
        end
    end
end)

-- 簡易的な空飛び（スマホ用：ジャンプすると浮く）
local bodyVelocity = Instance.new("BodyVelocity")
bodyVelocity.Velocity = Vector3.new(0, 0, 0)
bodyVelocity.MaxForce = Vector3.new(0, 0, 0)
bodyVelocity.Parent = character:WaitForChild("UpperTorso")

print("GitHubから無敵・飛行スクリプトを読み込みました！")
