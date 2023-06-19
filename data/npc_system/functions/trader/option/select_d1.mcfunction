data modify entity @s data.Texts set from entity @s data.TraderNormal[0].Texts
data modify entity @s data.Options set from entity @s data.TraderNormal[0].Options
data modify entity @s data.Quest set from entity @s data.TraderNormal[0].Quest
data modify entity @s data.Extra set from entity @s data.TraderNormal[0].Extra
execute unless data entity @s data.TraderNormal[0].Once run data modify entity @s data.TraderNormal append from entity @s data.TraderNormal[0]
data remove entity @s data.TraderNormal[0]
