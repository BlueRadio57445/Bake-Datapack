execute store result score @s weapons.max_health run attribute @s minecraft:generic.max_health get
scoreboard players operation @s[type=player] weapons.use_health = @s[type=player] general.player.health
execute store result score @s[type=!player] weapons.use_health run data get entity @s Health 1
scoreboard players operation @s weapons.use_health *= $100 weapons.use_health
scoreboard players operation @s weapons.use_health /= @s weapons.max_health

