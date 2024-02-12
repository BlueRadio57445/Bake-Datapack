data merge entity @s {Tags:["general.on_hit","enemy.death_detect"],data:{command:"kill @s"}}
data modify entity @s data.on_hit set from storage general:utils Item.tag.on_hit
ride @s mount @e[limit=1,sort=nearest,type=#minecraft:projectiles,tag=general.this]
