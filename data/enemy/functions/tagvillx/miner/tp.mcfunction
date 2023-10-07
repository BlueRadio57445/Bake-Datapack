execute as @e[tag=miner_tp_tag] if score @s enemy.miner.skill.move_to_chain.id = $store enemy.miner.skill.move_to_chain.id run tag @s add miner_tp
execute as @e[tag=miner_tp] run scoreboard players operation $store2 enemy.miner.skill.move_to_chain.id = @s enemy.miner.skill.move_to_chain.id
execute if score @s enemy.miner.skill.move_to_chain.id = $store2 enemy.miner.skill.move_to_chain.id run tag @s add miner_can_tp


execute as @e[tag=miner_can_tp] at @s facing entity @e[tag=miner_tp] feet run tp @s ^ ^ ^1.5

tag @e remove miner_tp

#scoreboard players set $store enemy.miner.skill.move_to_chain.id 0