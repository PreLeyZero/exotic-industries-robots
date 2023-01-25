-- retrun if exotic industries is not present
if not mods["exotic-industries"] then return end

ei_robots_lib = require("lib/lib-data")

--====================================================================================================
--ROBOT CHANGES
--====================================================================================================

-- additional tech prerequisits

table.insert(
    data.raw.technology["ei_construction-bots"].prerequisites,
    "ei_electronic-parts"
)


table.insert(
    data.raw.technology["ei_cargo-bots"].prerequisites,
    "ei_electronic-parts"
)

data.raw.recipe["ei_construction-bot"].ingredients = {
    {"construction-robot", 1},
    {"fast-inserter", 2},
    {"ei_electronic-parts", 2}
}

data.raw.recipe["ei_cargo-bot"].ingredients = {
    {"logistic-robot", 1},
    {"iron-chest", 2},
    {"ei_electronic-parts", 2}
}


data.raw.technology["ei_advanced-port"].prerequisites = {
    "ei_neodym-refining",
    "ei_nano-factory",
}

data.raw.technology["ei_advanced-bots"].prerequisites = {
    "ei_quantum-computer",
    "ei_nano-factory",
}

data.raw.recipe["ei_advanced-bot-engine"].ingredients = {
    {"flying-robot-frame", 2},
    {"ei_carbon-structure", 3},
    {"ei_advanced-motor", 2},
    {"ei_superior-data", 1},
    {type="fluid", name="lubricant", amount=50},
}

data.raw.recipe["ei_advanced-port"].ingredients = {
    {"roboport", 4},
    {"processing-unit", 25},
    {"ei_advanced-motor", 15},
    {"ei_magnet", 6},
}