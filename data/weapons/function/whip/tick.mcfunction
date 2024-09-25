execute as @e[type=minecraft:fishing_bobber,predicate=weapons:whip/motion,predicate=!weapons:whip/on_ground] run function weapons:whip/check_whip
execute as @e[type=minecraft:fishing_bobber] run function weapons:whip/check_distance
