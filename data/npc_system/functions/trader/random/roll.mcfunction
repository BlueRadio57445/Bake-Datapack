data modify entity @s data.TraderNormal append from entity @s data.TraderNormal[0]
data remove entity @s data.TraderNormal[0]
scoreboard players remove $index npc.count 1
execute if score $index npc.count matches 1.. run function npc_system:trader/random/roll
