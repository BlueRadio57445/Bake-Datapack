$data modify storage items:whetstone Attribute set from storage general:extra_lore has_durability[{id:"$(id)"}].attributes
execute store result score $damage items.whetstone run data get storage items:whetstone Attribute.attack_damage 100
execute store result score $speed items.whetstone run data get storage items:whetstone Attribute.attack_speed 100
execute if score $hand items.whetstone matches 1 run item modify entity @s weapon.offhand items:gadget/whetstone/base_attributes
execute if score $hand items.whetstone matches -1 run item modify entity @s weapon.mainhand items:gadget/whetstone/base_attributes
