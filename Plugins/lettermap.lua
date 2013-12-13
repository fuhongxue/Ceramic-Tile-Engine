--------------------------------------------------------------------------------
--[[
Dusk Plugin: Lettermap

Provides a debug view of any tile layer in a map using simple ASCII art.
--]]
--------------------------------------------------------------------------------

local lettermap = {}

lettermap.yes = function(tile) return "[#]" end

lettermap.no = function(tile) return " - " end

--------------------------------------------------------------------------------
-- Add Lettermap Plugin
--------------------------------------------------------------------------------
function lettermap.register(map)
	for i = 1, #map.layer do

		if map.layer[i]._type == "tile" then
			map.layer[i].lettermap_filter = function(t) return true end

			map.layer[i].lettermap = function(startX, startY, w, h)
				local startX = startX or 1
				local startY = startY or 1
				local w = w or map.data.mapWidth
				local h = h or map.data.mapHeight
				local lm = ""
				
				for y = startY, startY + h do
					for x = startX, startX + w do
						if map.layer[i].tile(x, y) then
							if map.layer[i].lettermap_filter(map.layer[i].tile(x, y)) then
								lm = lm .. lettermap.yes(map.layer[i].tile(x, y))
							else
								lm = lm .. lettermap.no(map.layer[i].tile(x, y))
							end
						else
							lm = lm .. lettermap.no({tileX = x, tileY = y})
						end
					end
					lm = lm .. "\n"
				end -- for

				return lm
			end
		end
	end
end

return lettermap