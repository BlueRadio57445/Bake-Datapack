data modify entity @s data.Temp set from entity @s data.Dialogue.Extra
data remove entity @s data.Dialogue
$function npc:$(region)/$(npc)/override
execute store success score @s npc.quest if data entity @s data.Dialogue
execute if score @s npc.quest matches 0 run function npc_system:trader/normal
$execute if score @s npc.quest matches 0 run data modify storage npc:$(region) $(npc).TraderNormal set from entity @s data.TraderNormal
data modify entity @s data.Dialogue.Extra.Hidden set from entity @s data.Temp
data remove entity @s data.Temp
