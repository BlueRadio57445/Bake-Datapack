scoreboard players set @s npc.option 4
scoreboard players set $condition npc.state 1
execute as @e[limit=1,type=minecraft:marker,tag=npc.this] run function npc_system:common/option/select {index:3}
execute if score $condition npc.state matches 1 run function npc_system:common/selected
