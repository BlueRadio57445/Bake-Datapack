execute as @a store result score @s player_max_health run attribute @s minecraft:generic.max_health get
execute as @a store result score @s use_health run scoreboard players operation @s player_max_health -= @s player_health



