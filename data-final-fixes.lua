
local entity_list = {
  "locomotive",
  "car",
  "inserter",
  "mining-drill",
  "boiler",
  "furnace",
  "reactor"
}

for _, entity in pairs(entity_list) do

  local function ChangeTable(name)

    if data.raw[entity][name] and data.raw[entity][name].burner then
      if data.raw[entity][name].burner.fuel_category == "chemical" then
      data.raw[entity][name].burner.fuel_category = nil
      data.raw[entity][name].burner.fuel_categories = {"chemical", "IF"}
      end
      --krastorio 2
      if mods["Krastorio2"] and settings.startup["IF-kr-Infinite-Fuel"].value == true then
        if data.raw[entity][name].burner.fuel_category == "vehicle-fuel" then
        data.raw[entity][name].burner.fuel_category = nil
        data.raw[entity][name].burner.fuel_categories = {"vehicle-fuel", "IF"}
        end
        if data.raw[entity][name].burner.fuel_category == "nuclear-fuel" then
        data.raw[entity][name].burner.fuel_category = nil
        data.raw[entity][name].burner.fuel_categories = {"nuclear-fuel", "IF"}
        end
      end
    end

    if data.raw[entity][name] and data.raw[entity][name].energy_source then
      if data.raw[entity][name].energy_source.fuel_category == "chemical" then
      data.raw[entity][name].energy_source.fuel_category = nil
      data.raw[entity][name].energy_source.fuel_categories = {"chemical", "IF"}
      end
      --nuclear reactor
      if settings.startup["IF-enable-on-nuclear-reactor"].value == true then
        if data.raw[entity][name].energy_source.fuel_category == "nuclear" then
        data.raw[entity][name].energy_source.fuel_category = nil
        data.raw[entity][name].energy_source.fuel_categories = {"nuclear", "IF"}
        end
      end
      --krastorio 2
      if mods["Krastorio2"] and settings.startup["IF-kr-Infinite-Fuel"].value == true then
        if data.raw[entity][name].energy_source.fuel_category == "vehicle-fuel" then
        data.raw[entity][name].energy_source.fuel_category = nil
        data.raw[entity][name].energy_source.fuel_categories = {"vehicle-fuel", "IF"}
        end
        if data.raw[entity][name].energy_source.fuel_category == "nuclear-fuel" then
        data.raw[entity][name].energy_source.fuel_category = nil
        data.raw[entity][name].energy_source.fuel_categories = {"nuclear-fuel", "IF"}
        end
      end
    end
  end

  for _, list in pairs(data.raw[entity]) do
    for _, name in pairs(list) do
      ChangeTable(name)
    end
  end

end