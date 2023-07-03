tag @s remove disaster_starver.jumping
tag @s remove disaster_starver.big_jumping

particle block dirt ~ ~0.01 ~ 1.2 0.1 1.2 0.01 400
execute as @a[distance=..4] run damage @s 6 mob_attack by @e[sort=nearest,limit=1,tag=boss.disaster_starver]