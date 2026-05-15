import crafttweaker.api.item.IItemStack;

var wool_colors = ["white", "orange", "magenta", "light_blue", "yellow", "lime", "pink", "gray", "light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black"];

for color in wool_colors {
    var wool = <item:minecraft:${color}_wool> as IItemStack;
    var carpet = <item:minecraft:${color}_carpet> as IItemStack;

    craftingTable.remove(carpet);
    craftingTable.addShaped("ct_" + carpet.registryName.path, carpet * 8, [[wool, wool]]);
}

function adjust_fence_gate(namespace as string, material as string) as void {
    var plank = <item:${namespace}:${material}_planks>;
    var stick = <item:minecraft:stick>;
    var gate = <item:${namespace}:${material}_fence_gate> as IItemStack;

    craftingTable.remove(gate);
    craftingTable.addShaped("ct_" + gate.registryName.path, gate * 2, [
        [stick, plank, stick],
        [stick, plank, stick]
    ]);
}

for material in ["oak", "spruce", "birch", "jungle", "acacia", "dark_oak", "mangrove", "cherry", "pale_oak", "crimson", "warped", "bamboo"] {
    adjust_fence_gate("minecraft", material);
}

for material in ["redwood", "sugi", "wisteria", "fir", "willow", "aspen", "maple", "cypress", "olive", "ghaf", "palo_verde", "coconut", "cedar", "larch", "mahogany", "saxaul", "joshua"] {
    adjust_fence_gate("natures_spirit", material);
}

for material in ["veiled", "celestial", "murublight"] {
    adjust_fence_gate("enderscape", material);
}

for material in ["scorched", "umbral"] {
    adjust_fence_gate("cinderscapes", material);
}

for material in ["burning", "shaderoot"] {
    adjust_fence_gate("pyrellium", material);
}

craftingTable.remove(<item:minecraft:iron_trapdoor>);
craftingTable.addShaped("ct_iron_trapdoor", <item:minecraft:iron_trapdoor> * 2, [
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]
]);
