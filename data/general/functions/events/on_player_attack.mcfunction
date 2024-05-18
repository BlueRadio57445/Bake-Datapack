tag @s add general.attacker
execute at @s as @e[nbt={HurtTime:10s},type=#mobs] run function general:utils/check_attacker

# 攻擊者先
data modify storage general:utils input set value {command:""}
data modify storage general:utils input.command set from entity @s SelectedItem.components."minecraft:custom_data".on_attack.attacker
function general:utils/execute with storage general:utils input

# 攻擊目標後
data modify storage general:utils input set value {command:""}
data modify storage general:utils input.command set from entity @s SelectedItem.components."minecraft:custom_data".on_attack.target
execute as @e[tag=general.attacked] at @s run function general:utils/execute with storage general:utils input

tag @e[tag=general.attacked] remove general.attacked
tag @s remove general.attacker

# 避免循環呼叫(非常重要)
advancement revoke @s only general:events/on_player_attack
