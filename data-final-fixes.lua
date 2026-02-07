local function ChangeTable(entity, name)
  if data.raw[entity][name] and data.raw[entity][name].burner then
    if data.raw[entity][name].burner.fuel_categories then
      table.insert(data.raw[entity][name].burner.fuel_categories, "IF")
    end
    if data.raw[entity][name].burner.fuel_category then
      data.raw[entity][name].burner.fuel_categories = {data.raw[entity][name].burner.fuel_category}
      table.insert(data.raw[entity][name].burner.fuel_categories, "IF")
      data.raw[entity][name].burner.fuel_category = nil
    end
  end

  if data.raw[entity][name] and data.raw[entity][name].energy_source then
    if data.raw[entity][name].energy_source.fuel_categories then
      table.insert(data.raw[entity][name].energy_source.fuel_categories, "IF")
    end
    if data.raw[entity][name].energy_source.fuel_category then
      data.raw[entity][name].energy_source.fuel_categories = {data.raw[entity][name].energy_source.fuel_category}
      table.insert(data.raw[entity][name].energy_source.fuel_categories, "IF")
      data.raw[entity][name].energy_source.fuel_category = nil
    end
  end
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
  --ChangeTable("agricultural-tower", "burner-agricultural-tower")
  --ChangeTable("assembling-machine", "lumber-mill")
end

for _, entity in pairs(entity_list) do
  if data.raw[entity] ~= nil then
    for _, list in pairs(data.raw[entity]) do
      for _, name in pairs(list) do
        ChangeTable(entity, name)
      end
    end
  end
end