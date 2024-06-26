scoreboard players set $hand items.whetstone 0
execute if predicate items:gadget/whetstone_mainhand run scoreboard players set $hand items.whetstone 1
execute if predicate items:gadget/whetstone_offhand run scoreboard players set $hand items.whetstone -1

execute if score $hand items.whetstone matches 1 run data modify storage items:whetstone attribute set from entity @s SelectedItem.components.minecraft:custom_data.whetstone
execute if score $hand items.whetstone matches -1 run data modify storage items:whetstone attribute set from entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.whetstone

scoreboard players set $modifier items.whetstone 0
scoreboard players set $times items.whetstone 1
execute store result score $modifier items.whetstone run data get storage items:whetstone attribute.modifier 1000
execute store result score $times items.whetstone run data get storage items:whetstone attribute.times_left

execute if score $hand items.whetstone matches 1 run function general:utils/damage_item {slot:"weapon.mainhand",damage:1}
execute if score $hand items.whetstone matches -1 run function general:utils/damage_item {slot:"weapon.offhand",damage:1}
execute if score $hand items.whetstone matches 1 run item modify entity @s weapon.offhand items:gadget/whetstone/apply
execute if score $hand items.whetstone matches -1 run item modify entity @s weapon.mainhand items:gadget/whetstone/apply
