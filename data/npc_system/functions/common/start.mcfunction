scoreboard players set @s npc.state 1
scoreboard players set @e[limit=1,type=minecraft:interaction,tag=npc.this] npc.occupied 1
scoreboard players set @e[limit=1,tag=npc.figure,tag=npc.this] npc.reset 0
scoreboard players operation @e[tag=npc.this] npc.user = @s general.id
execute store result score @s npc.quest if data storage npc_system:common This.Dialogue
execute store result score @s npc.trader run data get storage npc_system:common This.Trader
execute if data storage npc_system:common This{NormalRandom:1b} run function npc_system:common/random/generate
data modify storage npc_system:common This.Dialogue set from storage npc_system:common This.Normal[0]
execute unless data storage npc_system:common This.Normal[0].Once run data modify storage npc_system:common This.Normal append from storage npc_system:common This.Normal[0]
data remove storage npc_system:common This.Normal[0]
execute as @e[limit=1,tag=npc.figure,tag=npc.this] on passengers run tag @s add npc.old
execute as @e[limit=1,tag=npc.figure,tag=npc.this] at @s anchored eyes positioned ^ ^ ^ summon minecraft:marker run function npc_system:common/summon/temp_storage
execute as @e[limit=1,type=minecraft:text_display,tag=npc.this] at @s summon minecraft:text_display run function npc_system:common/summon/text_display
data merge entity @e[limit=1,type=minecraft:text_display,tag=npc.name,tag=npc.this] {text:'{"color":"black","text":"","extra":[{"nbt":"CustomName","entity":"@e[limit=1,tag=npc.figure,tag=npc.this]","interpret":true},{"text":":"}]}',start_interpolation:0,interpolation_duration:2,transformation:{translation:[0.0f,0.05f,0.0f]}}
function npc_system:common/display_text
