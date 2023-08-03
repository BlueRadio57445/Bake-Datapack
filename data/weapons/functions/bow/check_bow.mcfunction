# 檢查玩家拿的弓是哪一把

# early return，如果不是用弓射出來的箭矢，直接免談!(弩可能會射出箭矢)
execute on origin unless score @s weapons.bow.shoot matches 1.. run return 0

scoreboard players reset $is_selected weapons
execute store success score $is_selected weapons on origin if predicate weapons:bow/selected_main
execute if score $is_selected weapons matches 1 run function weapons:bow/check_mainhand

scoreboard players reset $is_selected weapons
execute store success score $is_selected weapons on origin unless predicate weapons:bow/selected_main if predicate weapons:bow/selected_off
execute if score $is_selected weapons matches 1 run function weapons:bow/check_offhand

execute on origin run scoreboard players reset @s weapons.bow.shoot