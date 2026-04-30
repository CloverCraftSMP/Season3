import crafttweaker.api.item.IItemStack;

var planks = [
    <item:minecraft:oak_planks>,
    <item:minecraft:spruce_planks>,
    <item:minecraft:birch_planks>,
    <item:minecraft:jungle_planks>,
    <item:minecraft:acacia_planks>,
    <item:minecraft:dark_oak_planks>
] as IItemStack[];

var gates = [
    <item:minecraft:oak_fence_gate>,
    <item:minecraft:spruce_fence_gate>,
    <item:minecraft:birch_fence_gate>,
    <item:minecraft:jungle_fence_gate>,
    <item:minecraft:acacia_fence_gate>,
    <item:minecraft:dark_oak_fence_gate>
] as IItemStack[];

var stick = <item:minecraft:stick>;

for i in 0 .. planks.length {
    var plank = planks[i];
    var gate = gates[i];
    
    var recipeName = "ct_" + gate.registryName.path;
    craftingTable.remove(gate);
    
    craftingTable.addShaped(recipeName, gate * 2, [
        [stick, plank, stick],
        [stick, plank, stick]
    ]);
}