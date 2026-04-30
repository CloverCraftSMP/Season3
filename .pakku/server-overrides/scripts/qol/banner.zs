import crafttweaker.api.item.IItemStack;

var bannerRecipes as IItemStack[IItemStack] = {
    <item:minecraft:white_wool> : <item:minecraft:white_banner>,
    <item:minecraft:orange_wool> : <item:minecraft:orange_banner>,
    <item:minecraft:magenta_wool> : <item:minecraft:magenta_banner>,
    <item:minecraft:light_blue_wool> : <item:minecraft:light_blue_banner>,
    <item:minecraft:yellow_wool> : <item:minecraft:yellow_banner>,
    <item:minecraft:lime_wool> : <item:minecraft:lime_banner>,
    <item:minecraft:pink_wool> : <item:minecraft:pink_banner>,
    <item:minecraft:gray_wool> : <item:minecraft:gray_banner>,
    <item:minecraft:light_gray_wool> : <item:minecraft:light_gray_banner>,
    <item:minecraft:cyan_wool> : <item:minecraft:cyan_banner>,
    <item:minecraft:purple_wool> : <item:minecraft:purple_banner>,
    <item:minecraft:blue_wool> : <item:minecraft:blue_banner>,
    <item:minecraft:brown_wool> : <item:minecraft:brown_banner>,
    <item:minecraft:green_wool> : <item:minecraft:green_banner>,
    <item:minecraft:red_wool> : <item:minecraft:red_banner>,
    <item:minecraft:black_wool> : <item:minecraft:black_banner>
};

for wool, banner in bannerRecipes {
    craftingTable.remove(banner);
    
    var recipeName = "ct_" + banner.registryName.path; 
    
    craftingTable.addShaped(recipeName, banner * 2, [
        [wool],
        [wool],
        [<item:minecraft:stick>]
    ]);
}