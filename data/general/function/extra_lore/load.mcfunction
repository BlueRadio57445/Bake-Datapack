#declare storage general:extra_lore

data modify storage general:extra_lore equipments set value []
loot replace block 0 16 0 container.0 27 loot general:extra_lore/get_armor
data modify storage general:extra_lore equipments append from block 0 16 0 Items[]
loot replace block 0 16 0 container.0 27 loot general:extra_lore/get_pet_armor
data modify storage general:extra_lore equipments append from block 0 16 0 Items[]
loot replace block 0 16 0 container.0 27 loot general:extra_lore/get_tools1
data modify storage general:extra_lore equipments append from block 0 16 0 Items[]
loot replace block 0 16 0 container.0 27 loot general:extra_lore/get_tools2
data modify storage general:extra_lore equipments append from block 0 16 0 Items[]
data remove block 0 16 0 Items[]
data remove storage general:extra_lore equipments[].Count
data remove storage general:extra_lore equipments[].Slot
data remove storage general:extra_lore equipments[].components."minecraft:attribute_modifiers".modifiers[{id:"general:dummy"}]
data remove storage general:extra_lore equipments[].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:generic.armor_toughness",amount:0.0d}]

data modify storage general:extra_lore modifier_texts set value []
data modify storage general:extra_lore modifier_texts append value {name:"slot",type:"hand",text:"手持時："}
data modify storage general:extra_lore modifier_texts append value {name:"slot",type:"mainhand",text:"在慣用手時："}
data modify storage general:extra_lore modifier_texts append value {name:"slot",type:"offhand",text:"在非慣用手時："}
data modify storage general:extra_lore modifier_texts append value {name:"slot",type:"armor",text:"穿著時："}
data modify storage general:extra_lore modifier_texts append value {name:"slot",type:"any",text:"裝備時："}

data modify storage general:extra_lore modifier_texts append value {name:"generic.attack_damage",type:"default",text:" ✒ 攻擊傷害 "}
data modify storage general:extra_lore modifier_texts append value {name:"generic.attack_speed",type:"default",text:" ✒ 攻擊速度 "}
data modify storage general:extra_lore modifier_texts append value {name:"generic.armor",type:"default",text:" ✒ 盔甲數值 "}
data modify storage general:extra_lore modifier_texts append value {name:"generic.armor_toughness",type:"default",text:" ✒ 盔甲強度 "}
data modify storage general:extra_lore modifier_texts append value {name:"generic.knockback_resistance",type:"default",text:" ✒ 擊退抗性 "}

data modify storage general:extra_lore modifier_texts append value {name:"generic.max_health",type:"addition",text:" 󐀁☬󐀁 生命上限 "}
data modify storage general:extra_lore modifier_texts append value {name:"generic.attack_damage",type:"addition",text:" 󐀁☬󐀁 傷害加成 "}
data modify storage general:extra_lore modifier_texts append value {name:"generic.attack_speed",type:"addition",text:" 󐀁☬󐀁 攻速加成 "}
data modify storage general:extra_lore modifier_texts append value {name:"generic.attack_knockback",type:"addition",text:" 󐀁☬󐀁 擊退能力 "}
data modify storage general:extra_lore modifier_texts append value {name:"generic.armor",type:"addition",text:" 󐀁☬󐀁 盔甲加成 "}
data modify storage general:extra_lore modifier_texts append value {name:"generic.armor_toughness",type:"addition",text:" 󐀁☬󐀁 盔甲強度 "}
data modify storage general:extra_lore modifier_texts append value {name:"generic.burning_time",type:"addition",text:" 󐀁☬󐀁 燃燒時長 "}
data modify storage general:extra_lore modifier_texts append value {name:"generic.explosion_knockback_resistance",type:"addition",text:" 󐀁☬󐀁 轟退抗性 "}
data modify storage general:extra_lore modifier_texts append value {name:"generic.fall_damage_multiplier",type:"addition",text:" 󐀁☬󐀁 摔傷倍率 "}
data modify storage general:extra_lore modifier_texts append value {name:"generic.gravity",type:"addition",text:" 󐀁☬󐀁 重力影響 "}
data modify storage general:extra_lore modifier_texts append value {name:"generic.knockback_resistance",type:"addition",text:" 󐀁☬󐀁 擊退抗性 "}
data modify storage general:extra_lore modifier_texts append value {name:"generic.movement_efficiency",type:"addition",text:" 󐀁☬󐀁 黏滯減免 "}
data modify storage general:extra_lore modifier_texts append value {name:"generic.movement_speed",type:"addition",text:" 󐀁☬󐀁 移動速度 "}
data modify storage general:extra_lore modifier_texts append value {name:"generic.oxygen_bonus",type:"addition",text:" 󐀁☬󐀁 耗氧減免 "}
data modify storage general:extra_lore modifier_texts append value {name:"generic.safe_fall_distance",type:"addition",text:" 󐀁☬󐀁 安全高度 "}
data modify storage general:extra_lore modifier_texts append value {name:"generic.scale",type:"addition",text:" 󐀁☬󐀁 實體大小 "}
data modify storage general:extra_lore modifier_texts append value {name:"generic.step_height",type:"addition",text:" 󐀁☬󐀁 步伐高度 "}
data modify storage general:extra_lore modifier_texts append value {name:"generic.jump_strength",type:"addition",text:" 󐀁☬󐀁 跳躍能力 "}
data modify storage general:extra_lore modifier_texts append value {name:"generic.water_movement_efficiency",type:"addition",text:" 󐀁☬󐀁 水中移速 "}
data modify storage general:extra_lore modifier_texts append value {name:"player.block_interaction_range",type:"addition",text:" 󐀁☬󐀁 挖掘距離 "}
data modify storage general:extra_lore modifier_texts append value {name:"player.break_block_speed",type:"addition",text:" 󐀁☬󐀁 挖掘速度 "}
data modify storage general:extra_lore modifier_texts append value {name:"player.entity_interaction_range",type:"addition",text:" 󐀁☬󐀁 攻擊距離 "}
data modify storage general:extra_lore modifier_texts append value {name:"player.mining_efficiency",type:"addition",text:" 󐀁☬󐀁 挖掘效率 "}
data modify storage general:extra_lore modifier_texts append value {name:"player.sneaking_speed",type:"addition",text:" 󐀁☬󐀁 潛行速度 "}
data modify storage general:extra_lore modifier_texts append value {name:"player.submerged_mining_speed",type:"addition",text:" 󐀁☬󐀁 水中掘速 "}
data modify storage general:extra_lore modifier_texts append value {name:"player.sweeping_damage_ratio",type:"addition",text:" 󐀁☬󐀁 橫掃強度 "}
