function getName()
	return "Map 07"
end

function initMap()
	-- get the current map context
	local map = Map.get()
	map:addTile("tile-background-04", 0, 0)
	map:addTile("tile-ground-04", 0, 1)
	map:addTile("tile-rock-03", 0, 2)
	map:addTile("tile-rock-01", 0, 3)
	map:addTile("tile-rock-03", 0, 4)
	map:addTile("tile-rock-02", 0, 5)
	map:addTile("tile-background-03", 0, 6)
	map:addTile("tile-background-03", 0, 7)
	map:addTile("tile-ground-02", 0, 8)
	map:addTile("tile-rock-big-01", 0, 9)
	map:addTile("tile-rock-01", 0, 11)
	map:addTile("tile-rock-02", 0, 12)
	map:addTile("tile-rock-big-01", 0, 13)
	map:addTile("tile-background-02", 1, 0)
	map:addTile("tile-background-big-01", 1, 1)
	map:addTile("tile-background-01", 1, 3)
	map:addTile("tile-background-01", 1, 4)
	map:addTile("tile-background-03", 1, 5)
	map:addTile("tile-background-01", 1, 6)
	map:addTile("tile-ground-01", 1, 8)
	map:addTile("tile-rock-01", 1, 11)
	map:addTile("tile-rock-03", 1, 12)
	map:addTile("tile-background-01", 2, 0)
	map:addTile("tile-background-02", 2, 3)
	map:addTile("tile-background-02", 2, 4)
	map:addTile("tile-background-big-01", 2, 5)
	map:addTile("tile-background-03", 2, 7)
	map:addTile("tile-ground-03", 2, 8)
	map:addTile("tile-rock-03", 2, 9)
	map:addTile("tile-rock-01", 2, 10)
	map:addTile("tile-rock-01", 2, 11)
	map:addTile("tile-rock-big-01", 2, 12)
	map:addTile("tile-rock-02", 2, 14)
	map:addTile("tile-background-02", 3, 0)
	map:addTile("tile-background-cave-art-01", 3, 1)
	map:addTile("tile-background-03", 3, 2)
	map:addTile("tile-background-02", 3, 3)
	map:addTile("tile-background-01", 3, 4)
	map:addTile("tile-background-02", 3, 7)
	map:addTile("tile-background-cave-art-01", 3, 8)
	map:addTile("tile-waterfall-01", 3, 9)
	map:addTile("tile-rock-03", 3, 11)
	map:addTile("tile-rock-02", 3, 14)
	map:addTile("tile-background-02", 4, 0)
	map:addTile("tile-background-02", 4, 1)
	map:addTile("tile-ground-01", 4, 2)
	map:addTile("tile-rock-big-01", 4, 3)
	map:addTile("tile-background-02", 4, 5)
	map:addTile("tile-background-04", 4, 6)
	map:addTile("tile-background-01", 4, 7)
	map:addTile("tile-background-01", 4, 8)
	map:addTile("tile-background-01", 4, 9)
	map:addTile("tile-ground-04", 4, 10)
	map:addTile("tile-rock-03", 4, 11)
	map:addTile("tile-rock-01", 4, 12)
	map:addTile("tile-rock-03", 4, 13)
	map:addTile("tile-rock-01", 4, 14)
	map:addTile("tile-background-cave-art-01", 5, 0)
	map:addTile("tile-ground-04", 5, 2)
	map:addTile("tile-background-02", 5, 5)
	map:addTile("tile-background-04", 5, 6)
	map:addTile("tile-background-02", 5, 7)
	map:addTile("tile-background-cave-art-01", 5, 8)
	map:addTile("tile-background-01", 5, 9)
	map:addTile("tile-ground-04", 5, 10)
	map:addTile("tile-rock-03", 5, 11)
	map:addTile("tile-ground-02", 5, 12)
	map:addTile("tile-rock-01", 5, 13)
	map:addTile("tile-rock-03", 5, 14)
	map:addTile("tile-background-02", 6, 0)
	map:addTile("tile-background-03", 6, 1)
	map:addTile("tile-ground-03", 6, 2)
	map:addTile("tile-rock-01", 6, 3)
	map:addTile("tile-rock-02", 6, 4)
	map:addTile("tile-rock-slope-left-02", 6, 5)
	map:addTile("tile-background-02", 6, 6)
	map:addTile("tile-background-01", 6, 7)
	map:addTile("tile-background-04", 6, 8)
	map:addTile("tile-background-03", 6, 9)
	map:addTile("tile-background-02", 6, 10)
	map:addTile("tile-background-02", 6, 11)
	map:addTile("tile-background-02", 6, 12)
	map:addTile("tile-rock-big-01", 6, 13)
	map:addTile("tile-background-01", 7, 0)
	map:addTile("tile-background-02", 7, 1)
	map:addTile("tile-rock-03", 7, 2)
	map:addTile("tile-rock-03", 7, 3)
	map:addTile("tile-rock-big-01", 7, 4)
	map:addTile("tile-background-cave-art-01", 7, 6)
	map:addTile("tile-background-02", 7, 7)
	map:addTile("tile-background-big-01", 7, 8)
	map:addTile("tile-background-02", 7, 10)
	map:addTile("tile-background-02", 7, 11)
	map:addTile("tile-background-02", 7, 12)
	map:addTile("tile-rock-03", 8, 0)
	map:addTile("tile-rock-big-01", 8, 1)
	map:addTile("tile-rock-03", 8, 3)
	map:addTile("tile-background-04", 8, 6)
	map:addTile("tile-background-02", 8, 7)
	map:addTile("tile-background-02", 8, 10)
	map:addTile("tile-background-02", 8, 11)
	map:addTile("tile-background-02", 8, 12)
	map:addTile("tile-background-02", 8, 13)
	map:addTile("tile-rock-02", 8, 14)
	map:addTile("tile-rock-01", 9, 0)
	map:addTile("tile-rock-big-01", 9, 3)
	map:addTile("tile-rock-01", 9, 5)
	map:addTile("tile-background-02", 9, 6)
	map:addTile("tile-background-01", 9, 7)
	map:addTile("tile-background-02", 9, 8)
	map:addTile("tile-background-03", 9, 9)
	map:addTile("tile-background-01", 9, 10)
	map:addTile("tile-background-02", 9, 11)
	map:addTile("tile-background-01", 9, 12)
	map:addTile("tile-background-03", 9, 13)
	map:addTile("tile-background-02", 9, 14)
	map:addTile("tile-rock-03", 10, 0)
	map:addTile("tile-rock-03", 10, 1)
	map:addTile("tile-rock-01", 10, 2)
	map:addTile("tile-rock-03", 10, 5)
	map:addTile("tile-background-02", 10, 6)
	map:addTile("tile-background-02", 10, 7)
	map:addTile("tile-background-01", 10, 8)
	map:addTile("tile-background-02", 10, 9)
	map:addTile("tile-background-04", 10, 10)
	map:addTile("tile-background-02", 10, 11)
	map:addTile("tile-background-big-01", 10, 12)
	map:addTile("tile-background-02", 10, 14)
	map:addTile("tile-background-02", 11, 0)
	map:addTile("tile-background-04", 11, 1)
	map:addTile("tile-background-big-01", 11, 2)
	map:addTile("tile-background-02", 11, 4)
	map:addTile("tile-background-03", 11, 5)
	map:addTile("tile-background-02", 11, 6)
	map:addTile("tile-geyser-rock-01-active", 11, 7)
	map:addTile("tile-rock-slope-left-02", 11, 9)
	map:addTile("tile-background-03", 11, 10)
	map:addTile("tile-background-02", 11, 11)
	map:addTile("tile-background-02", 11, 14)
	map:addTile("tile-background-big-01", 12, 0)
	map:addTile("tile-background-01", 12, 4)
	map:addTile("tile-packagetarget-rock-01-idle", 12, 5)
	map:addTile("tile-rock-03", 12, 6)
	map:addTile("tile-rock-03", 12, 7)
	map:addTile("tile-rock-03", 12, 8)
	map:addTile("tile-rock-03", 12, 9)
	map:addTile("tile-rock-shim-01", 12, 10)
	map:addTile("tile-background-02", 12, 11)
	map:addTile("tile-background-02", 12, 12)
	map:addTile("tile-background-02", 12, 13)
	map:addTile("tile-background-02", 12, 14)
	map:addTile("tile-background-big-01", 13, 2)
	map:addTile("tile-background-01", 13, 4)
	map:addTile("tile-ground-04", 13, 5)
	map:addTile("tile-rock-03", 13, 6)
	map:addTile("tile-rock-01", 13, 7)
	map:addTile("tile-rock-03", 13, 8)
	map:addTile("tile-rock-slope-right-02", 13, 9)
	map:addTile("tile-background-03", 13, 10)
	map:addTile("tile-background-02", 13, 11)
	map:addTile("tile-background-01", 13, 12)
	map:addTile("tile-background-03", 13, 13)
	map:addTile("tile-background-02", 13, 14)
	map:addTile("tile-background-02", 14, 0)
	map:addTile("tile-background-02", 14, 1)
	map:addTile("tile-background-02", 14, 4)
	map:addTile("tile-background-01", 14, 5)
	map:addTile("tile-background-cave-art-01", 14, 6)
	map:addTile("tile-background-cave-art-01", 14, 7)
	map:addTile("tile-background-03", 14, 8)
	map:addTile("tile-background-03", 14, 9)
	map:addTile("tile-background-04", 14, 10)
	map:addTile("tile-background-02", 14, 11)
	map:addTile("tile-background-02", 14, 12)
	map:addTile("tile-background-02", 14, 13)
	map:addTile("tile-background-02", 14, 14)
	map:addTile("tile-background-02", 15, 0)
	map:addTile("tile-background-01", 15, 1)
	map:addTile("tile-background-03", 15, 2)
	map:addTile("tile-background-02", 15, 3)
	map:addTile("tile-background-03", 15, 4)
	map:addTile("tile-background-01", 15, 5)
	map:addTile("tile-background-01", 15, 6)
	map:addTile("tile-background-03", 15, 7)
	map:addTile("tile-background-02", 15, 8)
	map:addTile("tile-background-cave-art-01", 15, 9)
	map:addTile("tile-background-02", 15, 10)
	map:addTile("tile-background-02", 15, 11)
	map:addTile("tile-background-02", 15, 12)
	map:addTile("tile-background-02", 15, 13)
	map:addTile("tile-background-02", 15, 14)

	map:addCave("tile-cave-02", 1, 7, "none", 5000)
	map:addCave("tile-cave-02", 5, 1, "none", 5000)

	map:setSetting("fishnpc", "true")
	map:setSetting("flyingnpc", "true")
	map:setSetting("gravity", "9.81")
	map:setSetting("height", "15")
	map:setSetting("packagetransfercount", "2")
	map:addStartPosition("2", "2")
	map:setSetting("points", "150")
	map:setSetting("referencetime", "30")
	map:setSetting("theme", "rock")
	map:setSetting("waterheight", "4")
	map:setSetting("waterchangespeed", "0")
	map:setSetting("waterrisingdelay", "0")
	map:setSetting("width", "16")
	map:setSetting("wind", "0.0")
end
