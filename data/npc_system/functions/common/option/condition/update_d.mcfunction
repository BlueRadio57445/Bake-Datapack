scoreboard players set $condition npc.state 1
function npc_system:common/option/condition/check_d
execute if score $condition npc.state matches 0 run tag @e[tag=npc.option_d,tag=npc.this] add npc.invalid
execute if score $condition npc.state matches 0 run data modify entity @e[limit=1,type=minecraft:text_display,tag=npc.option_d,tag=npc.this] text set value '{"color":"gray","text":"","extra":[{"nbt":"data.Options[3].Option","entity":"@e[limit=1,type=minecraft:marker,tag=npc.this]","interpret":true}]}'
execute if score $condition npc.state matches 1 run tag @e[tag=npc.option_d,tag=npc.this] remove npc.invalid
execute if score $condition npc.state matches 1 run data modify entity @e[limit=1,type=minecraft:text_display,tag=npc.option_d,tag=npc.this] text set value '{"color":"black","text":"","extra":[{"nbt":"data.Options[3].Option","entity":"@e[limit=1,type=minecraft:marker,tag=npc.this]","interpret":true}]}'
