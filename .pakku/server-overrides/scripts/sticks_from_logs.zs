import crafttweaker.api.item.IItemStack;

var logs = <tagmanager:item>.tag("minecraft:logs");

craftingTable.addShaped("ct_sticks_from_logs", <item:minecraft:stick> * 16, [
    [logs],
    [logs]
]);
