local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", function(self, _, isLogin)
  self:UnregisterEvent("PLAYER_ENTERING_WORLD")
  if not isLogin then return end
  -- wait a moment so LayerSwap's own login handler (which turns Host on) runs first
  C_Timer.After(2, function()
    local cmd = SlashCmdList and SlashCmdList["LAYERSWAP"]
    if cmd then cmd("off") end
  end)
end)
