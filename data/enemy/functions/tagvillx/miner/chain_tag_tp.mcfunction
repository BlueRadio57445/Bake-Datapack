tp @s ^ ^ ^1
scoreboard players set @s enemy.miner.skill.chain_delay 1
summon block_display ~-0.5 ~-0.5 ~-0.5 {block_state:{Name:"minecraft:chain",Properties:{axis:"x"}},transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["miner_chain","new"]}
execute rotated as @s as @e[tag=miner_chain,tag=new] positioned as @s run tp @s ~ ~ ~ ~90 ~
scoreboard players set @e[tag=miner_chain,tag=new] enemy.miner.skill.chain_life 15

tag @e[tag=miner_chain,tag=new] remove new
playsound minecraft:block.chain.place master @a[distance=..15] ~ ~ ~ 100 1





