import crafttweaker.api.item.IItemStack;

var wools = [
    <item:minecraft:white_wool>, <item:minecraft:orange_wool>, <item:minecraft:magenta_wool>, 
    <item:minecraft:light_blue_wool>, <item:minecraft:yellow_wool>, <item:minecraft:lime_wool>, 
    <item:minecraft:pink_wool>, <item:minecraft:gray_wool>, <item:minecraft:light_gray_wool>, 
    <item:minecraft:cyan_wool>, <item:minecraft:purple_wool>, <item:minecraft:blue_wool>, 
    <item:minecraft:brown_wool>, <item:minecraft:green_wool>, <item:minecraft:red_wool>, <item:minecraft:black_wool>
] as IItemStack[];

var carpets = [
    <item:minecraft:white_carpet>, <item:minecraft:orange_carpet>, <item:minecraft:magenta_carpet>, 
    <item:minecraft:light_blue_carpet>, <item:minecraft:yellow_carpet>, <item:minecraft:lime_carpet>, 
    <item:minecraft:pink_carpet>, <item:minecraft:gray_carpet>, <item:minecraft:light_gray_carpet>, 
    <item:minecraft:cyan_carpet>, <item:minecraft:purple_carpet>, <item:minecraft:blue_carpet>, 
    <item:minecraft:brown_carpet>, <item:minecraft:green_carpet>, <item:minecraft:red_carpet>, <item:minecraft:black_carpet>
] as IItemStack[];

for i in 0 .. wools.length {
    var wool = wools[i];
    var carpet = carpets[i];
    
    var recipeName = "ct_" + carpet.registryName.path;
    craftingTable.remove(carpet);
    
    craftingTable.addShaped(recipeName, carpet * 8, [
        [wool, wool]
    ]);
}