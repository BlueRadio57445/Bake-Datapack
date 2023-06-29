execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:1000,Tags:[heavy_gloves_cast]}
execute as @e[tag=heavy_gloves_cast,sort=nearest,limit=1] at @s as @e[distance=..5,type=! player] run damage @s 2



