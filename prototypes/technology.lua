data:extend(
{
    {
    type = "technology",
    name = "Infinite-Power",
    hidden = "true",
    icon = "__InfiniteFuel__/graphics/infinite-fuel-tech.png",
    icon_size = 256,
    prerequisites = {"oil-processing", "kovarex-enrichment-process"},
    effects =
    {
      --{type = "unlock-recipe",recipe = "Infinite-Fuel"},
      --{type = "unlock-recipe",recipe = "Boosted-Infinite-Fuel"},
      --{type = "unlock-recipe",recipe = "Ultra-Boosted-Infinite-Fuel"},
    },
    unit =
    {
      count = 1050,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"chemical-production-pack", 1},
        {"chemical-advanced-pack", 1},
      },
      time = 55
    },
    order = "a-f-c"
  }
}
)
