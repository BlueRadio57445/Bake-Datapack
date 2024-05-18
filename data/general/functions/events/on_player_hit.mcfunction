tag @s add general.attacker
execute at @s as @e[nbt={HurtTime:10s},type=#mobs] run function general:utils/check_attacker
execute at @e[limit=1,tag=general.attacked] as @e[type=minecraft:marker,tag=general.on_hit,distance=0..10] on vehicle run function general:events/on_player_hit/projectile
execute at @e[limit=1,tag=general.attacked] run tag @e[limit=1,sort=nearest,tag=general.on_hit.near] add general.on_hit.hit
tag @e[tag=general.on_hit.near] remove general.on_hit.near

# 攻擊者先
data modify storage general:utils input set value {command:""}
data modify storage general:utils input.command set from entity @e[limit=1,type=minecraft:marker,tag=general.on_hit.hit] data.on_hit.attacker
function general:utils/execute with storage general:utils input

# 攻擊目標後
data modify storage general:utils input set value {command:""}
data modify storage general:utils input.command set from entity @e[limit=1,type=minecraft:marker,tag=general.on_hit.hit] data.on_hit.target
execute as @e[tag=general.attacked] run function general:utils/execute with storage general:utils input

kill @e[type=minecraft:marker,tag=general.on_hit.hit]
tag @e[tag=general.attacked] remove general.attacked
tag @s remove general.attacker

# 避免循環呼叫(非常重要)
advancement revoke @s only general:events/on_player_hit
