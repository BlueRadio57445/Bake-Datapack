#礦工
scoreboard objectives add enemy.miner.skill.cd dummy
scoreboard objectives add enemy.miner.skill.prepar dummy
scoreboard objectives add enemy.miner.skill.chain_delay dummy
scoreboard objectives add enemy.miner.skill.move_to_chain.id dummy
execute unless score $index enemy.miner.skill.move_to_chain.id matches ..0 unless score $index enemy.miner.skill.move_to_chain.id matches 0.. run scoreboard players set $index enemy.miner.skill.move_to_chain.id 0
scoreboard objectives add enemy.miner.skill.chain_life dummy



