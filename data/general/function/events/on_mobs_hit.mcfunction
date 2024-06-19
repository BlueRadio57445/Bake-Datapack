# 攻擊者先
data modify storage general:utils input set value {command:""}
execute on attacker run data modify storage general:utils input.command set from entity @s HandItems[0].components."minecraft:custom_data".on_hit.attacker
execute if data storage general:utils input{command:""} on attacker run data modify storage general:utils input.command set from entity @s HandItems[1].components."minecraft:custom_data".on_hit.attacker
execute on attacker at @s run function general:utils/execute with storage general:utils input

# 攻擊目標後
data modify storage general:utils input set value {command:""}
execute on attacker run data modify storage general:utils input.command set from entity @s HandItems[0].components."minecraft:custom_data".on_hit.target
execute if data storage general:utils input{command:""} on attacker run data modify storage general:utils input.command set from entity @s HandItems[1].components."minecraft:custom_data".on_hit.target
function general:utils/execute with storage general:utils input

# 避免循環呼叫(非常重要)
advancement revoke @s only general:events/on_mobs_hit
