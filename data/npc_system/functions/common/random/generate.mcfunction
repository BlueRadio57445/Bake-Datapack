execute store result score $dialogue npc.count run data get storage npc_system:common This.Normal
scoreboard players remove $dialogue npc.count 2
# If no need of random, return
execute unless score $dialogue npc.count matches 1.. run return 0
# If need random, get a integer between min and max (both include) in uniform
scoreboard players operation $uniform_max general.utils = $dialogue npc.count
scoreboard players set $uniform_min general.utils 0
function general:utils/get_uniform
scoreboard players operation $index npc.count = $output general.utils
execute if score $index npc.count matches 1.. run function npc_system:common/random/roll
