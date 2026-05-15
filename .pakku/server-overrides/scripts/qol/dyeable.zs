import crafttweaker.api.item.IItemStack;

function addRedye(namespace as string, block_type as string, block_tag as string, color as string) as void {
    var input_block_tag = <tagmanager:item>.tag(block_tag);
    var input_dye = <item:minecraft:${color}_dye>;
    var output_block = <item:${namespace}:${color}_${block_type}>;

    craftingTable.addShaped("ct_redye_" + color + "_" + block_type, output_block * 8, [
        [input_block_tag, input_block_tag, input_block_tag],
        [input_block_tag, input_dye, input_block_tag],
        [input_block_tag, input_block_tag, input_block_tag]
    ]);
}

var colors = ["white", "orange", "magenta", "light_blue", "yellow", "lime", "pink", "gray", "light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black"];

for color in colors {
    addRedye("minecraft", "wool", "minecraft:wool", color);
    addRedye("minecraft", "carpet", "minecraft:wool_carpets", color);
    addRedye("minecraft", "concrete", "c:concrete", color);
    addRedye("minecraft", "concrete_powder", "c:concrete_powder", color);
    addRedye("minecraft", "terracotta", "minecraft:terracotta", color);
    addRedye("minecraft", "glazed_terracotta", "c:glazed_terracotta", color);
    addRedye("minecraft", "stained_glass", "c:glass_blocks/cheap", color);
    addRedye("minecraft", "stained_glass_pane", "c:glass_panes", color);
    addRedye("minecraft", "candle", "minecraft:candles", color);
    addRedye("natures_spirit", "kaolin", "natures_spirit:kaolin", color);
    addRedye("natures_spirit", "kaolin_bricks", "natures_spirit:kaolin_bricks", color);
    addRedye("natures_spirit", "chalk", "natures_spirit:chalk", color);
}
