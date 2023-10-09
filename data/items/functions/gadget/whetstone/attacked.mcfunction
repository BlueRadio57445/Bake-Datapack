advancement revoke @s only items:gadget/whetstone_sharpened_attack
data modify storage items:whetstone Weapon set from entity @s SelectedItem

data modify storage items:whetstone Temp set value []
scoreboard players set $target items.whetstone 2
function items:gadget/whetstone/lore_remove
data modify storage items:whetstone Weapon.tag.display.Lore append from storage items:whetstone Temp[]

scoreboard players set $modifier items.whetstone 0
scoreboard players set $times items.whetstone 1
execute store result score $modifier items.whetstone run data get storage items:whetstone Weapon.tag.sharpened.modifier 100
execute store result score $times items.whetstone run data get storage items:whetstone Weapon.tag.sharpened.times_left
scoreboard players remove $times items.whetstone 1
execute if score $times items.whetstone matches ..0 run function items:gadget/whetstone/clear
execute if score $times items.whetstone matches ..0 run return 0

execute store result storage items:whetstone Weapon.tag.sharpened.times_left int 1 run scoreboard players get $times items.whetstone
item replace block 0 16 0 container.0 with minecraft:stone 1
item modify block 0 16 0 container.0 items:gadget/whetstone/get_modifier
data modify storage items:whetstone Weapon.tag.display.Lore append value '{"italic":false,"color":"dark_gray","text":"臨時屬性:"}'
data modify storage items:whetstone Weapon.tag.display.Lore append from block 0 16 0 Items[0].tag.display.Name
data modify block 0 16 0 Items set value []
item modify entity @s weapon.mainhand items:gadget/whetstone/attacked
