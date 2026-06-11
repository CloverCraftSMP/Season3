import crafttweaker.api.item.IItemStack;

function addWithered(input as string, output as string) as void {
    var bonemeal = <item:eternalnether:withered_bone_meal>;

    craftingTable.addShaped("ct_withered_" + output, <item:eternalnether:withered_${output}>, [
        [bonemeal, bonemeal, bonemeal],
        [bonemeal, <item:minecraft:${input}>, bonemeal],
        [bonemeal, bonemeal, bonemeal]
    ]);
}

addWithered("blackstone", "blackstone");
addWithered("basalt", "basalt");
addWithered("coal_block", "coal_block");
addWithered("quartz_block", "quartz_block");
addWithered("ancient_debris", "debris");

var packed_ice = <item:minecraft:packed_ice>;
var black_dye = <item:minecraft:black_dye>;

craftingTable.addShaped("ct_black_ice", <item:pyrellium:freezing_ice> * 8, [
    [packed_ice, packed_ice, packed_ice],
    [packed_ice, black_dye, packed_ice],
    [packed_ice, packed_ice, packed_ice]
]);

blastFurnace.addRecipe("ct_blackstone_from_cobblestone", <item:minecraft:blackstone>, <item:minecraft:cobblestone>, 0.35, 100);
smoker.addRecipe("ct_smoky_quartz_from_quartz", <item:cinderscapes:smoky_quartz>, <item:minecraft:quartz>, 0.35, 100);
