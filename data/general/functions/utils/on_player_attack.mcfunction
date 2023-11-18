tag @s add this
execute at @s as @e[nbt={HurtTime:10s},type=#mobs] run function enemy:check_attacker

# 攻擊者先
data modify storage general:utils input set value {command:""}
data modify storage general:utils input.command set from entity @s SelectedItem.tag.on_attack.attacker
function general:utils/execute with storage general:utils input

# 攻擊目標後
data modify storage general:utils input set value {command:""}
data modify storage general:utils input.command set from entity @s SelectedItem.tag.on_attack.target
execute as @e[tag=attacked] at @s run function general:utils/execute with storage general:utils input

tag @e[tag=attacked] remove attacked
tag @s remove this

# 避免循環呼叫(非常重要)
advancement revoke @s only general:utils/on_player_attack
