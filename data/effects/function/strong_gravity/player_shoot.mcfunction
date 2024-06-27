advancement revoke @s only effects:strong_gravity/shoot
scoreboard players set @s effects.strong_gravity.shot_bow 0
scoreboard players set @s effects.strong_gravity.shot_crossbow 0
scoreboard players set @s effects.strong_gravity.shot_trident 0
execute store result score $temp effects.state run data get entity @s Rotation[1]
execute as @e[type=#minecraft:heavy_projectiles] run function effects:strong_gravity/projectile_reset
