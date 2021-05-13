data:extend({
  {
    type = "recipe",
    name = "Infinite-Fuel",
    energy_required = 500,
    hidden= true,
    enabled = false,
    icon = "__InfiniteFuel__/graphics/infinite-fuel-1.png",
    icon_size = 256,
    subgroup = "intermediate-product",
    order = "q[InfiniteFuel]-a",
    ingredients =
    {
      {"nuclear-fuel", 10}
    },
    result = "Infinite-Fuel"
  },
  {
    type = "recipe",
    name = "Boosted-Infinite-Fuel",
    energy_required = 1000,
    hidden= true,
    enabled = false,
    icon = "__InfiniteFuel__/graphics/infinite-fuel-2.png",
    icon_size = 256,
    subgroup = "intermediate-product",
    order = "q[InfiniteFuel]-b",
    ingredients =
    {
      {"Infinite-Fuel", 2}
    },
    result = "Boosted-Infinite-Fuel"
  },
  {
    type = "recipe",
    name = "Ultra-Boosted-Infinite-Fuel",
    energy_required = 1500,
    hidden= true,
    enabled = false,
    icon = "__InfiniteFuel__/graphics/infinite-fuel-3.png",
    icon_size = 256,
    subgroup = "intermediate-product",
    order = "q[InfiniteFuel]-c",
    ingredients =
    {
      {"Boosted-Infinite-Fuel", 2}
    },
    result = "Ultra-Boosted-Infinite-Fuel"
  },
  {
    type = "recipe",
    name = "Reactor-Infinite-Fuel",
    energy_required = 2000,
    hidden= true,
    enabled = false,
    icons = {{icon = "__InfiniteFuel__/graphics/infinite-fuel-1.png", tint = {r=0, g=60, b=0}}},
    icon_size = 256,
    subgroup = "intermediate-product",
    order = "q[InfiniteFuel]-d",
    ingredients =
    {
      {"Infinite-Fuel", 2}
    },
    result = "Reactor-Infinite-Fuel"
  },
  {
    type = "recipe",
    name = "kr-Infinite-Fuel",
    energy_required = 1000,
    hidden = true,
    enabled = false,
    icons = {{icon = "__InfiniteFuel__/graphics/infinite-fuel-2.png", tint = {r=255, g=69, b=0}}},
    icon_size = 256,
    subgroup = "intermediate-product",
    order = "q[InfiniteFuel]-e",
    ingredients =
    {
      {"Infinite-Fuel", 2}
    },
    result = "kr-Infinite-Fuel"
  },
})