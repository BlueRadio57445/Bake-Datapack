scoreboard players set @s npc.state 2
scoreboard players set @s npc.option 0
scoreboard players set @s npc.look_option 0
execute store result score $count npc.option if data entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Options[]
execute if score $count npc.option matches 1 run function npc_system:common/option/summon_1
execute if score $count npc.option matches 2 run function npc_system:common/option/summon_2
execute if score $count npc.option matches 3 run function npc_system:common/option/summon_3
execute if score $count npc.option matches 4 run function npc_system:common/option/summon_4
scoreboard players operation @e[tag=npc.option,tag=npc.this] npc.user = @s general.id
