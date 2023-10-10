# 這是進度觸發，所以執行者跟執行位置是玩家
advancement revoke @s only enemy:hunger_cave/elite_starver/hurt_by_player

tag @s add this
execute at @s as @e[tag=enemy.elite_starver] run function enemy:check_attacker
execute as @e[tag=attacked] at @s positioned ~ ~0.6 ~ positioned ^ ^ ^0.5 run function knowledge:water_bubble/cast
tag @e[tag=attacked] remove attacked
tag @s remove this
