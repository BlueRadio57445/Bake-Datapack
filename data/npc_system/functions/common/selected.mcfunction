scoreboard players set @s npc.state 1
kill @e[tag=npc.option,tag=npc.this]
execute as @e[limit=1,type=minecraft:marker,tag=npc.this] run function npc_system:common/selected_1
