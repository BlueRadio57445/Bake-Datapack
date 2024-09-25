advancement revoke @s only weapons:hammer/crimson_hammer

effect give @s instant_damage 1 0 false
tag @s add this
execute as @e[tag=hammer.crimson_hammer,type=marker] at @s run function weapons:hammer/crimson_hammer/cast
tag @s remove this