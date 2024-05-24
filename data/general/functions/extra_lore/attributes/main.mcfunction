scoreboard players reset * general.extra_lore.modifier_type
data modify storage general:extra_lore Attributes set value []
data remove storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"Armor toughness",amount:0.0d}]
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"Weapon modifier",type:"minecraft:generic.attack_damage"}] run data modify storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"Weapon modifier",type:"minecraft:generic.attack_damage"}].name set value "attack_damage.default"
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"Tool modifier",type:"minecraft:generic.attack_damage"}] run data modify storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"Tool modifier",type:"minecraft:generic.attack_damage"}].name set value "attack_damage.default"
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"Weapon modifier",type:"minecraft:generic.attack_speed"}] run data modify storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"Weapon modifier",type:"minecraft:generic.attack_speed"}].name set value "attack_speed.default"
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"Tool modifier",type:"minecraft:generic.attack_speed"}] run data modify storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"Tool modifier",type:"minecraft:generic.attack_speed"}].name set value "attack_speed.default"
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"Armor modifier"}] run data modify storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"Armor modifier"}].name set value "armor.default"
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"Armor toughness"}] run data modify storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"Armor toughness"}].name set value "armor_toughness.default"
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"Armor knockback resistance"}] run data modify storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"Armor knockback resistance"}].name set value "knockback_resistance.default"

execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"attack_damage.default"}] run function general:extra_lore/attributes/set {name:"attack_damage",type:"default"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"attack_speed.default"}] run function general:extra_lore/attributes/set {name:"attack_speed",type:"default"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"armor.default"}] run function general:extra_lore/attributes/set {name:"armor",type:"default"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"armor_toughness.default"}] run function general:extra_lore/attributes/set {name:"armor_toughness",type:"default"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"knockback_resistance.default"}] run function general:extra_lore/attributes/set {name:"knockback_resistance",type:"default"}

execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"max_health.hand"}] run function general:extra_lore/attributes/set {name:"max_health",type:"hand"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"attack_damage.hand"}] run function general:extra_lore/attributes/set {name:"attack_damage",type:"hand"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"attack_speed.hand"}] run function general:extra_lore/attributes/set {name:"attack_speed",type:"hand"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"armor.hand"}] run function general:extra_lore/attributes/set {name:"armor",type:"hand"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"armor_toughness.hand"}] run function general:extra_lore/attributes/set {name:"armor_toughness",type:"hand"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"knockback_resistance.hand"}] run function general:extra_lore/attributes/set {name:"knockback_resistance",type:"hand"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"movement_speed.hand"}] run function general:extra_lore/attributes/set {name:"movement_speed",type:"hand"}

execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"max_health.mainhand"}] run function general:extra_lore/attributes/set {name:"max_health",type:"mainhand"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"attack_damage.mainhand"}] run function general:extra_lore/attributes/set {name:"attack_damage",type:"mainhand"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"attack_speed.mainhand"}] run function general:extra_lore/attributes/set {name:"attack_speed",type:"mainhand"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"armor.mainhand"}] run function general:extra_lore/attributes/set {name:"armor",type:"mainhand"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"armor_toughness.mainhand"}] run function general:extra_lore/attributes/set {name:"armor_toughness",type:"mainhand"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"knockback_resistance.mainhand"}] run function general:extra_lore/attributes/set {name:"knockback_resistance",type:"mainhand"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"movement_speed.mainhand"}] run function general:extra_lore/attributes/set {name:"movement_speed",type:"mainhand"}

execute if data storage general:extra_lore Item.components."minecraft:custom_data".sharpened run function general:extra_lore/attributes/custom/whetstone with storage general:extra_lore Item.components."minecraft:custom_data".sharpened

execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"max_health.offhand"}] run function general:extra_lore/attributes/set {name:"max_health",type:"offhand"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"attack_damage.offhand"}] run function general:extra_lore/attributes/set {name:"attack_damage",type:"offhand"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"attack_speed.offhand"}] run function general:extra_lore/attributes/set {name:"attack_speed",type:"offhand"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"armor.offhand"}] run function general:extra_lore/attributes/set {name:"armor",type:"offhand"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"armor_toughness.offhand"}] run function general:extra_lore/attributes/set {name:"armor_toughness",type:"offhand"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"knockback_resistance.offhand"}] run function general:extra_lore/attributes/set {name:"knockback_resistance",type:"offhand"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"movement_speed.offhand"}] run function general:extra_lore/attributes/set {name:"movement_speed",type:"offhand"}

execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"max_health.body"}] run function general:extra_lore/attributes/set {name:"max_health",type:"body"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"attack_damage.body"}] run function general:extra_lore/attributes/set {name:"attack_damage",type:"body"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"attack_speed.body"}] run function general:extra_lore/attributes/set {name:"attack_speed",type:"body"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"armor.body"}] run function general:extra_lore/attributes/set {name:"armor",type:"body"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"armor_toughness.body"}] run function general:extra_lore/attributes/set {name:"armor_toughness",type:"body"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"knockback_resistance.body"}] run function general:extra_lore/attributes/set {name:"knockback_resistance",type:"body"}
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"movement_speed.body"}] run function general:extra_lore/attributes/set {name:"movement_speed",type:"body"}

data modify storage general:extra_lore Item.components."minecraft:attribute_modifiers".show_in_tooltip set value 0b