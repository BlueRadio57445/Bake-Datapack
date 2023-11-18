tag @s add this
execute at @s as @e[nbt={HurtTime:10s},type=#mobs] run function enemy:check_attacker
execute at @e[limit=1,tag=attacked] as @e[type=minecraft:marker,tag=general.on_hit,distance=0..10] on vehicle run function general:utils/on_player_hit/projectile

# 攻擊者先
data modify storage general:utils input set value {command:""}
data modify storage general:utils input.command set from entity @e[limit=1,type=minecraft:marker,tag=general.hit] data.on_hit.attacker
function general:utils/execute with storage general:utils input

# 攻擊目標後
data modify storage general:utils input set value {command:""}
data modify storage general:utils input.command set from entity @e[limit=1,type=minecraft:marker,tag=general.hit] data.on_hit.target
execute as @e[tag=attacked] run function general:utils/execute with storage general:utils input

kill @e[type=minecraft:marker,tag=general.hit]
tag @e[tag=attacked] remove attacked
tag @s remove this

# 避免循環呼叫(非常重要)
advancement revoke @s only general:utils/on_player_hit
