$execute on vehicle on vehicle at @s run summon $(id) ~ ~ ~ $(entity)
execute on vehicle run function general:utils/kill_below
ride @s mount @e[limit=1,type=#minecraft:mobs,tag=enemy.reviving,tag=enemy.this]
tag @e[tag=enemy.reviving,tag=enemy.this] add enemy.reviving.set
tag @e[tag=enemy.this] remove enemy.this
tag @s add enemy.death_detect
tag @s remove enemy.reviving.core
scoreboard players reset @s enemy.reviving.type
scoreboard players reset @s enemy.reviving.timer
