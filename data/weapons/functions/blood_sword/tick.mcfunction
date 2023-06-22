execute as @a store result score @s weapons.player.max.health run attribute @s minecraft:generic.max_health get

execute as @a run scoreboard players operation @s weapons.use_health = @s general.player.health
execute as @a run scoreboard players operation @s weapons.use_health *= $100 weapons.use_health
execute as @a run scoreboard players operation @s weapons.use_health /= @s weapons.player.max.health


