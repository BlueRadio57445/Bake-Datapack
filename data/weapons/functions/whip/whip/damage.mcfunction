#記得改述詞
execute as @e[tag=weapons_whip_whip1] if predicate weapons:whip/motion unless predicate weapons:whip/onground at @s as @e[sort=nearest,limit=1,type=#mobs] run damage @s 1
execute as @e[tag=weapons_whip_whip1] if predicate weapons:whip/motion unless predicate weapons:whip/onground run kill @s
execute as @e[tag=weapons_whip_whip1] at @s unless entity @a[distance=..6] run kill @s
