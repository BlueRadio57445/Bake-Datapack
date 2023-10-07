execute as @e[tag=miner,scores={enemy.miner.skill.cd=0}] at @s run function enemy:tagvillx/miner/prepar
execute as @e[tag=miner_chain_tp] at @s unless entity @e[tag=miner,distance=..30] run kill @s
#技能預備

execute as @e[tag=miner,scores={enemy.miner.skill.prepar=5..}] at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
#技能發動
execute as @e[tag=miner,scores={enemy.miner.skill.prepar=1}] at @s anchored eyes run function enemy:tagvillx/miner/cast
execute as @e[tag=miner_chain_tp] at @s anchored eyes if block ^ ^ ^0.5 air if entity @a[distance=..15] if score @s enemy.miner.skill.chain_delay matches 0 positioned ~-.5 ~ ~-.5 unless entity @a[dx=0,dy=0,dz=0] positioned ~.5 ~ ~.5 run function enemy:tagvillx/miner/chain_tag_tp
execute as @e[tag=miner_chain_tp] at @s anchored eyes unless block ^ ^ ^0.5 air run function enemy:tagvillx/miner/hit_wall
execute as @e[tag=miner_chain_tp] at @s positioned ~-.5 ~ ~-.5 if entity @a[dx=0,dy=0,dz=0] run function enemy:tagvillx/miner/hit_player



#記分板扣分
execute as @e[tag=miner,scores={enemy.miner.skill.cd=1..}] run scoreboard players remove @s enemy.miner.skill.cd 1
execute as @e[tag=miner,scores={enemy.miner.skill.prepar=1..}] run scoreboard players remove @s enemy.miner.skill.prepar 1
execute as @e[tag=miner_chain_tp,scores={enemy.miner.skill.chain_delay=1..}] run scoreboard players remove @s enemy.miner.skill.chain_delay 1
execute as @e[tag=miner_chain] run scoreboard players remove @s enemy.miner.skill.chain_life 1

#刪除
execute as @e[tag=miner_chain,scores={enemy.miner.skill.chain_life=..0}] at @s run playsound block.chain.place master @a[distance=..6] ~ ~ ~ 1 2
execute as @e[tag=miner_chain,scores={enemy.miner.skill.chain_life=..0}] at @s run kill @s

#execute as @e[tag=miner_chain_tp] at @s run particle happy_villager ^ ^ ^ 0 0 0 0 10
#execute as @e[tag=miner_chain_tp] at @s run particle happy_villager ^ ^ ^2 0 0 0 0 10

#移動
#execute as @e[tag=miner] at @s facing entity @e[tag=miner_tp_tag,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.8


