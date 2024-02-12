# 執行者是叉在地板上的三叉戟
# 這是裝彈的意思
data modify entity @s item.Count set value 10b
scoreboard players set $update_count sanctuary_ench 10
function sanctuary_ench:trident_copy/update_count with entity @s item.tag