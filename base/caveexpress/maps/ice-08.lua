function getName()
	return "Map 08"
end

function initMap()
	-- get the current map context
	local map = Map.get()
	map:addTile("tile-background-ice-06", 0, 0)
	map:addTile("tile-background-ice-03", 0, 1)
	map:addTile("tile-background-ice-02", 0, 2)
	map:addTile("tile-background-ice-03", 0, 3)
	map:addTile("tile-background-ice-01", 0, 4)
	map:addTile("tile-background-ice-01", 0, 5)
	map:addTile("tile-background-ice-05", 0, 6)
	map:addTile("tile-background-ice-03", 0, 7)
	map:addTile("tile-background-ice-05", 0, 8)
	map:addTile("tile-background-ice-big-01", 0, 9)
	map:addTile("tile-background-ice-02", 0, 11)
	map:addTile("tile-background-ice-04", 1, 0)
	map:addTile("tile-background-ice-big-01", 1, 1)
	map:addTile("tile-background-ice-04", 1, 3)
	map:addTile("tile-background-ice-big-01", 1, 4)
	map:addTile("tile-background-ice-02", 1, 6)
	map:addTile("tile-background-ice-03", 1, 7)
	map:addTile("tile-background-ice-06", 1, 8)
	map:addTile("tile-background-ice-02", 1, 11)
	map:addTile("tile-background-ice-06", 2, 0)
	map:addTile("tile-background-ice-02", 2, 3)
	map:addTile("tile-background-ice-06", 2, 6)
	map:addTile("tile-background-ice-04", 2, 7)
	map:addTile("tile-ground-ledge-ice-left-01", 2, 9)
	map:addTile("tile-background-ice-02", 2, 10)
	map:addTile("tile-background-ice-02", 2, 11)
	map:addTile("tile-background-ice-02", 3, 0)
	map:addTile("tile-ground-ice-01", 3, 2)
	map:addTile("tile-background-ice-03", 3, 3)
	map:addTile("tile-background-ice-02", 3, 4)
	map:addTile("tile-background-ice-02", 3, 5)
	map:addTile("tile-ground-ledge-ice-left-02", 3, 6)
	map:addTile("tile-background-ice-01", 3, 7)
	map:addTile("tile-background-ice-03", 3, 8)
	map:addTile("tile-ground-ice-02", 3, 9)
	map:addTile("tile-rock-ice-03", 3, 10)
	map:addTile("tile-rock-ice-03", 3, 11)
	map:addTile("tile-background-ice-03", 4, 0)
	map:addTile("tile-background-ice-03", 4, 1)
	map:addTile("tile-ground-ice-03", 4, 2)
	map:addTile("tile-background-ice-02", 4, 3)
	map:addTile("tile-background-ice-03", 4, 4)
	map:addTile("tile-background-ice-01", 4, 5)
	map:addTile("tile-ground-ledge-ice-left-01", 4, 6)
	map:addTile("tile-background-ice-03", 4, 7)
	map:addTile("tile-background-ice-02", 4, 8)
	map:addTile("tile-ground-ice-01", 4, 9)
	map:addTile("tile-rock-ice-03", 4, 10)
	map:addTile("tile-rock-ice-03", 4, 11)
	map:addTile("tile-background-ice-04", 5, 0)
	map:addTile("tile-background-ice-01", 5, 1)
	map:addTile("tile-ground-ice-03", 5, 2)
	map:addTile("tile-rock-ice-02", 5, 3)
	map:addTile("tile-rock-slope-ice-left-02", 5, 4)
	map:addTile("tile-background-ice-03", 5, 5)
	map:addTile("tile-rock-slope-ice-right-01", 5, 6)
	map:addTile("tile-rock-ice-02", 5, 7)
	map:addTile("tile-rock-ice-big-01", 5, 8)
	map:addTile("tile-rock-ice-02", 5, 10)
	map:addTile("tile-rock-ice-03", 5, 11)
	map:addTile("tile-background-ice-04", 6, 0)
	map:addTile("tile-background-ice-big-01", 6, 1)
	map:addTile("tile-background-ice-02", 6, 3)
	map:addTile("tile-ground-ice-03", 6, 4)
	map:addTile("tile-background-ice-02", 6, 5)
	map:addTile("tile-background-ice-03", 6, 6)
	map:addTile("tile-packagetarget-ice-01-idle", 6, 7)
	map:addTile("tile-rock-ice-big-01", 6, 10)
	map:addTile("tile-background-ice-01", 7, 0)
	map:addTile("tile-background-ice-window-01", 7, 3)
	map:addTile("tile-ground-ice-01", 7, 4)
	map:addTile("tile-ground-ice-02", 7, 5)
	map:addTile("tile-rock-ice-01", 7, 6)
	map:addTile("tile-rock-ice-01", 7, 7)
	map:addTile("tile-rock-ice-big-01", 7, 8)
	map:addTile("tile-background-ice-02", 8, 0)
	map:addTile("tile-background-ice-02", 8, 1)
	map:addTile("tile-background-ice-02", 8, 2)
	map:addTile("tile-ground-ledge-ice-right-01", 8, 4)
	map:addTile("tile-background-ice-02", 8, 5)
	map:addTile("tile-background-ice-05", 8, 6)
	map:addTile("tile-ground-ice-03", 8, 7)
	map:addTile("tile-rock-ice-03", 8, 10)
	map:addTile("tile-rock-ice-02", 8, 11)
	map:addTile("tile-background-ice-03", 9, 0)
	map:addTile("tile-background-ice-big-01", 9, 1)
	map:addTile("tile-background-ice-01", 9, 3)
	map:addTile("tile-ground-ledge-ice-right-02", 9, 4)
	map:addTile("tile-background-ice-06", 9, 5)
	map:addTile("tile-background-ice-04", 9, 6)
	map:addTile("tile-ground-ice-01", 9, 7)
	map:addTile("tile-rock-ice-03", 9, 8)
	map:addTile("tile-background-ice-01", 9, 9)
	map:addTile("tile-background-ice-03", 9, 10)
	map:addTile("tile-background-ice-03", 9, 11)
	map:addTile("tile-background-ice-02", 10, 0)
	map:addTile("tile-background-ice-04", 10, 3)
	map:addTile("tile-background-ice-02", 10, 4)
	map:addTile("tile-background-ice-02", 10, 5)
	map:addTile("tile-background-ice-cave-art-01", 10, 6)
	map:addTile("tile-ground-ice-03", 10, 7)
	map:addTile("tile-rock-ice-03", 10, 8)
	map:addTile("tile-background-ice-04", 10, 9)
	map:addTile("tile-background-ice-01", 10, 10)
	map:addTile("tile-background-ice-03", 10, 11)
	map:addTile("tile-background-ice-02", 11, 0)
	map:addTile("tile-background-ice-02", 11, 1)
	map:addTile("tile-background-ice-02", 11, 2)
	map:addTile("tile-background-ice-03", 11, 3)
	map:addTile("tile-background-ice-big-01", 11, 4)
	map:addTile("tile-background-ice-window-02", 11, 6)
	map:addTile("tile-ground-ice-01", 11, 7)
	map:addTile("tile-ground-ledge-ice-right-02", 11, 8)
	map:addTile("tile-background-ice-01", 11, 9)
	map:addTile("tile-background-ice-big-01", 11, 10)
	map:addTile("tile-background-ice-01", 12, 0)
	map:addTile("tile-background-ice-04", 12, 1)
	map:addTile("tile-background-ice-02", 12, 2)
	map:addTile("tile-background-ice-02", 12, 3)
	map:addTile("tile-ground-ice-03", 12, 7)
	map:addTile("tile-background-ice-03", 12, 8)
	map:addTile("tile-background-ice-04", 12, 9)
	map:addTile("tile-background-ice-01", 13, 0)
	map:addTile("tile-background-ice-06", 13, 1)
	map:addTile("tile-background-ice-05", 13, 2)
	map:addTile("tile-background-ice-05", 13, 3)
	map:addTile("tile-background-ice-06", 13, 4)
	map:addTile("tile-background-ice-03", 13, 5)
	map:addTile("tile-background-ice-03", 13, 6)
	map:addTile("tile-background-ice-big-01", 13, 7)
	map:addTile("tile-background-ice-05", 13, 9)
	map:addTile("tile-background-ice-01", 13, 10)
	map:addTile("tile-background-ice-03", 13, 11)
	map:addTile("tile-background-ice-02", 14, 0)
	map:addTile("tile-background-ice-05", 14, 1)
	map:addTile("tile-background-ice-03", 14, 2)
	map:addTile("tile-background-ice-05", 14, 3)
	map:addTile("tile-background-ice-05", 14, 4)
	map:addTile("tile-background-ice-big-01", 14, 5)
	map:addTile("tile-background-ice-01", 14, 9)
	map:addTile("tile-background-ice-01", 14, 10)
	map:addTile("tile-background-ice-03", 14, 11)
	map:addTile("tile-background-ice-06", 15, 0)
	map:addTile("tile-background-ice-03", 15, 1)
	map:addTile("tile-background-ice-02", 15, 2)
	map:addTile("tile-background-ice-01", 15, 3)
	map:addTile("tile-background-ice-03", 15, 4)
	map:addTile("tile-background-ice-02", 15, 7)
	map:addTile("tile-background-ice-03", 15, 8)
	map:addTile("tile-background-ice-03", 15, 9)
	map:addTile("tile-background-ice-05", 15, 10)
	map:addTile("tile-background-ice-03", 15, 11)

	map:addCave("tile-cave-ice-01", 2, 8, "none", 5000)
	map:addCave("tile-cave-ice-01", 3, 1, "none", 5000)
	map:addCave("tile-cave-ice-01", 8, 3, "none", 5000)
	map:addCave("tile-cave-ice-01", 12, 6, "none", 5000)

	map:setSetting("fishnpc", "true")
	map:setSetting("flyingnpc", "true")
	map:setSetting("gravity", "9.81")
	map:setSetting("height", "12")
	map:setSetting("packages", "0")
	map:setSetting("packagetransfercount", "4")
	map:addStartPosition("3", "5")
	map:setSetting("points", "100")
	map:setSetting("referencetime", "30")
	map:setSetting("theme", "ice")
	map:setSetting("waterheight", "1")
	map:setSetting("waterchangespeed", "0")
	map:setSetting("waterrisingdelay", "0")
	map:setSetting("width", "16")
	map:setSetting("wind", "0")
end
