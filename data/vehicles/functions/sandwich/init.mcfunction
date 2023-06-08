# summon display
execute at @s positioned ~ ~0.875 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["vehicles.display","vehicles.display.sandwich","vehicles.new_display"],Passengers:[{id:"minecraft:item_display",Tags:["vehicles.display"],item:{id:"minecraft:dirt",Count:1b}}]}
scoreboard players operation @e[limit=1,type=minecraft:area_effect_cloud,tag=vehicles.new_display] vehicles.id = $system vehicles.id
scoreboard players set @e[limit=1,type=minecraft:area_effect_cloud,tag=vehicles.new_display] vehicles.follow_y 8750
data modify entity @e[limit=1,type=minecraft:area_effect_cloud,tag=vehicles.new_display] Owner set from entity @s UUID
tag @e[type=minecraft:area_effect_cloud,tag=vehicles.new_display] remove vehicles.new_display

data merge entity @s {NoAI:1b,ForcedAge:0}
function vehicles:sandwich/stuffing_check
