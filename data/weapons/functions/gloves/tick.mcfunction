# 弩是主要拳套，箭矢是次要拳套

# 如果主手有主要拳套，副手卻沒有次要拳套 ---> 儲存原本的副手物品，給予次要拳套
execute as @a if predicate weapons:gloves/hold_main_gloves unless predicate weapons:gloves/hold_off_gloves run function weapons:gloves/store_offhand

# 如果副手有次要拳套，但主手沒有拳套 ---> 把原本的副手物品還回來
execute as @a if predicate weapons:gloves/hold_off_gloves unless predicate weapons:gloves/hold_main_gloves run function weapons:gloves/return_offhand1

# 如果雙手都有拳套 ---> 把次要拳套的數量變成兩個 (不然射出去，原本的副手物品就沒了)
execute as @a if predicate weapons:gloves/hold_main_gloves if predicate weapons:gloves/hold_off_gloves run function weapons:gloves/update_count

# 如果次要拳套反而拿到主手了 ---> 把副手物品還回來，回到主手
execute as @a if predicate weapons:gloves/mainhand_hold_off_gloves run function weapons:gloves/return_offhand2