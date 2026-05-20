import crafttweaker.api.item.IItemStack;

var planks = <item:hybrid-aquatic:driftwood_planks>;
var stairs = <item:hybrid-aquatic:driftwood_stairs>;
var slab = <item:hybrid-aquatic:driftwood_slab>;
var fence = <item:hybrid-aquatic:driftwood_fence>;
var fence_gate = <item:hybrid-aquatic:driftwood_fence_gate>;
var door = <item:hybrid-aquatic:driftwood_door>;
var trapdoor = <item:hybrid-aquatic:driftwood_trapdoor>;
var pressure_plate = <item:hybrid-aquatic:driftwood_pressure_plate>;
var button = <item:hybrid-aquatic:driftwood_button>;

var stick = <item:minecraft:stick>;
var air = <item:minecraft:air>;

craftingTable.addShaped("ct_driftwood_stairs", stairs * 4, [
    [planks, air, air],
    [planks, planks, air],
    [planks, planks, planks]
]);

craftingTable.addShaped("ct_driftwood_fence", fence * 3, [
    [planks, stick, planks],
    [planks, stick, planks]
]);

craftingTable.addShaped("ct_driftwood_fence_gate", fence_gate * 2, [
    [stick, planks, stick],
    [stick, planks, stick]
]);

craftingTable.addShaped("ct_driftwood_door", door * 3, [
    [planks, planks],
    [planks, planks],
    [planks, planks]
]);

craftingTable.addShaped("ct_driftwood_trapdoor", trapdoor * 2, [
    [planks, planks, planks],
    [planks, planks, planks]
]);
