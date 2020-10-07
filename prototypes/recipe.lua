data:extend(
{
    {
        type = "recipe",
        name = "Infinite-Fuel",
        energy_required = 500,
        hidden= true,
        enabled = false,
        icon = "__InfiniteFuel__/graphics/infinite-fuel.png",
        icon_size = 128,
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
        icon = "__InfiniteFuel__/graphics/infinite-fuel.png",
        icon_size = 128,
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
        icon = "__InfiniteFuel__/graphics/infinite-fuel.png",
        icon_size = 128,
        subgroup = "intermediate-product",
        order = "q[InfiniteFuel]-c",

        ingredients =
        {
          {"Boosted-Infinite-Fuel", 2}
        },
        result = "Ultra-Boosted-Infinite-Fuel"
    },
}
)
