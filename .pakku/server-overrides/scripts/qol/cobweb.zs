craftingTable.addShaped("ct_cobweb_craft", <item:minecraft:cobweb>, [
    [<item:minecraft:string>, <item:minecraft:air>, <item:minecraft:string>],
    [<item:minecraft:air>, <item:minecraft:string>, <item:minecraft:air>],
    [<item:minecraft:string>, <item:minecraft:air>, <item:minecraft:string>]
]);

stoneCutter.addRecipe("ct_cobweb_cut", <item:minecraft:string> * 4, <item:minecraft:cobweb>);
