execute if data entity @s data{TraderNormalRandom:1b} run function npc_system:trader/random/generate
data modify entity @s data.Dialogue set from entity @s data.TraderNormal[0]
execute unless data entity @s data.TraderNormal[0].Once run data modify entity @s data.TraderNormal append from entity @s data.TraderNormal[0]
data remove entity @s data.TraderNormal[0]
