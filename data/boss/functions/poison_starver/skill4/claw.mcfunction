# 執行者、執行位置是災厄餓死鬼
playsound entity.player.attack.sweep master @a[distance=..15]
playsound minecraft:entity.zombie.infect master @a[distance=..15]

execute positioned ~ ~1 ~ rotated ~ 0 run function boss:poison_starver/skill4/particle
execute positioned ~ ~1 ~ rotated ~16 0 run function boss:poison_starver/skill4/particle
execute positioned ~ ~1 ~ rotated ~-16 0 run function boss:poison_starver/skill4/particle

execute rotated ~ 0 positioned ^ ^ ^2.5 as @a[distance=..2.5] run damage @s 6 mob_attack by @e[sort=nearest,limit=1,tag=boss.poison_starver]