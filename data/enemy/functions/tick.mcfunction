function enemy:tagvillx/tick
function enemy:endsky/tick


execute as @e[type=axolotl,tag=enemy.elite_axolotl] at @s run function enemy:hunger_cave/elite_axolotl/tick

execute as @e[type=minecraft:marker,tag=enemy.no_exp] on vehicle at @s run kill @e[type=minecraft:experience_orb,distance=0..1,nbt={Age:0s}]
tag @e[tag=enemy.no_exp] remove enemy.no_exp

# 特殊的 marker: 在它騎乘的實體死亡時，會執行 data.command 裡面的指令
execute as @e[type=minecraft:marker,tag=enemy.death_detect,predicate=!enemy:vehicle] run function enemy:system/vehicle_died

execute as @e[type=#object,tag=enemy.decoration,predicate=!enemy:vehicle] run kill @s
execute as @e[type=#object,tag=enemy.decoration.facing] run function enemy:decoration_facing
function enemy:radio/golden_grapes/tick
execute as @e[tag=enemy.crab,type=#mobs] at @s run function enemy:crystal_beach/crab/crab