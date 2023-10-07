execute as @e[type=#mobs,tag=miner,scores={enemy.miner.skill.cd=0}] at @s run function enemy:tagvillx/miner/prepare
#技能預備
execute as @e[type=#mobs,tag=miner,scores={enemy.miner.skill.prepare=5..}] at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~

#技能發動
execute as @e[type=#mobs,tag=miner,scores={enemy.miner.skill.prepare=1}] at @s anchored eyes run function enemy:tagvillx/miner/cast
execute as @e[type=area_effect_cloud,tag=miner_chain_hook] at @s run function enemy:tagvillx/miner/chain_move

#記分板扣分
execute as @e[type=#mobs,tag=miner,scores={enemy.miner.skill.cd=1..}] run scoreboard players remove @s enemy.miner.skill.cd 1
execute as @e[type=#mobs,tag=miner,scores={enemy.miner.skill.prepare=1..}] run scoreboard players remove @s enemy.miner.skill.prepare 1
execute as @e[type=block_display,tag=miner_chain] run scoreboard players remove @s enemy.miner.skill.chain_life 1

#刪除
execute as @e[type=block_display,tag=miner_chain,scores={enemy.miner.skill.chain_life=..0}] at @s run playsound block.chain.place master @a[distance=..6] ~ ~ ~ 1 2
execute as @e[type=block_display,tag=miner_chain,scores={enemy.miner.skill.chain_life=..0}] at @s run kill @s


