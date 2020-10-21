if mods["Krastorio2"] and settings.startup["IF-kr-Infinite-Fuel"].value == true then
  data.raw.item["kr-Infinite-Fuel"].fuel_category = "vehicle-fuel"
  data.raw.recipe["kr-Infinite-Fuel"].hidden = false
  table.insert(data.raw["technology"]["Infinite-Power"].effects, {type = "unlock-recipe",recipe = "kr-Infinite-Fuel"} )
end
if settings.startup["IF-kr-Infinite-Fuel"].value == false or not settings.startup["IF-kr-Infinite-Fuel"].value == true then
  data.raw.item["kr-Infinite-Fuel"].fuel_category = "nothing"
  data.raw.recipe["kr-Infinite-Fuel"].hidden = true
  data.raw.recipe["kr-Infinite-Fuel"].enabled = false
end

if settings.startup["IF-enable-on-nuclear-reactor"].value == true then
  data.raw.item["Reactor-Infinite-Fuel"].fuel_category = "nuclear"
  data.raw.recipe["Reactor-Infinite-Fuel"].hidden = false
  table.insert(data.raw["technology"]["Infinite-Power"].effects, {type = "unlock-recipe",recipe = "Reactor-Infinite-Fuel"} )
end
if settings.startup["IF-enable-on-nuclear-reactor"].value == false then
  data.raw.item["Reactor-Infinite-Fuel"].fuel_category = "nothing"
  data.raw.recipe["Reactor-Infinite-Fuel"].hidden = true
  data.raw.recipe["Reactor-Infinite-Fuel"].enabled = false
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