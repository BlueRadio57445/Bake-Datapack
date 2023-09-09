advancement revoke @s only items:gadget/whetstone_sharpened_attack
data modify storage items:whetstone Sharpen set from entity @s SelectedItem.tag.sharpened

scoreboard players set $modifier items.whetstone 0
scoreboard players set $times items.whetstone 1
execute store result score $modifier items.whetstone run data get storage items:whetstone Sharpen.modifier 100
execute store result score $times items.whetstone run data get storage items:whetstone Sharpen.times_left
scoreboard players remove $times items.whetstone 1
execute store result storage items:whetstone Sharpen.times_left int 1 run scoreboard players get $times items.whetstone
item replace block 0 16 0 container.0 with minecraft:stone 1
item modify block 0 16 0 container.0 items:gadget/whetstone/get_modifier
data modify storage items:whetstone LoreModifier set from block 0 16 0 Items[0].tag.display.Name
data modify block 0 16 0 Items set value []

execute if score $times items.whetstone matches 1.. run item modify entity @s weapon.mainhand items:gadget/whetstone/attacked
execute if score $times items.whetstone matches ..0 run function items:gadget/whetstone/clear
