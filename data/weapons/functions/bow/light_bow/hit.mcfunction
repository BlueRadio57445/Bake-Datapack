# 玩家拿弓射怪物
advancement revoke @s only weapons:bow/light_bow/hit

tag @s add this
execute at @s as @e[nbt={HurtTime:10s},type=#mobs] run function enemy:check_attacker
execute at @e[tag=attacked] run fill ~ ~ ~ ~ ~ ~ fire replace #can_burn
tag @e[tag=attacked] remove attacked
tag @s remove this