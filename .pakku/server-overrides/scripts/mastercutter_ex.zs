import crafttweaker.api.item.IItemStack;

function addRecipes(namespace as string, material as string, log_type as string, wood_type as string, log_scale as int, has_sign as bool) as void {
    var planks = <item:${namespace}:${material}_planks>;
    var log = <item:${namespace}:${material}_${log_type}>;
    var stripped_log = <item:${namespace}:stripped_${material}_${log_type}>;

    stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_slab", <item:${namespace}:${material}_slab> * 2, planks);
    stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_slab_from_log", <item:${namespace}:${material}_slab> * (2 * log_scale), log);
    stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_slab_from_stripped_log", <item:${namespace}:${material}_slab> * (2 * log_scale), stripped_log);
    stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_fence", <item:${namespace}:${material}_fence> * 2, planks);
    stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_fence_from_log", <item:${namespace}:${material}_fence> * (2 * log_scale), log);
    stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_fence_from_stripped_log", <item:${namespace}:${material}_fence> * (2 * log_scale), stripped_log);
    stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_fence_gate", <item:${namespace}:${material}_fence_gate> * 2, planks);
    stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_fence_gate_from_log", <item:${namespace}:${material}_fence_gate> * (2 * log_scale), log);
    stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_fence_gate_from_stripped_log", <item:${namespace}:${material}_fence_gate> * (2 * log_scale), stripped_log);
    stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_stairs", <item:${namespace}:${material}_stairs>, planks);
    stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_stairs_from_log", <item:${namespace}:${material}_stairs> * log_scale, log);
    stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_stairs_from_stripped_log", <item:${namespace}:${material}_stairs> * log_scale, stripped_log);
    stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_trapdoor", <item:${namespace}:${material}_trapdoor> * 4, planks);
    stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_trapdoor_from_log", <item:${namespace}:${material}_trapdoor> * (4 * log_scale), log);
    stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_trapdoor_from_stripped_log", <item:${namespace}:${material}_trapdoor> * (4 * log_scale), stripped_log);
    stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_button", <item:${namespace}:${material}_button> * 8, planks);
    stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_button_from_log", <item:${namespace}:${material}_button> * (8 * log_scale), log);
    stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_button_from_stripped_log", <item:${namespace}:${material}_button> * (8 * log_scale), stripped_log);
    stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_pressure_plate", <item:${namespace}:${material}_pressure_plate> * 2, planks);
    stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_pressure_plate_from_log", <item:${namespace}:${material}_pressure_plate> * (2 * log_scale), log);
    stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_pressure_plate_from_stripped_log", <item:${namespace}:${material}_pressure_plate> * (2 * log_scale), stripped_log);
    if (has_sign) {
        stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_sign", <item:${namespace}:${material}_sign> * 2, planks);
        stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_sign_from_log", <item:${namespace}:${material}_sign> * (2 * log_scale), log);
        stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_sign_from_stripped_log", <item:${namespace}:${material}_sign> * (2 * log_scale), stripped_log);
    }

    stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_stripped_log", <item:${namespace}:stripped_${material}_${log_type}>, log);

    if (wood_type != "") {
        var wood = <item:${namespace}:${material}_${wood_type}>;
        var stripped_wood = <item:${namespace}:stripped_${material}_${wood_type}>;

        stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_slab_from_wood", <item:${namespace}:${material}_slab> * (2 * log_scale), wood);
        stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_slab_from_stripped_wood", <item:${namespace}:${material}_slab> * (2 * log_scale), stripped_wood);
        stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_fence_from_wood", <item:${namespace}:${material}_fence> * (2 * log_scale), wood);
        stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_fence_from_stripped_wood", <item:${namespace}:${material}_fence> * (2 * log_scale), stripped_wood);
        stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_fence_gate_from_wood", <item:${namespace}:${material}_fence_gate> * (2 * log_scale), wood);
        stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_fence_gate_from_stripped_wood", <item:${namespace}:${material}_fence_gate> * (2 * log_scale), stripped_wood);
        stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_stairs_from_wood", <item:${namespace}:${material}_stairs> * log_scale, wood);
        stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_stairs_from_stripped_wood", <item:${namespace}:${material}_stairs> * log_scale, stripped_wood);
        stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_trapdoor_from_wood", <item:${namespace}:${material}_trapdoor> * (4 * log_scale), wood);
        stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_trapdoor_from_stripped_wood", <item:${namespace}:${material}_trapdoor> * (4 * log_scale), stripped_wood);
        stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_button_from_wood", <item:${namespace}:${material}_button> * (8 * log_scale), wood);
        stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_button_from_stripped_wood", <item:${namespace}:${material}_button> * (8 * log_scale), stripped_wood);
        stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_pressure_plate_from_wood", <item:${namespace}:${material}_pressure_plate> * (2 * log_scale), wood);
        stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_pressure_plate_from_stripped_wood", <item:${namespace}:${material}_pressure_plate> * (2 * log_scale), stripped_wood);

        if (has_sign) {
            stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_sign_from_wood", <item:${namespace}:${material}_sign> * (2 * log_scale), wood);
            stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_sign_from_stripped_wood", <item:${namespace}:${material}_sign> * (2 * log_scale), stripped_wood);
        }

        stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_wood_from_log", wood, log);
        stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_stripped_wood_from_log", <item:${namespace}:stripped_${material}_${wood_type}>, log);
        stoneCutter.addRecipe("ct_stonecutter_" + namespace + "_" + material + "_stripped_wood_from_wood", <item:${namespace}:stripped_${material}_${wood_type}>, wood);
    }
}

for material in ["oak", "spruce", "birch", "jungle", "acacia", "dark_oak", "mangrove", "cherry", "pale_oak"] {
    addRecipes("minecraft", material, "log", "wood", 4, true);
}

for material in ["redwood", "sugi", "wisteria", "fir", "willow", "aspen", "maple", "cypress", "olive", "ghaf", "palo_verde", "coconut", "cedar", "larch", "mahogany", "saxaul"] {
    addRecipes("natures_spirit", material, "log", "wood", 4, true);
}

addRecipes("minecraft", "crimson", "stem", "hyphae", 4, true);
addRecipes("minecraft", "warped", "stem", "hyphae", 4, true);
addRecipes("minecraft", "bamboo", "block", "", 2, true);
addRecipes("enderscape", "veiled", "log", "wood", 4, true);
addRecipes("enderscape", "celestial", "stem", "hyphae", 4, true);
addRecipes("enderscape", "murublight", "stem", "hyphae", 4, true);
addRecipes("cinderscapes", "scorched", "stem", "hyphae", 4, true);
addRecipes("cinderscapes", "umbral", "stem", "hyphae", 4, true);
addRecipes("pyrellium", "burning", "log", "wood", 4, true);
addRecipes("pyrellium", "shaderoot", "log", "wood", 4, true);
addRecipes("natures_spirit", "joshua", "log", "", 4, true);
addRecipes("hybrid-aquatic", "driftwood", "log", "wood", 4, false);
