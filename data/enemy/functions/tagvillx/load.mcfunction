#礦工
scoreboard objectives add enemy.miner.skill.cd dummy
scoreboard objectives add enemy.miner.skill.prepare dummy
scoreboard objectives add enemy.miner.skill.chain_life dummy
#法師
scoreboard objectives add enemy.death_mage.skill.cd dummy
scoreboard objectives add enemy.death_mage.skill.prepare dummy
scoreboard objectives add enemy.death_mage.skill.count dummy
#巨妖刀
scoreboard objectives add enemy.big_knife.skill.cd dummy
scoreboard objectives add enemy.big_knife.skill.prepare dummy
scoreboard objectives add enemy.big_knife.id dummy
execute unless score $index enemy.big_knife.id matches -2147483648..2147483647 run scoreboard players set $index enemy.big_knife.id 0
