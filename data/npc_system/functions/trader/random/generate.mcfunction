# executed by marker
execute store result score $dialogue npc.count run data get entity @s data.TraderNormal
# -1 for index, another -1 for not selecting the last one
scoreboard players remove $dialogue npc.count 2
# if no need of random, return
execute unless score $dialogue npc.count matches 1.. run return 0
# if need random, get a integer between min and max (both include) in uniform
data modify storage general:utils input set value {min:0,max:0}
execute store result storage general:utils input.max int 1 run scoreboard players get $dialogue npc.count
function general:utils/get_uniform with storage general:utils input
execute store result score $index npc.count run data get storage general:utils output
execute if score $index npc.count matches 1.. run function npc_system:trader/random/roll
