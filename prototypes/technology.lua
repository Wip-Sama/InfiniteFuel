data:extend(
{
    {
    type = "technology",
    name = "Infinite-Power",
    icon = "__InfiniteFuel__/graphics/infinite-fuel.png",
    icon_size = 128,
    prerequisites = {"oil-processing"},
    effects =
    {
      {type = "unlock-recipe",recipe = "Infinite-Fuel"},
      {type = "unlock-recipe",recipe = "Boosted-Infinite-Fuel"},
      {type = "unlock-recipe",recipe = "Ultimate-Boosted-Infinite-Fuel"},
    },
    unit =
    {
      count = 1050,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 2},
      },
      time = 55
    },
    order = "a-f-c"
  }
}
)
