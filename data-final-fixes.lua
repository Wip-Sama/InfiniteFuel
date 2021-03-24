local entity_list = {
  "locomotive",
  "car",
  "inserter",
  "mining-drill",
  "boiler",
  "furnace",
  "reactor",
}
--[
if mods["Krastorio2"] then
  table.insert(entity_list, "generator-equipment")
  table.insert(entity_list, "spider-vehicle")
end
--]]

for _, entity in pairs(entity_list) do

  local function ChangeTable(name)

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

  for _, list in pairs(data.raw[entity]) do
    for _, name in pairs(list) do
      ChangeTable(name)
    end
  end

end