# 檢查玩家的主手是哪把弓

scoreboard players reset $is_selected weapons
execute store success score $is_selected weapons on origin if predicate weapons:bow/sacred_bow/selected_main
execute if score $is_selected weapons matches 1 run function weapons:bow/sacred_bow/cast