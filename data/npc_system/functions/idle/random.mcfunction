execute store result score $uniform.max general.utils run data get storage npc_system:common temp.max
execute store result score $uniform.min general.utils run data get storage npc_system:common temp.min
scoreboard players operation $uniform.min general.utils > $1 general.const
function general:utils/get_uniform
execute store result storage npc_system:common temp int 1 run scoreboard players get $output general.utils
