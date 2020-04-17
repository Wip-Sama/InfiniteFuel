data:extend(
{	
    {
        type = "recipe",
        name = "Infinite-Fuel",
        energy_required = 500,
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
    }
}
)