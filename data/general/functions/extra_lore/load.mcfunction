#declare storage general:extra_lore

data modify storage general:extra_lore equipments set value []
loot replace block 0 16 0 container.0 27 loot general:extra_lore/get_armors
data modify storage general:extra_lore equipments append from block 0 16 0 Items[]
loot replace block 0 16 0 container.0 27 loot general:extra_lore/get_pet_armors
data modify storage general:extra_lore equipments append from block 0 16 0 Items[]
loot replace block 0 16 0 container.0 27 loot general:extra_lore/get_tools1
data modify storage general:extra_lore equipments append from block 0 16 0 Items[]
loot replace block 0 16 0 container.0 27 loot general:extra_lore/get_tools2
data modify storage general:extra_lore equipments append from block 0 16 0 Items[]
data remove block 0 16 0 Items[]
data remove storage general:extra_lore equipments[].Count
data remove storage general:extra_lore equipments[].Slot
data remove storage general:extra_lore equipments[].components."minecraft:attribute_modifiers".modifiers[{name:"dummy"}]

data modify storage general:extra_lore modifier_texts set value []
data modify storage general:extra_lore modifier_texts append value {name:"slot",type:"hand",text:"在手上時："}
data modify storage general:extra_lore modifier_texts append value {name:"slot",type:"mainhand",text:"在慣用手上時："}
data modify storage general:extra_lore modifier_texts append value {name:"slot",type:"offhand",text:"在非慣用手上時："}
data modify storage general:extra_lore modifier_texts append value {name:"slot",type:"body",text:"裝備在身上時："}

data modify storage general:extra_lore modifier_texts append value {name:"attack_damage",type:"default",text:" ✒ 攻擊傷害 "}
data modify storage general:extra_lore modifier_texts append value {name:"attack_speed",type:"default",text:" ✒ 攻擊速度 "}
data modify storage general:extra_lore modifier_texts append value {name:"armor",type:"default",text:" ✒ 盔甲數值 "}
data modify storage general:extra_lore modifier_texts append value {name:"armor_toughness",type:"default",text:" ✒ 盔甲強度 "}
data modify storage general:extra_lore modifier_texts append value {name:"knockback_resistance",type:"default",text:" ✒ 擊退抗性 "}

data modify storage general:extra_lore modifier_texts append value {name:"max_health",type:"addition",text:" 󐀁☬󐀁 生命上限 "}
data modify storage general:extra_lore modifier_texts append value {name:"attack_damage",type:"addition",text:" 󐀁☬󐀁 傷害加成 "}
data modify storage general:extra_lore modifier_texts append value {name:"attack_speed",type:"addition",text:" 󐀁☬󐀁 攻速加成 "}
data modify storage general:extra_lore modifier_texts append value {name:"armor",type:"addition",text:" 󐀁☬󐀁 盔甲加成 "}
data modify storage general:extra_lore modifier_texts append value {name:"armor_toughness",type:"addition",text:" 󐀁☬󐀁 盔甲強度 "}
data modify storage general:extra_lore modifier_texts append value {name:"knockback_resistance",type:"addition",text:" 󐀁☬󐀁 擊退抗性 "}
data modify storage general:extra_lore modifier_texts append value {name:"movement_speed",type:"addition",text:" 󐀁☬󐀁 移動速度 "}
