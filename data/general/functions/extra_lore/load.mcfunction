#declare storage general:extra_lore

data modify storage general:extra_lore has_durability set value []
loot replace block 0 16 0 container.0 27 loot general:extra_lore/get_armors
data modify storage general:extra_lore has_durability append from block 0 16 0 Items[]
loot replace block 0 16 0 container.0 27 loot general:extra_lore/get_tools1
data modify storage general:extra_lore has_durability append from block 0 16 0 Items[]
loot replace block 0 16 0 container.0 27 loot general:extra_lore/get_tools2
data modify storage general:extra_lore has_durability append from block 0 16 0 Items[]
data remove block 0 16 0 Items[]
data remove storage general:extra_lore has_durability[].Count
data remove storage general:extra_lore has_durability[].Slot

data modify storage general:extra_lore has_durability[].attributes set value {}
data modify storage general:extra_lore has_durability[{id:"minecraft:leather_helmet"}].attributes set value {armor:1.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:leather_chestplate"}].attributes set value {armor:3.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:leather_leggings"}].attributes set value {armor:2.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:leather_boots"}].attributes set value {armor:1.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:chainmail_helmet"}].attributes set value {armor:2.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:chainmail_chestplate"}].attributes set value {armor:5.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:chainmail_leggings"}].attributes set value {armor:4.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:chainmail_boots"}].attributes set value {armor:1.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:iron_helmet"}].attributes set value {armor:2.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:iron_chestplate"}].attributes set value {armor:6.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:iron_leggings"}].attributes set value {armor:5.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:iron_boots"}].attributes set value {armor:2.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:golden_helmet"}].attributes set value {armor:2.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:golden_chestplate"}].attributes set value {armor:5.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:golden_leggings"}].attributes set value {armor:3.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:golden_boots"}].attributes set value {armor:1.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:diamond_helmet"}].attributes set value {armor:3.0d,armor_toughness:2.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:diamond_chestplate"}].attributes set value {armor:8.0d,armor_toughness:2.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:diamond_leggings"}].attributes set value {armor:6.0d,armor_toughness:2.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:diamond_boots"}].attributes set value {armor:3.0d,armor_toughness:2.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:netherite_helmet"}].attributes set value {armor:3.0d,armor_toughness:3.0d,knockback_resistance:0.1d}
data modify storage general:extra_lore has_durability[{id:"minecraft:netherite_chestplate"}].attributes set value {armor:8.0d,armor_toughness:3.0d,knockback_resistance:0.1d}
data modify storage general:extra_lore has_durability[{id:"minecraft:netherite_leggings"}].attributes set value {armor:6.0d,armor_toughness:3.0d,knockback_resistance:0.1d}
data modify storage general:extra_lore has_durability[{id:"minecraft:netherite_boots"}].attributes set value {armor:3.0d,armor_toughness:3.0d,knockback_resistance:0.1d}
data modify storage general:extra_lore has_durability[{id:"minecraft:turtle_helmet"}].attributes set value {armor:2.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:wooden_axe"}].attributes set value {attack_damage:6.0d,attack_speed:-3.2d}
data modify storage general:extra_lore has_durability[{id:"minecraft:stone_axe"}].attributes set value {attack_damage:8.0d,attack_speed:-3.2d}
data modify storage general:extra_lore has_durability[{id:"minecraft:iron_axe"}].attributes set value {attack_damage:8.0d,attack_speed:-3.1d}
data modify storage general:extra_lore has_durability[{id:"minecraft:golden_axe"}].attributes set value {attack_damage:6.0d,attack_speed:-3.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:diamond_axe"}].attributes set value {attack_damage:8.0d,attack_speed:-3.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:netherite_axe"}].attributes set value {attack_damage:9.0d,attack_speed:-3.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:wooden_hoe"}].attributes set value {attack_damage:0.0d,attack_speed:-3.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:stone_hoe"}].attributes set value {attack_damage:0.0d,attack_speed:-2.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:iron_hoe"}].attributes set value {attack_damage:0.0d,attack_speed:-1.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:golden_hoe"}].attributes set value {attack_damage:0.0d,attack_speed:-3.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:diamond_hoe"}].attributes set value {attack_damage:0.0d,attack_speed:0.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:netherite_hoe"}].attributes set value {attack_damage:0.0d,attack_speed:0.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:wooden_pickaxe"}].attributes set value {attack_damage:1.0d,attack_speed:-2.8d}
data modify storage general:extra_lore has_durability[{id:"minecraft:stone_pickaxe"}].attributes set value {attack_damage:2.0d,attack_speed:-2.8d}
data modify storage general:extra_lore has_durability[{id:"minecraft:iron_pickaxe"}].attributes set value {attack_damage:3.0d,attack_speed:-2.8d}
data modify storage general:extra_lore has_durability[{id:"minecraft:golden_pickaxe"}].attributes set value {attack_damage:1.0d,attack_speed:-2.8d}
data modify storage general:extra_lore has_durability[{id:"minecraft:diamond_pickaxe"}].attributes set value {attack_damage:4.0d,attack_speed:-2.8d}
data modify storage general:extra_lore has_durability[{id:"minecraft:netherite_pickaxe"}].attributes set value {attack_damage:5.0d,attack_speed:-2.8d}
data modify storage general:extra_lore has_durability[{id:"minecraft:wooden_shovel"}].attributes set value {attack_damage:1.5d,attack_speed:-3.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:stone_shovel"}].attributes set value {attack_damage:2.5d,attack_speed:-3.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:iron_shovel"}].attributes set value {attack_damage:3.5d,attack_speed:-3.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:golden_shovel"}].attributes set value {attack_damage:1.5d,attack_speed:-3.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:diamond_shovel"}].attributes set value {attack_damage:4.5d,attack_speed:-3.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:netherite_shovel"}].attributes set value {attack_damage:5.5d,attack_speed:-3.0d}
data modify storage general:extra_lore has_durability[{id:"minecraft:wooden_sword"}].attributes set value {attack_damage:3.0d,attack_speed:-2.4d}
data modify storage general:extra_lore has_durability[{id:"minecraft:stone_sword"}].attributes set value {attack_damage:4.0d,attack_speed:-2.4d}
data modify storage general:extra_lore has_durability[{id:"minecraft:iron_sword"}].attributes set value {attack_damage:5.0d,attack_speed:-2.4d}
data modify storage general:extra_lore has_durability[{id:"minecraft:golden_sword"}].attributes set value {attack_damage:3.0d,attack_speed:-2.4d}
data modify storage general:extra_lore has_durability[{id:"minecraft:diamond_sword"}].attributes set value {attack_damage:6.0d,attack_speed:-2.4d}
data modify storage general:extra_lore has_durability[{id:"minecraft:netherite_sword"}].attributes set value {attack_damage:7.0d,attack_speed:-2.4d}
data modify storage general:extra_lore has_durability[{id:"minecraft:trident"}].attributes set value {attack_damage:8.0d,attack_speed:-2.9d}

data modify storage general:extra_lore modifier_texts set value []
data modify storage general:extra_lore modifier_texts append value {name:"slot",type:"hand",text:"在手上時："}
data modify storage general:extra_lore modifier_texts append value {name:"slot",type:"mainhand",text:"在慣用手上時："}
data modify storage general:extra_lore modifier_texts append value {name:"slot",type:"offhand",text:"在非慣用手上時："}
data modify storage general:extra_lore modifier_texts append value {name:"slot",type:"body",text:"裝備在身上時："}

data modify storage general:extra_lore modifier_texts append value {name:"attack_damage",type:"default",text:" ✒ 攻擊傷害 "}
data modify storage general:extra_lore modifier_texts append value {name:"attack_speed",type:"default",text:" ✒ 攻擊速度 "}
data modify storage general:extra_lore modifier_texts append value {name:"armor",type:"default",text:" ✒ 盔甲數值 "}
data modify storage general:extra_lore modifier_texts append value {name:"armor_toughness",type:"default",text:" ✒ 盔甲強度 "}
data modify storage general:extra_lore modifier_texts append value {name:"knockback_resistance",dtype:"default",text:" ✒ 擊退抗性 "}

data modify storage general:extra_lore modifier_texts append value {name:"max_health",type:"addition",text:" 󐀁☬󐀁 生命上限 "}
data modify storage general:extra_lore modifier_texts append value {name:"attack_damage",type:"addition",text:" 󐀁☬󐀁 傷害加成 "}
data modify storage general:extra_lore modifier_texts append value {name:"attack_speed",type:"addition",text:" 󐀁☬󐀁 攻速加成 "}
data modify storage general:extra_lore modifier_texts append value {name:"armor",type:"addition",text:" 󐀁☬󐀁 盔甲加成 "}
data modify storage general:extra_lore modifier_texts append value {name:"armor_toughness",type:"addition",text:" 󐀁☬󐀁 盔甲強度 "}
data modify storage general:extra_lore modifier_texts append value {name:"knockback_resistance",type:"addition",text:" 󐀁☬󐀁 擊退抗性 "}
data modify storage general:extra_lore modifier_texts append value {name:"movement_speed",type:"addition",text:" 󐀁☬󐀁 移動速度 "}
