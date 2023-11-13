tag @e[tag=enemy.this] remove enemy.this
tag @s add enemy.this
summon minecraft:item_display ~ ~ ~ {Tags:["enemy.reviving.why"]}
ride @s mount @e[limit=1,type=minecraft:item_display,tag=enemy.reviving.why]
execute summon minecraft:marker run function enemy:endsky/reviving/marker
data modify entity @s DeathLootTable set value ""
ride @s dismount
kill @e[type=minecraft:item_display,tag=enemy.reviving.why]
tag @s add enemy.reviving.set
tag @s remove enemy.this
