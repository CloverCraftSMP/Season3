import crafttweaker.api.item.IItemStack;

function addDyeDupe(color as string) as void {
    var color_dye = <item:minecraft:${color}_dye>;
    var white_dye = <item:minecraft:white_dye>;

    craftingTable.addShaped("ct_dupe_" + color + "_dye", color_dye * 9, [
        [white_dye, white_dye, white_dye],
        [white_dye, color_dye, white_dye],
        [white_dye, white_dye, white_dye]
    ]);
}

var colors = ["orange", "magenta", "light_blue", "yellow", "lime", "pink", "gray", "light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black"];

for color in colors {
    addDyeDupe(color);
}
