# system/reviving
execute as @e[type=#minecraft:mobs,tag=enemy.reviving,tag=!enemy.reviving.set] at @s run function enemy:endsky/reviving/set
execute as @e[type=minecraft:marker,tag=enemy.reviving.core,predicate=!enemy:endsky/reviving/base] run function general:utils/kill_below
execute if entity @e[type=minecraft:marker,scores={enemy.reviving.type=0}] run function enemy:endsky/reviving/tick_0
execute if entity @e[type=minecraft:marker,scores={enemy.reviving.type=1}] run function enemy:endsky/reviving/tick_1
execute as @e[type=minecraft:marker,scores={enemy.reviving.timer=0}] run function enemy:endsky/reviving/revive with entity @s data
scoreboard players remove @e[type=minecraft:marker,scores={enemy.reviving.timer=1..}] enemy.reviving.timer 1
