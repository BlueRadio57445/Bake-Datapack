execute on origin at @s run particle smoke ~ ~ ~ 1 1 1 0 100
playsound entity.elder_guardian.curse master @a[dx=0,dy=0,dz=0] ~ ~ ~ 100 1
particle smoke ^ ^ ^-.5 .5 .5 .5 .1 100
playsound minecraft:block.anvil.land master @a[distance=..6] ~ ~ ~ 100 1.5
damage @a[dx=0,dy=0,dz=0,limit=1] 4 arrow by @s from @e[tag=miner,limit=1]
effect give @a[dx=0,dy=0,dz=0,limit=1] slowness 2 3 true
effect give @a[dx=0,dy=0,dz=0,limit=1] weakness 3 0 true
effect give @a[dx=0,dy=0,dz=0,limit=1] mining_fatigue 3 0 true
scoreboard players operation @e[tag=miner_tp_tag,tag=new] enemy.miner.skill.move_to_chain.id = @s enemy.miner.skill.move_to_chain.id
execute on origin store result score $store enemy.miner.skill.move_to_chain.id run scoreboard players get @s enemy.miner.skill.move_to_chain.id
execute on origin run effect give @s strength 5 0 true
execute on origin run data modify entity @s Pos set from entity @a[dx=0,dy=0,dz=0,limit=1] Pos
execute on origin at @s run particle campfire_cosy_smoke ~ ~ ~ 1 1 1 0 50

kill @s




