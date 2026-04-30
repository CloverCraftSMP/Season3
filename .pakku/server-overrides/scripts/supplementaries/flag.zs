import crafttweaker.api.item.IItemStack;

var flagRecipes as IItemStack[IItemStack] = {
    <item:minecraft:white_wool> : <item:supplementaries:white_flag>,
    <item:minecraft:orange_wool> : <item:supplementaries:orange_flag>,
    <item:minecraft:magenta_wool> : <item:supplementaries:magenta_flag>,
    <item:minecraft:light_blue_wool> : <item:supplementaries:light_blue_flag>,
    <item:minecraft:yellow_wool> : <item:supplementaries:yellow_flag>,
    <item:minecraft:lime_wool> : <item:supplementaries:lime_flag>,
    <item:minecraft:pink_wool> : <item:supplementaries:pink_flag>,
    <item:minecraft:gray_wool> : <item:supplementaries:gray_flag>,
    <item:minecraft:light_gray_wool> : <item:supplementaries:light_gray_flag>,
    <item:minecraft:cyan_wool> : <item:supplementaries:cyan_flag>,
    <item:minecraft:purple_wool> : <item:supplementaries:purple_flag>,
    <item:minecraft:blue_wool> : <item:supplementaries:blue_flag>,
    <item:minecraft:brown_wool> : <item:supplementaries:brown_flag>,
    <item:minecraft:green_wool> : <item:supplementaries:green_flag>,
    <item:minecraft:red_wool> : <item:supplementaries:red_flag>,
    <item:minecraft:black_wool> : <item:supplementaries:black_flag>
};

for wool, flag in flagRecipes {
    craftingTable.remove(flag);
    
    var recipeName = "ct_" + flag.registryName.path; 
    
    craftingTable.addShaped(recipeName, flag * 2, [
        [<item:minecraft:stick>, wool, wool]
    ]);
}