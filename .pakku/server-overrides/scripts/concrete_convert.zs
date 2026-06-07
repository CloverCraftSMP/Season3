import mods.clover.CauldronManager;

function addConvert(colour as string) as void {
    var input = <item:minecraft:${colour}_concrete_powder>;
    var output = <item:minecraft:${colour}_concrete>;
    CauldronManager.addRecipe("concrete_" + colour, input, output, "water");
}

var colours = ["white", "orange", "magenta", "light_blue", "yellow", "lime", "pink", "gray", "light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black"];

for colour in colours {
    addConvert(colour);
}