scoreboard players set @s npc.state 3
scoreboard players set @s npc.option 0
scoreboard players set @s npc.look_option 0
execute as @e[limit=1,type=minecraft:marker,tag=npc.this] run function npc_system:trader/options_1
function npc_system:actionbar/state_2
