scoreboard players operation $temp mobs.id = @s mobs.id
execute as @e[tag=mobs.origin] if score @s mobs.id = $temp mobs.id run tag @s add mobs.this
execute at @e[limit=1,tag=mobs.this] run tp @s ~ ~1.501 ~
execute on passengers run data modify entity @s Rotation set from entity @e[limit=1,tag=mobs.this] Rotation
execute unless entity @e[tag=mobs.this] run function mobs:entity_follow/kill
tag @e[tag=mobs.this] remove mobs.this
