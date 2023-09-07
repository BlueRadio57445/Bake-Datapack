data modify entity @s data.Dialogue.Texts set from entity @s data.Dialogue.Options[3].React
execute store result entity @s data.Dialogue.End byte 1 run data get entity @s data.Dialogue.Options[3].End
data modify entity @s data.Dialogue.Options[3].Extra.Hidden set value {}
data modify entity @s data.Dialogue.Options[3].Extra.Hidden set from entity @s data.Dialogue.Extra
data modify entity @s data.Dialogue.Extra set from entity @s data.Dialogue.Options[3].Extra
data remove entity @s data.Dialogue.Options[3].Extra.Hidden
