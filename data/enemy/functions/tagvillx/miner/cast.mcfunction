#summon block_display ~-0.5 ~-0.5 ~-0.5 {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:chain",Properties:{axis:"x"}},transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}],Tags:["miner_chain",new]}
summon area_effect_cloud ^ ^ ^ {Duration:2147483647,Tags:["miner_chain_tp","new"]}
data modify entity @e[tag=miner_chain_tp,tag=new,limit=1] Owner set from entity @s UUID
scoreboard players set @e[tag=miner_chain_tp,tag=new] enemy.miner.skill.chain_delay 0
execute at @s run tp @e[tag=miner_chain_tp,tag=new] ~ ~1 ~ ~ ~ 
execute at @e[tag=miner_chain_tp,tag=new] rotated as @s run tp @e[tag=miner_chain_tp,tag=new] ~ ~ ~ ~ ~
scoreboard players operation @s enemy.miner.skill.move_to_chain.id = $index enemy.miner.skill.move_to_chain.id
scoreboard players operation @e[tag=miner_chain_tp,tag=new] enemy.miner.skill.move_to_chain.id = @s enemy.miner.skill.move_to_chain.id
scoreboard players add $index enemy.miner.skill.move_to_chain.id 1


tag @e[tag=miner_chain_tp,tag=new] remove new



