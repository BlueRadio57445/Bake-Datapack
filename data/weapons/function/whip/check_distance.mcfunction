# 檢查鞭子末端與玩家的距離

# 加一個很方便的標籤給玩家
execute on origin run tag @s add origin
# 勾住多久的時間
execute store result score $is_whip weapons on origin if predicate weapons:whip/selected

execute if score $is_whip weapons matches 1 at @s unless entity @a[tag=origin,distance=..15] run tag @s add whip.kill

execute on origin run tag @s remove origin
kill @s[tag=whip.kill]