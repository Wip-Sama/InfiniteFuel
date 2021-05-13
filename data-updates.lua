--going to be removed
if mods["Krastorio2"] and settings.startup["IF-kr-Infinite-Fuel"].value == true then
  data.raw.item["kr-Infinite-Fuel"].fuel_category = "vehicle-fuel"
  --data.raw.recipe["kr-Infinite-Fuel"].hidden = false
  --table.insert(data.raw["technology"]["Infinite-Power"].effects, {type = "unlock-recipe",recipe = "kr-Infinite-Fuel"} )
end
if settings.startup["IF-kr-Infinite-Fuel"].value == false then
  --data.raw.item["kr-Infinite-Fuel"].fuel_category = "nothing"
end

if settings.startup["IF-enable-on-nuclear-reactor"].value == true then
  data.raw.item["Reactor-Infinite-Fuel"].fuel_category = "nuclear"
  --data.raw.recipe["Reactor-Infinite-Fuel"].hidden = false
  --table.insert(data.raw["technology"]["Infinite-Power"].effects, {type = "unlock-recipe",recipe = "Reactor-Infinite-Fuel"} )
end
if settings.startup["IF-enable-on-nuclear-reactor"].value == false then
  --data.raw.item["Reactor-Infinite-Fuel"].fuel_category = "nothing"
end
--going to be removed end

local IFFD = settings.startup["IF-fuel-disabler"].value
local IFFD2 = {}
if IFFD == "tier 1" then
  IFFD2 = 1
elseif IFFD == "tier 2" then
  IFFD2 = 2
elseif IFFD == "tier 3" then
  IFFD2 = 3
else
  IFFD2 = 0
end

if IFFD2 >= 1 then
  data.raw["recipe"]["Infinite-Fuel"].hidden = false
  data.raw["technology"]["Infinite-Power"].hidden = false
  table.insert(data.raw["technology"]["Infinite-Power"].effects, {type = "unlock-recipe",recipe = "Infinite-Fuel"} )
  if IFFD2 >= 2 then
    data.raw["recipe"]["Boosted-Infinite-Fuel"].hidden = false
    table.insert(data.raw["technology"]["Infinite-Power"].effects, {type = "unlock-recipe",recipe = "Boosted-Infinite-Fuel"} )
    if IFFD2 >= 3 then
      data.raw["recipe"]["Ultra-Boosted-Infinite-Fuel"].hidden = false
      table.insert(data.raw["technology"]["Infinite-Power"].effects, {type = "unlock-recipe",recipe = "Ultra-Boosted-Infinite-Fuel"} )
    end
  end
end

--Fuel Balancer
local recipebalancing = settings.startup["IF-fuel-recipebalancer"].value
if recipebalancing == "easy" then
elseif recipebalancing == "normal" then
  data.raw["recipe"]["Infinite-Fuel"].ingredients = {{"nuclear-fuel", 10}}
  data.raw["recipe"]["Boosted-Infinite-Fuel"].ingredients = {{"Infinite-Fuel", 10}}
  data.raw["recipe"]["Ultra-Boosted-Infinite-Fuel"].ingredients = {{"Boosted-Infinite-Fuel", 10}}
  data.raw["recipe"]["Infinite-Fuel"].energy_required = 750
  data.raw["recipe"]["Boosted-Infinite-Fuel"].energy_required = 1500
  data.raw["recipe"]["Ultra-Boosted-Infinite-Fuel"].energy_required = 3000
elseif recipebalancing == "hard" then
  data.raw["recipe"]["Infinite-Fuel"].ingredients = {{"nuclear-fuel", 20}, {"rocket-fuel", 10}}
  data.raw["recipe"]["Boosted-Infinite-Fuel"].ingredients = {{"Infinite-Fuel", 20}, {"rocket-fuel", 10}}
  data.raw["recipe"]["Ultra-Boosted-Infinite-Fuel"].ingredients = {{"Boosted-Infinite-Fuel", 20}, {"rocket-fuel", 10}}
  data.raw["recipe"]["Infinite-Fuel"].energy_required = 1250
  data.raw["recipe"]["Boosted-Infinite-Fuel"].energy_required = 2500
  data.raw["recipe"]["Ultra-Boosted-Infinite-Fuel"].energy_required = 5000
