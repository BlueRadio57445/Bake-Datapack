# 檢查玩家的副手是哪把弓

scoreboard players reset $is_selected weapons
execute store success score $is_selected weapons on origin if predicate weapons:bow/sacred_bow/selected_off
execute if score $is_selected weapons matches 1 run function weapons:bow/sacred_bow/cast

scoreboard players reset $is_selected weapons
execute store success score $is_selected weapons on origin if predicate weapons:bow/light_bow/selected_off
execute if score $is_selected weapons matches 1 run tag @s add arrow.light_bow