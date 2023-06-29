execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:1000,Tags:[heavy_gloves_cast]}
execute as @e[tag=heavy_gloves_cast,sort=nearest,limit=1] at @s as @e[distance=..2,type=! player] run damage @s 2
execute as @e[tag=heavy_gloves_cast,sort=nearest,limit=1] at @s run particle minecraft:crit ~ ~1 ~ .5 .5 .5 0 100

execute as @e[tag=heavy_gloves_cast,sort=nearest,limit=1] at @s run playsound minecraft:entity.player.attack.crit master @a[distance=..15] ~ ~ ~ 100 1

