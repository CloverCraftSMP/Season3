import crafttweaker.api.item.IItemStack;

function addChair(material as string) as void {
    craftingTable.addShaped(
        "ct_charta_" + material + "_chair",
        <item:charta:${material}_game_chair>,
        [
            [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
            [<item:minecraft:${material}_planks>, <item:minecraft:${material}_planks>, <item:minecraft:air>],
            [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:air>]
        ]
    );
}

function addShelf(material as string) as void {
    craftingTable.addShaped(
        "ct_charta_" + material + "_shelf",
        <item:charta:${material}_bar_shelf>,
        [
            [<item:minecraft:${material}_slab>, <item:minecraft:${material}_slab>, <item:minecraft:${material}_slab>],
            [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
            [<item:minecraft:${material}_slab>, <item:minecraft:${material}_slab>, <item:minecraft:${material}_slab>]
        ]
    );
}

function addStool(material as string) as void {
    craftingTable.addShaped(
        "ct_charta_" + material + "_stool",
        <item:charta:${material}_bar_stool>,
        [
            [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
            [<item:minecraft:${material}_slab>, <item:minecraft:${material}_slab>, <item:minecraft:air>],
            [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:air>]
        ]
    );
}

function addTable(material as string, wood_type as string) as void {
    craftingTable.addShaped(
        "ct_charta_" + material + "_table",
        <item:charta:${material}_card_table>,
        [
            [<item:minecraft:${material}_${wood_type}>, <item:minecraft:${material}_${wood_type}>, <item:minecraft:${material}_${wood_type}>],
            [<item:minecraft:${material}_planks>, <item:minecraft:air>, <item:minecraft:${material}_planks>],
            [<item:minecraft:${material}_planks>, <item:minecraft:air>, <item:minecraft:${material}_planks>]
        ]
    );
}

for material in ["acacia", "birch", "spruce", "bamboo", "crimson", "mangrove", "cherry", "oak", "jungle", "dark_oak", "warped"] {
    addChair(material);
    addShelf(material);
    addStool(material);
}

for material in ["acacia", "birch", "spruce", "mangrove", "cherry", "oak", "jungle", "dark_oak"] {
    addTable(material, "wood");
}

for material in ["crimson", "warped"] {
    addTable(material, "hyphae");
}

addTable("bamboo", "block");

craftingTable.addShaped("ct_charta_dealer_table", <item:charta:dealer_table>, [
    [<item:minecraft:gold_ingot>, <item:minecraft:paper>, <item:minecraft:air>],
    [<tag:item:minecraft:planks>, <tag:item:minecraft:planks>, <item:minecraft:air>],
    [<tag:item:minecraft:planks>, <tag:item:minecraft:planks>, <item:minecraft:air>]
]);

function makeDeck(deckId as string, rarity as string) as IItemStack {
    var item = <item:charta:deck>.withJsonComponent(<componenttype:charta:deck_id>, deckId);

    if (rarity != "") {
        item = item.withJsonComponent(<componenttype:minecraft:rarity>, rarity);
    }

    return item;
}


var deck_common_root as IItemStack = makeDeck("charta:standard/black", "");

var deck_commons as IItemStack[] = [
    makeDeck("charta:standard/blue", ""),
    makeDeck("charta:standard/green", ""),
    makeDeck("charta:standard/red", ""),
    makeDeck("charta:standard/yellow", ""),
    makeDeck("charta:flags/argentina", ""),
    makeDeck("charta:flags/australia", ""),
    makeDeck("charta:flags/belgium", ""),
    makeDeck("charta:flags/brazil", ""),
    makeDeck("charta:flags/canada", ""),
    makeDeck("charta:flags/china", ""),
    makeDeck("charta:flags/france", ""),
    makeDeck("charta:flags/germany", ""),
    makeDeck("charta:flags/india", ""),
    makeDeck("charta:flags/indonesia", ""),
    makeDeck("charta:flags/ireland", ""),
    makeDeck("charta:flags/italy", ""),
    makeDeck("charta:flags/japan", ""),
    makeDeck("charta:flags/mexico", ""),
    makeDeck("charta:flags/netherlands", ""),
    makeDeck("charta:flags/philippines", ""),
    makeDeck("charta:flags/poland", ""),
    makeDeck("charta:flags/portugal", ""),
    makeDeck("charta:flags/rainbow", ""),
    makeDeck("charta:flags/russia", ""),
    makeDeck("charta:flags/spain", ""),
    makeDeck("charta:flags/thailand", ""),
    makeDeck("charta:flags/ukraine", ""),
    makeDeck("charta:flags/united_kingdom", ""),
    makeDeck("charta:flags/usa", ""),
];

var deck_uncommon_root as IItemStack = makeDeck("charta:dark/red", "uncommon");

var deck_uncommons = [
    makeDeck("charta:dark/aqua", "uncommon"),
    makeDeck("charta:dark/blue", "uncommon"),
    makeDeck("charta:dark/green", "uncommon"),
    makeDeck("charta:dark/orange", "uncommon"),
    makeDeck("charta:dark/pink", "uncommon"),
    makeDeck("charta:dark/yellow", "uncommon"),
    makeDeck("charta:light/aqua", "uncommon"),
    makeDeck("charta:light/blue", "uncommon"),
    makeDeck("charta:light/green", "uncommon"),
    makeDeck("charta:light/orange", "uncommon"),
    makeDeck("charta:light/pink", "uncommon"),
    makeDeck("charta:light/red", "uncommon"),
    makeDeck("charta:light/yellow", "uncommon"),
    makeDeck("charta:neon/aqua", "uncommon"),
    makeDeck("charta:neon/blue", "uncommon"),
    makeDeck("charta:neon/green", "uncommon"),
    makeDeck("charta:neon/orange", "uncommon"),
    makeDeck("charta:neon/pink", "uncommon"),
    makeDeck("charta:neon/red", "uncommon"),
    makeDeck("charta:neon/yellow", "uncommon"),
];

var deck_rare_root as IItemStack = makeDeck("charta:gems/diamond", "rare");

var deck_rares as IItemStack[] = [
    makeDeck("charta:inverted", "rare"),
    makeDeck("charta:gems/amethyst", "rare"),
    makeDeck("charta:gems/emerald", "rare"),
    makeDeck("charta:gems/ruby", "rare"),
    makeDeck("charta:gems/sapphire", "rare"),
    makeDeck("charta:metals/copper", "rare"),
    makeDeck("charta:metals/gold", "rare"),
    makeDeck("charta:metals/iron", "rare"),
];

var deck_108_root as IItemStack = makeDeck("charta:fun", "rare");

var deck_108s as IItemStack[] = [
    makeDeck("charta:fun_light", "rare"),
    makeDeck("charta:fun_minimal", "rare"),
    makeDeck("charta:fun_classic", "uncommon"),
    makeDeck("charta:fun_inverted", "uncommon"),
    makeDeck("charta:fun_minimal_neon", "rare"),
    makeDeck("charta:fun_neon", "rare"),
];


craftingTable.addShaped("ct_charta_standard_black_deck", deck_common_root, [
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>],
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:black_dye>],
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]
]);

craftingTable.addShaped("ct_charta_dark_red_deck", deck_uncommon_root, [
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>],
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:iron_ingot>],
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]
]);

craftingTable.addShaped("ct_charta_diamond_deck", deck_rare_root, [
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>],
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:diamond>],
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]
]);

craftingTable.addShaped("ct_charta_fun_deck", deck_108_root, [
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>],
    [<item:minecraft:red_dye>, <item:minecraft:paper>, <item:minecraft:black_dye>],
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]
]);

function addBranch(keyword as string, root as IItemStack, deck as IItemStack[]) as void {
    for i, item in deck {
        stoneCutter.addRecipe("ct_charta_" + keyword + "_to_item_" + i, item, root);
        stoneCutter.addRecipe("ct_charta_" + keyword + "_from_item_" + i, root, item);
    }
}

addBranch("common", deck_common_root, deck_commons);
addBranch("uncommon", deck_uncommon_root, deck_uncommons);
addBranch("rare", deck_rare_root, deck_rares);
addBranch("108", deck_108_root, deck_108s);
