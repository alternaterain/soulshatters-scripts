for i, connection in pairs(getconnections(game.Players.LocalPlayer.Character.Head.DescendantRemoving)) do
    connection:Disable()
end
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName:Destroy()
