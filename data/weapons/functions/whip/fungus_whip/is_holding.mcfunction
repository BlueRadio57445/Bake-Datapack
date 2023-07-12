execute store success score $is_holding weapons as @e[type=fishing_bobber] on origin if predicate weapons:whip/select_fungus_whip
execute if score $is_holding weapons matches 1 at @s positioned ~-0.5 ~ ~-0.5 run function weapons:whip/fungus_whip/cast
execute if score $is_holding weapons matches 1 at @s if predicate weapons:whip/stop run kill @s