elseif recipebalancing == "extreme" then
  data.raw["recipe"]["Infinite-Fuel"].ingredients = {{"nuclear-fuel", 40}, {"rocket-fuel", 20}, {"low-density-structure", 5}, {"processing-unit", 5}}
  data.raw["recipe"]["Boosted-Infinite-Fuel"].ingredients = {{"Infinite-Fuel", 40}, {"rocket-fuel", 20}, {"low-density-structure", 5}, {"processing-unit", 5}}
  data.raw["recipe"]["Ultra-Boosted-Infinite-Fuel"].ingredients = {{"Boosted-Infinite-Fuel", 40}, {"rocket-fuel", 20}, {"low-density-structure", 5}, {"processing-unit", 5}}
  data.raw["recipe"]["Infinite-Fuel"].energy_required = 2500
  data.raw["recipe"]["Boosted-Infinite-Fuel"].energy_required = 5000
  data.raw["recipe"]["Ultra-Boosted-Infinite-Fuel"].energy_required = 10000
else
end

local bonusbalancing = settings.startup["IF-fuel-bonusbalancer"].value
if bonusbalancing == "easy" then
elseif bonusbalancing == "normal" then
  data.raw["item"]["Infinite-Fuel"].fuel_acceleration_multiplier = 2.5
  data.raw["item"]["Boosted-Infinite-Fuel"].fuel_acceleration_multiplier = 5
  data.raw["item"]["Ultra-Boosted-Infinite-Fuel"].fuel_acceleration_multiplier = 10
  data.raw["item"]["Infinite-Fuel"].fuel_top_speed_multiplier = 4.5
  data.raw["item"]["Boosted-Infinite-Fuel"].fuel_top_speed_multiplier = 6
  data.raw["item"]["Ultra-Boosted-Infinite-Fuel"].fuel_top_speed_multiplier = 9.5
elseif bonusbalancing == "hard" then
  data.raw["item"]["Infinite-Fuel"].fuel_acceleration_multiplier = 2
  data.raw["item"]["Boosted-Infinite-Fuel"].fuel_acceleration_multiplier = 4
  data.raw["item"]["Ultra-Boosted-Infinite-Fuel"].fuel_acceleration_multiplier = 8
  data.raw["item"]["Infinite-Fuel"].fuel_top_speed_multiplier = 4
  data.raw["item"]["Boosted-Infinite-Fuel"].fuel_top_speed_multiplier = 5
  data.raw["item"]["Ultra-Boosted-Infinite-Fuel"].fuel_top_speed_multiplier = 6
elseif bonusbalancing == "extreme" then
  data.raw["item"]["Infinite-Fuel"].fuel_acceleration_multiplier = 1.5
  data.raw["item"]["Boosted-Infinite-Fuel"].fuel_acceleration_multiplier = 2
  data.raw["item"]["Ultra-Boosted-Infinite-Fuel"].fuel_acceleration_multiplier = 2.5
  data.raw["item"]["Infinite-Fuel"].fuel_top_speed_multiplier = 3
  data.raw["item"]["Boosted-Infinite-Fuel"].fuel_top_speed_multiplier = 3.5
  data.raw["item"]["Ultra-Boosted-Infinite-Fuel"].fuel_top_speed_multiplier = 4
else
end

local technologybalancing = settings.startup["IF-fuel-technologybalancer"].value
if technologybalancing == "easy" then
  data.raw["technology"]["Infinite-Power"].prerequisites = {"oil-processing"}
  data.raw["technology"]["Infinite-Power"].ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}}
elseif technologybalancing == "normal" then
else
end