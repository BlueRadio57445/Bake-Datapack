advancement revoke @s only items:gadget/whetstone_sharpened_attack
data modify storage items:whetstone Weapon set from entity @s SelectedItem

scoreboard players set $modifier items.whetstone 0
scoreboard players set $times items.whetstone 1
execute store result score $modifier items.whetstone run data get storage items:whetstone Weapon.tag.sharpened.modifier 100
execute store result score $times items.whetstone run data get storage items:whetstone Weapon.tag.sharpened.times_left
scoreboard players remove $times items.whetstone 1
execute store result storage items:whetstone Weapon.tag.sharpened.times_left int 1 run scoreboard players get $times items.whetstone
execute if score $times items.whetstone matches ..0 run function items:gadget/whetstone/clear with storage items:whetstone Weapon.tag.sharpened
execute if score $times items.whetstone matches ..0 run return 0

function items:gadget/whetstone/lore_update with storage items:whetstone Weapon.tag.sharpened

item modify entity @s weapon.mainhand items:gadget/whetstone/attacked
