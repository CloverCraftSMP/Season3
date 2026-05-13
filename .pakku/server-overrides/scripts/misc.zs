craftingTable.addShapeless("ct_mud", <item:minecraft:mud> * 8, [
    <item:minecraft:dirt>, <item:minecraft:dirt>, <item:minecraft:dirt>, <item:minecraft:dirt>,
    <item:minecraft:dirt>, <item:minecraft:dirt>, <item:minecraft:dirt>, <item:minecraft:dirt>,
    <item:minecraft:water_bucket>
]);

craftingTable.addShaped("ct_empty_wine_glass", <item:charta:empty_wine_glass> * 4, [
    [<item:minecraft:glass>, <item:minecraft:air>, <item:minecraft:glass>],
    [<item:minecraft:air>, <item:minecraft:glass>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:glass>, <item:minecraft:air>]
]);

craftingTable.addShapeless("ct_berry_wine", <item:charta:berry_wine_glass>, [
    <item:minecraft:sweet_berries>, <item:minecraft:sweet_berries>,
    <item:minecraft:sugar>, <item:charta:empty_wine_glass>
]);

craftingTable.addShapeless("ct_cactus_wine", <item:charta:cactus_wine_glass>, [
    <item:minecraft:sweet_berries>, <item:minecraft:cactus>,
    <item:minecraft:sugar>, <item:charta:empty_wine_glass>
]);

function addCopperHorn(instrument as string) as void {
    craftingTable.addShaped(
        "ct_copper_horn_" + instrument,
        <item:horseman:copper_horn>.withJsonComponent(<componenttype:minecraft:instrument>, "minecraft:" + instrument + "_goat_horn"),
        [
            [<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>],
            [<item:minecraft:copper_ingot>, <item:minecraft:goat_horn>.withJsonComponent(<componenttype:minecraft:instrument>, "minecraft:" + instrument + "_goat_horn"), <item:minecraft:copper_ingot>],
            [<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>]
        ]
    );
}

addCopperHorn("ponder");
addCopperHorn("sing");
addCopperHorn("seek");
addCopperHorn("feel");
addCopperHorn("admire");
addCopperHorn("call");
addCopperHorn("yearn");
addCopperHorn("dream");
