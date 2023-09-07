execute if data entity @s data.Dialogue.Options[0].Condition run function npc_system:common/option/condition/check {index:0}
execute if score $condition npc.state matches 0 run return 0
data modify entity @s data.Dialogue.Texts set from entity @s data.Dialogue.Options[0].React
execute store result entity @s data.Dialogue.End byte 1 run data get entity @s data.Dialogue.Options[0].End
data modify entity @s data.Dialogue.Options[0].Extra.Hidden set value {}
data modify entity @s data.Dialogue.Options[0].Extra.Hidden set from entity @s data.Dialogue.Extra
data modify entity @s data.Dialogue.Extra set from entity @s data.Dialogue.Options[0].Extra
data remove entity @s data.Dialogue.Options[0].Extra.Hidden
