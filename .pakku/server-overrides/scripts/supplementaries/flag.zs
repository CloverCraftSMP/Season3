import crafttweaker.api.item.IItemStack;

var flagRecipes as IItemStack[IItemStack] = {
    <item:minecraft:white_wool> : <item:supplementaries:flag_white>,
    <item:minecraft:orange_wool> : <item:supplementaries:flag_orange>,
    <item:minecraft:magenta_wool> : <item:supplementaries:flag_magenta>,
    <item:minecraft:light_blue_wool> : <item:supplementaries:flag_light_blue>,
    <item:minecraft:yellow_wool> : <item:supplementaries:flag_yellow>,
    <item:minecraft:lime_wool> : <item:supplementaries:flag_lime>,
    <item:minecraft:pink_wool> : <item:supplementaries:flag_pink>,
    <item:minecraft:gray_wool> : <item:supplementaries:flag_gray>,
    <item:minecraft:light_gray_wool> : <item:supplementaries:flag_light_gray>,
    <item:minecraft:cyan_wool> : <item:supplementaries:flag_cyan>,
    <item:minecraft:purple_wool> : <item:supplementaries:flag_purple>,
    <item:minecraft:blue_wool> : <item:supplementaries:flag_blue>,
    <item:minecraft:brown_wool> : <item:supplementaries:flag_brown>,
    <item:minecraft:green_wool> : <item:supplementaries:flag_green>,
    <item:minecraft:red_wool> : <item:supplementaries:flag_red>,
    <item:minecraft:black_wool> : <item:supplementaries:flag_black>
};

for wool, flag in flagRecipes {
    craftingTable.remove(flag);
    
    var recipeName = "ct_" + flag.registryName.path; 
    
    craftingTable.addShaped(recipeName, flag * 2, [
        [<item:minecraft:stick>, wool, wool]
    ]);
}
