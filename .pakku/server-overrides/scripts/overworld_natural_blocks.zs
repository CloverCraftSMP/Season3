import crafttweaker.api.item.IItemStack;

function addChecker2x2(name as string, a as IItemStack, b as IItemStack, out as IItemStack) as void {
    craftingTable.addShaped(name, out * 2, [
        [a, b],
        [b, a]
    ]);
}

addChecker2x2("ct_calcite", <item:minecraft:quartz>, <item:minecraft:diorite>, <item:minecraft:calcite>);
addChecker2x2("ct_tuff", <item:minecraft:cobblestone>, <item:minecraft:gravel>, <item:minecraft:tuff>);
