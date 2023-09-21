scoreboard players reset * general.extra_lore.modifier_type
data modify storage general:extra_lore Attributes set value []

execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"attack_damage.default"}] run function general:extra_lore/attributes/set {name:"attack_damage",type:"default"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"attack_speed.default"}] run function general:extra_lore/attributes/set {name:"attack_speed",type:"default"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"armor.default"}] run function general:extra_lore/attributes/set {name:"armor",type:"default"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"armor_toughness.default"}] run function general:extra_lore/attributes/set {name:"armor_toughness",type:"default"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"knockback_resistance.default"}] run function general:extra_lore/attributes/set {name:"knockback_resistance",type:"default"}

execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"max_health.hand"}] run function general:extra_lore/attributes/set {name:"max_health",type:"hand"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"attack_damage.hand"}] run function general:extra_lore/attributes/set {name:"attack_damage",type:"hand"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"attack_speed.hand"}] run function general:extra_lore/attributes/set {name:"attack_speed",type:"hand"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"armor.hand"}] run function general:extra_lore/attributes/set {name:"armor",type:"hand"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"armor_toughness.hand"}] run function general:extra_lore/attributes/set {name:"armor_toughness",type:"hand"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"knockback_resistance.hand"}] run function general:extra_lore/attributes/set {name:"knockback_resistance",type:"hand"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"movement_speed.hand"}] run function general:extra_lore/attributes/set {name:"movement_speed",type:"hand"}

execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"max_health.mainhand"}] run function general:extra_lore/attributes/set {name:"max_health",type:"mainhand"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"attack_damage.mainhand"}] run function general:extra_lore/attributes/set {name:"attack_damage",type:"mainhand"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"attack_speed.mainhand"}] run function general:extra_lore/attributes/set {name:"attack_speed",type:"mainhand"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"armor.mainhand"}] run function general:extra_lore/attributes/set {name:"armor",type:"mainhand"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"armor_toughness.mainhand"}] run function general:extra_lore/attributes/set {name:"armor_toughness",type:"mainhand"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"knockback_resistance.mainhand"}] run function general:extra_lore/attributes/set {name:"knockback_resistance",type:"mainhand"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"movement_speed.mainhand"}] run function general:extra_lore/attributes/set {name:"movement_speed",type:"mainhand"}

execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"max_health.offhand"}] run function general:extra_lore/attributes/set {name:"max_health",type:"offhand"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"attack_damage.offhand"}] run function general:extra_lore/attributes/set {name:"attack_damage",type:"offhand"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"attack_speed.offhand"}] run function general:extra_lore/attributes/set {name:"attack_speed",type:"offhand"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"armor.offhand"}] run function general:extra_lore/attributes/set {name:"armor",type:"offhand"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"armor_toughness.offhand"}] run function general:extra_lore/attributes/set {name:"armor_toughness",type:"offhand"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"knockback_resistance.offhand"}] run function general:extra_lore/attributes/set {name:"knockback_resistance",type:"offhand"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"movement_speed.offhand"}] run function general:extra_lore/attributes/set {name:"movement_speed",type:"offhand"}

execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"max_health.body"}] run function general:extra_lore/attributes/set {name:"max_health",type:"body"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"attack_damage.body"}] run function general:extra_lore/attributes/set {name:"attack_damage",type:"body"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"attack_speed.body"}] run function general:extra_lore/attributes/set {name:"attack_speed",type:"body"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"armor.body"}] run function general:extra_lore/attributes/set {name:"armor",type:"body"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"armor_toughness.body"}] run function general:extra_lore/attributes/set {name:"armor_toughness",type:"body"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"knockback_resistance.body"}] run function general:extra_lore/attributes/set {name:"knockback_resistance",type:"body"}
execute if data storage general:extra_lore Item.tag.AttributeModifiers[{Name:"movement_speed.body"}] run function general:extra_lore/attributes/set {name:"movement_speed",type:"body"}
