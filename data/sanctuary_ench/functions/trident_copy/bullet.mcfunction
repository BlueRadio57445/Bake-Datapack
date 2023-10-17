tp @s ^ ^ ^0.5 ~ ~ 

execute unless block ~ ~ ~ #no_collision run function sanctuary_ench:trident_copy/bullet_hit_something

execute positioned ~-0.1 ~-0.1 ~-0.1 as @e[type=#mobs,dx=0] positioned ~-0.8 ~-0.8 ~-0.8 run tag @s[dx=0] add hitten
execute if entity @e[tag=hitten] run function sanctuary_ench:trident_copy/bullet_hit_something
execute as @e[tag=hitten] run damage @s 5 minecraft:trident
tag @e[tag=hitten] remove hitten


particle item bread ~ ~ ~ 0.01 0.01 0.01 0.1 1