<recipetype:farmersdelight:cutting>.addRecipe("ct_cut_small_fish", 
    <tag:item:hybrid-aquatic:small_fish>,
    [<item:tide:fish_slice>, <item:minecraft:bone_meal> % 50],
    <tag:item:c:tools/knife>,
    "minecraft:entity.cod.hurt"
);

<recipetype:farmersdelight:cutting>.addRecipe("ct_cut_medium_fish", 
    <tag:item:hybrid-aquatic:medium_fish>, 
    [<item:tide:fish_slice> * 2, <item:minecraft:bone_meal> % 50], 
    <tag:item:c:tools/knife>,
    "minecraft:entity.cod.hurt"
);

<recipetype:farmersdelight:cutting>.addRecipe("ct_cut_large_fish", 
    <tag:item:hybrid-aquatic:large_fish>, 
    [<item:tide:fish_slice> * 4, <item:minecraft:bone_meal> % 50], 
    <tag:item:c:tools/knife>,
    "minecraft:entity.cod.hurt"
);
