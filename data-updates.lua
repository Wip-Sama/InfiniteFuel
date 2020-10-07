if mods["krastorio2"] then
  data.raw["recipe"]["kr2-Infinite-Fuel"].hidden = false
  data.raw["recipe"]["kr2-Boosted-Infinite-Fuel"].hidden = false
  data.raw["recipe"]["kr2-Ultra-Boosted-Infinite-Fuel"].hidden = false
  data.raw["recipe"]["kr2-Infinite-Power"].hidden = false
end

local fuel_list = {
  "Infinite-Fuel",
  "Boosted-Infinite-Fuel",
  "Ultra-Boosted-Infinite-Fuel",
}

if mods["krastorio2"] then
  for _, fuel in pairs(fuel_list) do
    if data.raw.item[fuel].fuel_category ~= "vehicle-fuel" then
      table.insert(data.raw.item[fuel].fuel_category, "vehicle-fuel" )
    end
	end
end

local IFFD = settings.startup["IF-fuel-disabler"].value
if IFFD == "tier 1" or IFFD == "tier 2" or IFFD == "tier 3" then
  data.raw["recipe"]["Infinite-Fuel"].hidden = false
  data.raw["technology"]["Infinite-Power"].hidden = false
  table.insert(data.raw["technology"]["Infinite-Power"].effects, {type = "unlock-recipe",recipe = "Infinite-Fuel"} )
  if IFFD == "tier 2" or IFFD == "tier 3" then
    data.raw["recipe"]["Boosted-Infinite-Fuel"].hidden = false
    table.insert(data.raw["technology"]["Infinite-Power"].effects, {type = "unlock-recipe",recipe = "Boosted-Infinite-Fuel"} )
    if IFFD == "tier 3" then
      data.raw["recipe"]["Ultra-Boosted-Infinite-Fuel"].hidden = false
      table.insert(data.raw["technology"]["Infinite-Power"].effects, {type = "unlock-recipe",recipe = "Ultra-Boosted-Infinite-Fuel"} )
    end
  end
end