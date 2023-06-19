effect give @s resistance 1 4 true

scoreboard players operation $search knowledge.id = @s general.id
execute as @e[type=item_display,tag=earth_shield] if score @s knowledge.id = $search knowledge.id run tag @s add this
execute as @e[type=item_display,tag=this] rotated as @s run tp @s ~ ~ ~ ~3 ~
tag @e[tag=this] remove this