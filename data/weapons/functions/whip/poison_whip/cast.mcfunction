tag @s add whip.poison_whip
scoreboard players add @s weapons.whip.time 1
execute as @s[scores={weapons.whip.time=10}] run function weapons:whip/poison_whip/schedule
