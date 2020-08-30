data:extend(
{
    {
    type = "technology",
    name = "kr2-Infinite-Power",
    hidden = "true",
    icon = "__InfiniteFuel__/graphics/kr2-infinite-fuel.png",
    icon_size = 128,
    prerequisites = {"oil-processing"},
    effects =
    {
      {type = "unlock-recipe",recipe = "kr2-Infinite-Fuel"},
      {type = "unlock-recipe",recipe = "kr2-Boosted-Infinite-Fuel"},
      {type = "unlock-recipe",recipe = "kr2-Ultimate-Boosted-Infinite-Fuel"},
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
