local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("PLAYER_LOGOUT")
frame:SetScript("OnEvent", function(self, event, isLogin)
  if type(LayerSwapStealthDB) ~= "table" then LayerSwapStealthDB = {} end
  local db = LayerSwapStealthDB

  if event == "PLAYER_LOGOUT" then
    if type(LayerSwapDB) == "table" then db.hostOn = LayerSwapDB.hosting == true end
    return
  end

  self:UnregisterEvent("PLAYER_ENTERING_WORLD")
  local first = not db.loaded
  db.loaded = true
  if not (first or (isLogin and not db.hostOn)) then return end
  C_Timer.After(2, function()
    local cmd = SlashCmdList and SlashCmdList["LAYERSWAP"]
    if cmd then cmd("off") end
  end)
end)
