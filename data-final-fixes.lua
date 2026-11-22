--- Adds the "IF" fuel category to a burner energy source without duplicating entries.
local function add_if_fuel_category(source, require_burner_type)
  if type(source) ~= "table" then
    return
  end
  if require_burner_type and source.type ~= "burner" then
    return
  end

  if source.fuel_category then
    source.fuel_categories = { source.fuel_category }
    source.fuel_category = nil
  elseif source.fuel_categories == nil then
    -- Factorio defaults BurnerEnergySource::fuel_categories to {"chemical"} when omitted.
    source.fuel_categories = { "chemical" }
  end

  for _, existing in pairs(source.fuel_categories) do
    if existing == "IF" then
      return
    end
  end
  table.insert(source.fuel_categories, "IF")
end

local function enable_infinite_fuel_for_prototype(proto)
  if type(proto) ~= "table" then
    return
  end
  add_if_fuel_category(proto.burner, false)
  add_if_fuel_category(proto.energy_source, true)
end

local entity_list = {
  "locomotive",
  "car",
  "inserter",
  "mining-drill",
  "boiler",
  "furnace",
  "assembling-machine",
}

if settings.startup["IF-enable-on-nuclear-reactor"].value == true then
  table.insert(entity_list, "reactor")
end

if mods["Krastorio2"] and settings.startup["IF-kr-Infinite-Fuel"].value == true then
  table.insert(entity_list, "generator-equipment")
  table.insert(entity_list, "spider-vehicle")
end

if mods["space-age"] then
  table.insert(entity_list, "agricultural-tower")
end

if mods["lignumis"] and settings.startup["IF-lignumis-Infinite-Fuel"].value == true then
  --enable_infinite_fuel_for_prototype(data.raw["agricultural-tower"]["burner-agricultural-tower"])
  --enable_infinite_fuel_for_prototype(data.raw["assembling-machine"]["lumber-mill"])
end

for _, entity_type in pairs(entity_list) do
  if data.raw[entity_type] ~= nil then
    for _, proto in pairs(data.raw[entity_type]) do
      enable_infinite_fuel_for_prototype(proto)
    end
  end
end