scoreboard players operation @s npc.timer = $gametime general.utils
data modify storage npc_system:common temp set from entity @s data.Idle[-1].Rest
execute if data storage npc_system:common temp.max run function npc_system:idle/random
execute store result score $rest npc.timer run data get storage npc_system:common temp
scoreboard players operation $rest npc.timer *= $20 general.const
scoreboard players operation @s npc.timer = $gametime general.utils
scoreboard players operation @s npc.timer += $rest npc.timer
scoreboard players set @s npc.idle 0
