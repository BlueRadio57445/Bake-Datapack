advancement revoke @s only weapons:hammer/oak_hammer

effect give @s slowness 5 0 false
tag @s add this
execute as @e[tag=hammer.oak_hammer,type=marker] at @s run function weapons:hammer/oak_hammer/cast
tag @s remove this