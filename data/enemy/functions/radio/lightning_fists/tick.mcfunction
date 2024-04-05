loot replace entity @e[type=#mobs, tag=new, tag=enemy.lightning_fists] weapon.mainhand loot weapons:gloves/lightning_gloves
tag @e[type=#mobs, tag=new, tag=enemy.lightning_fists] remove new
execute as @e[type=#arrows] on origin if entity @s[tag=enemy.lightning_fists] run scoreboard players set @s weapons.gloves.lightning_duration 20
execute as @e[type=#arrows] at @s on origin if entity @s[tag=enemy.lightning_fists] run kill @e[sort=nearest,limit=1,type=#arrows]