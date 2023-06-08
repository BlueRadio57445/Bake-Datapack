# 弩是主要拳套，箭矢是次要拳套
scoreboard players set @a weapons.gloves.holding 0

# 如果主手有主要拳套，且有丟棄箭矢的紀錄 ---> 轉換附近的次要拳套
execute as @a[scores={weapons.gloves.drop=1..},predicate=weapons:gloves/hold_main_gloves] run function weapons:gloves/dropped_off_gloves

# 如果主要次要拳套都在對的位置 ---> 檢查是否更新次要拳套的材質
execute as @a[predicate=weapons:gloves/hold_main_gloves,predicate=weapons:gloves/hold_off_gloves] run function weapons:gloves/check_slots

# 如果主手有主要拳套，副手卻沒有次要拳套 ---> 儲存原本的副手物品，給予次要拳套
execute as @a[predicate=weapons:gloves/hold_main_gloves,predicate=!weapons:gloves/hold_off_gloves] run function weapons:gloves/return_off_gloves

# 如果副手有次要拳套，但主手沒有拳套 ---> 把原本的副手物品還回來
execute as @a[predicate=weapons:gloves/hold_off_gloves,predicate=!weapons:gloves/hold_main_gloves] run function weapons:gloves/return_offhand1

# 如果次要拳套反而拿到主手了 ---> 把副手物品還回來，回到主手
execute as @a[predicate=weapons:gloves/mainhand_hold_off_gloves] run function weapons:gloves/return_offhand2
