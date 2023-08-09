execute on origin unless score @s effects.strong_gravity.duration matches 1.. run return 0
execute store result score $y_mot effects.state run data get entity @s Motion[1] 100
execute as @s[type=#minecraft:light_projectiles] run scoreboard players remove $y_mot effects.state 8
execute as @s[type=#minecraft:heavy_projectiles] run scoreboard players remove $y_mot effects.state 20
execute store result entity @s Motion[1] double 0.01 run scoreboard players get $y_mot effects.state
execute if data entity @s {inGround:1b} run tag @s add effects.projectile.hit_ground
