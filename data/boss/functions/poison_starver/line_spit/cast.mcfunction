summon item_display ~ ~ ~ {Tags:["new","poison_starver.line_spit"],teleport_duration:1,item:{id:"moss_block",Count:1b}}
execute as @e[tag=new] run tp @s ~ ~0.5 ~ ~ 0
scoreboard players set @e[tag=new] general.object.duration 50
tag @e[tag=new] remove new