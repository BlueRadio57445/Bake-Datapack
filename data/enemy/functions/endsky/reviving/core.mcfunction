# executed by and at marker
execute if predicate enemy:out_of_world run kill @s
execute if predicate enemy:out_of_world run return 0

tag @s remove enemy.no_exp
tag @s add enemy.reviving.core
summon minecraft:item ~ ~ ~ {Tags:["enemy.reviving","enemy.reviving.base","enemy.reviving.new"],PickupDelay:-1s,Item:{id:"minecraft:structure_void",tag:{CustomModelData:0},Count:1b}}
summon minecraft:interaction ~ ~ ~ {Tags:["enemy.reviving","enemy.reviving.hitbox","enemy.reviving.new"]}
ride @e[limit=1,type=minecraft:interaction,tag=enemy.reviving.new] mount @e[limit=1,type=minecraft:item,tag=enemy.reviving.new]
ride @s mount @e[limit=1,type=minecraft:interaction,tag=enemy.reviving.new]
tag @e[tag=enemy.reviving.new] remove enemy.reviving.new

scoreboard players set @s enemy.reviving.timer 100
scoreboard players set @s enemy.reviving.type 0
execute if data entity @s data.entity{IsBaby:1b} run scoreboard players set @s enemy.reviving.type 1

execute as @s[scores={enemy.reviving.type=0}] on vehicle run data merge entity @s {width:0.6f,height:0.6f}
execute as @s[scores={enemy.reviving.type=1}] on vehicle run data merge entity @s {width:0.3f,height:0.3f}
