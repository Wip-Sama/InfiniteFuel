data:extend({
    {
        type = "string-setting",
        name = "IF-fuel-disabler",
        order = "aa",
        setting_type = "startup",
        default_value = "tier 3",
        allowed_values ={
            "nothing",
            "tier 1",
            "tier 2",
            "tier 3"
        },
    },
    {
        type = "bool-setting",
        name = "IF-enable-on-nuclear-reactor",
        order = "ab",
        setting_type = "startup",
        default_value = "true",
    },
    {
        type = "bool-setting",
        name = "IF-kr-Infinite-Fuel",
        hidden = "true",
        order = "ac",
        setting_type = "startup",
        default_value = "false",
    },
    {
        type = "string-setting",
        name = "IF-fuel-recipebalancer",
        order = "ba",
        setting_type = "startup",
        default_value = "normal",
        allowed_values ={
            "easy",
            "normal",
            "hard",
            "extreme"
        },
    },
    {
        type = "string-setting",
        name = "IF-fuel-bonusbalancer",
        order = "bb",
        setting_type = "startup",
        default_value = "normal",
        allowed_values ={
            "easy",
            "normal",
            "hard",
            "extreme"
        },
    },
    {
        type = "string-setting",
        name = "IF-fuel-technologybalancer",
        order = "bc",
        setting_type = "startup",
        default_value = "normal",
        allowed_values ={
            "easy",
            "normal"
        },
    },
})