execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:1000,Tags:["weapons.heavy_gloves_cast","weapons.heavy_gloves_cast_new"]}
execute as @e[type=area_effect_cloud,tag=weapons.heavy_gloves_cast_new,distance=..1] at @s as @e[distance=..2,type=! player] run damage @s 2
execute as @e[type=area_effect_cloud,tag=weapons.heavy_gloves_cast_new,distance=..1] at @s run particle minecraft:crit ~ ~1 ~ .5 .5 .5 0 100

execute as @e[type=area_effect_cloud,tag=weapons.heavy_gloves_cast_new,distance=..1] at @s run playsound minecraft:entity.player.attack.crit master @a[distance=..15] ~ ~ ~ 100 1
tag @e[type=area_effect_cloud,tag=weapons.heavy_gloves_cast_new,distance=..1] remove weapons.heavy_gloves_cast_new
