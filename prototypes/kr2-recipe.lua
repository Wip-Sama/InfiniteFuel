data:extend(
{
    {
        type = "recipe",
        name = "kr2-Infinite-Fuel",
        hidden = "true",
        energy_required = 500,
        enabled = false,
        icon = "__InfiniteFuel__/graphics/kr2-infinite-fuel.png",
        icon_size = 128,
        subgroup = "intermediate-product",
        order = "q[InfiniteFuel]-a",

        ingredients =
        {
          {"nuclear-fuel", 10}
        },
        result = "kr2-Infinite-Fuel"
    },
    {
        type = "recipe",
        name = "kr2-Boosted-Infinite-Fuel",
        hidden = "true",
        energy_required = 1000,
        enabled = false,
        icon = "__InfiniteFuel__/graphics/kr2-Boosted-infinite-fuel.png",
        icon_size = 128,
        subgroup = "intermediate-product",
        order = "q[InfiniteFuel]-b",

        ingredients =
        {
          {"kr2-Infinite-Fuel", 2}
        },
        result = "kr2-Boosted-Infinite-Fuel"
    },
    {
        type = "recipe",
        name = "kr2-Ultra-Boosted-Infinite-Fuel",
        hidden = "true",
        energy_required = 1500,
        enabled = false,
        icon = "__InfiniteFuel__/graphics/kr2-Ultra-Boosted-infinite-fuel.png",
        icon_size = 128,
        subgroup = "intermediate-product",
        order = "q[kr2-InfiniteFuel]-c",

        ingredients =
        {
          {"kr2-Boosted-Infinite-Fuel", 2}
        },
        result = "Ultra-Boosted-Infinite-Fuel"
    },
}
)
