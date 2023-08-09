# 檢查玩家拿的鞭子是哪一把

scoreboard players reset $is_selected weapons
execute store result score $is_selected weapons on origin if predicate weapons:whip/poison_whip/selected
execute if score $is_selected weapons matches 1 run function weapons:whip/poison_whip/cast
