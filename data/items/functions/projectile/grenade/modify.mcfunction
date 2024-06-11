summon minecraft:item ~ ~ ~ {Tags:["items.grenade","items.new"],Invulnerable:1b,PickupDelay:-1s,Item:{id:"minecraft:snowball",count:1b,components:{"minecraft:custom_model_data":4500}}}
data modify entity @s Item set value {id:"minecraft:structure_void",Count:1b,components:{"minecraft:custom_model_data":0}}
execute store result score @e[limit=1,type=minecraft:item,tag=items.new] items.check_time run scoreboard players get $gametime general.utils
execute store result entity @e[limit=1,type=minecraft:item,tag=items.new] Item.tag.time int 1 run scoreboard players get $gametime general.utils
scoreboard players add @e[limit=1,type=minecraft:item,tag=items.new] items.check_time 60
ride @e[limit=1,type=minecraft:item,tag=items.new] mount @s
tag @e[type=minecraft:item,tag=items.new] remove items.new
schedule function items:projectile/grenade/timer 60 append
