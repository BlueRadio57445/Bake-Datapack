advancement revoke @s only weapons:hammer/warped_hammer

effect give @s nausea 15 0 false
effect give @s weakness 5 0 false
tag @s add this
execute as @e[tag=hammer.warped_hammer,type=marker] at @s run function weapons:hammer/warped_hammer/cast
tag @s remove this