craftingTable.addShaped(
    "ct_joke_edible_mud",
    <item:minecraft:mud>
    .withJsonComponent(<componenttype:minecraft:item_name>, '"Edible* Mud"')
    .withJsonComponent(<componenttype:minecraft:lore>, ['{"color":"red","italic":false,"text":"*Not fit for human consumption."}', '""', '{"color":"white","italic":false,"text":"Side-effects may include:"}', '{"color":"white","italic":false,"text":"• Hunger"}', '{"color":"white","italic":false,"text":"• Nausea"}', '{"color":"white","italic":false,"text":"• Immediate Regret"}', '""', '{"color":"white","text":"Why did you craft this?"}'])
    .withJsonComponent(<componenttype:minecraft:food>, {can_always_eat: true, nutrition: 0, effects: [{effect: {show_particles: false, id: "minecraft:nausea", show_icon: true, duration: 300}}, {effect: {amplifier: 2, id: "minecraft:hunger", show_icon: true, duration: 300, show_particles: false}}], saturation: 0.0f})
    * 8,
    [
        [<item:minecraft:mud>, <item:minecraft:mud>, <item:minecraft:mud>],
        [<item:minecraft:mud>, <item:farmersdelight:wheat_dough>, <item:minecraft:mud>],
        [<item:minecraft:mud>, <item:minecraft:mud>, <item:minecraft:mud>]
    ]
);
