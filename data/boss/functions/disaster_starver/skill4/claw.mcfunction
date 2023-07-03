# 執行者、執行位置是災厄餓死鬼

execute positioned ~ ~1 ~ rotated ~ 0 run function boss:disaster_starver/skill4/particle
execute positioned ~ ~1 ~ rotated ~16 0 run function boss:disaster_starver/skill4/particle
execute positioned ~ ~1 ~ rotated ~-16 0 run function boss:disaster_starver/skill4/particle

execute rotated ~ 0 positioned ^ ^ ^2.5 as @a[distance=..3] run damage @s 6 mob_attack by @e[sort=nearest,limit=1,tag=boss.disaster_starver]