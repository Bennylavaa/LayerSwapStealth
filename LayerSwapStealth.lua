local login = CreateFrame("Frame")
login:RegisterEvent("PLAYER_ENTERING_WORLD")
login:SetScript("OnEvent", function(self, _, isLogin)
  self:UnregisterEvent("PLAYER_ENTERING_WORLD")
  if not isLogin then return end
  C_Timer.After(2, function()
    local cmd = SlashCmdList and SlashCmdList["LAYERSWAP"]
    if cmd then cmd("off") end
  end)
end)

local unlock = CreateFrame("Frame")
unlock:SetScript("OnUpdate", function()
  local db = LayerSwapDB
  if type(db) == "table" and db.hostLockUntil ~= nil then
    db.hostLockUntil, db.hostLockWho = nil, nil
  end
end)
