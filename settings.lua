data:extend({
    {
        type = "string-setting",
        name = "IF-fuel-disabler",
        order = "aa",
        setting_type = "startup",
        default_value = "tier 3",
        allowed_values =
        {
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
        default_value = "true",
    },
})