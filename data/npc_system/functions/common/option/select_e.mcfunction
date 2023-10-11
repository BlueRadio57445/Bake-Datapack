execute store result score $temp npc.state if data entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Exit
execute if score $temp npc.state matches 0 run function npc_system:common/end
execute if score $temp npc.state matches 0 run return 0
execute as @e[limit=1,type=minecraft:marker,tag=npc.this] run function npc_system:common/option/select_e1
function npc_system:common/selected
