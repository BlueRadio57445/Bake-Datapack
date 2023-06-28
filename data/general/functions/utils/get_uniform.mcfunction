loot replace block 0 16 0 container.0 loot general:utils/get_uniform
execute store result score $output general.utils run data get block 0 16 0 Items[0].tag.Effects[0].EffectDuration
scoreboard players reset $uniform_min general.utils
scoreboard players reset $uniform_max general.utils
