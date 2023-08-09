data modify entity @s data.Texts set from entity @s data.Options[2].React
execute store result entity @s data.End byte 1 run data get entity @s data.Options[2].End
data modify entity @s data.Options[2].Extra.Hidden set value {}
data modify entity @s data.Options[2].Extra.Hidden set from entity @s data.Extra
data modify entity @s data.Extra set from entity @s data.Options[2].Extra
data remove entity @s data.Options[2].Extra.Hidden
