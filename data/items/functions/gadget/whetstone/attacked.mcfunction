advancement revoke @s only items:gadget/whetstone_sharpened_attack
playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 0.1 1.5 0
tag @s add general.attacker
execute at @s as @e[nbt={HurtTime:10s},type=#mobs] run function general:utils/check_attacker
execute as @e[tag=general.attacked] at @s anchored eyes run particle minecraft:crit ^ ^ ^ 0.3 0.3 0.3 1 5 normal
tag @e[tag=general.attacked] remove general.attacked
tag @s remove general.attacker

data modify storage items:whetstone weapon set from entity @s SelectedItem
scoreboard players set $modifier items.whetstone 0
scoreboard players set $times items.whetstone 1
execute store result score $modifier items.whetstone run data get storage items:whetstone weapon.components.minecraft:custom_data.sharpened.modifier 100
execute store result score $times items.whetstone run data get storage items:whetstone weapon.components.minecraft:custom_data.sharpened.times_left
scoreboard players remove $times items.whetstone 1
execute store result storage items:whetstone weapon.components.minecraft:custom_data.sharpened.times_left int 1 run scoreboard players get $times items.whetstone
execute if score $times items.whetstone matches ..0 run function items:gadget/whetstone/clear with storage items:whetstone weapon.components.minecraft:custom_data.sharpened
execute if score $times items.whetstone matches ..0 run return 0

function items:gadget/whetstone/lore_update with storage items:whetstone weapon.components.minecraft:custom_data.sharpened

data modify storage items:whetstone weapon.Slot set value 0b
data modify block 0 16 0 Items append from storage items:whetstone weapon
item replace entity @s weapon.mainhand from block 0 16 0 container.0
data modify block 0 16 0 Items set value []
