# 執行者、執行位置是怪物
summon area_effect_cloud ^ ^ ^ {Duration:40,Tags:["miner_chain_hook","new"]}
data modify entity @e[tag=miner_chain_hook,tag=new,limit=1] Owner set from entity @s UUID
execute at @s run tp @e[tag=miner_chain_hook,tag=new] ^ ^ ^ ~ ~ 

tag @e[tag=miner_chain_hook,tag=new] remove new



