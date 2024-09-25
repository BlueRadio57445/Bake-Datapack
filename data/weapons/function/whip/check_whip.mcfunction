# 檢查玩家拿的鞭子是哪一把

# 加一個很方便的標籤給玩家
execute on origin run tag @s add origin
# 勾住多久的時間
scoreboard players add @s weapons.whip.time 1

scoreboard players reset $is_selected weapons
execute store result score $is_selected weapons on origin if predicate weapons:whip/poison_whip/selected
execute if score $is_selected weapons matches 1 run function weapons:whip/poison_whip/cast

scoreboard players reset $is_selected weapons
execute store result score $is_selected weapons on origin if predicate weapons:whip/wither_whip/selected
execute if score $is_selected weapons matches 1 run function weapons:whip/wither_whip/cast

scoreboard players reset $is_selected weapons
execute store result score $is_selected weapons on origin if predicate weapons:whip/fungus_whip/selected
execute if score $is_selected weapons matches 1 run function weapons:whip/fungus_whip/cast

execute on origin run tag @s remove origin
kill @s[tag=whip.kill]