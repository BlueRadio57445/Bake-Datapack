# 執行者是三叉戟(三叉戟)

# 創造模式不能丟
execute on origin if entity @s[gamemode=creative] run tellraw @s {"text":"警告：創造模式不能丟增生三叉戟","color": "red"}
scoreboard players reset $is_creative sanctuary_ench
execute store result score $is_creative sanctuary_ench on origin if entity @s[gamemode=creative]
execute if score $is_creative sanctuary_ench matches 1 run kill @s
execute on origin if entity @s[gamemode=creative] run return fail

# 檢查有沒有註冊
execute unless data entity @s item.tag.copy_id run function sanctuary_ench:trident_copy/register_id

# 儲存數量
execute store result score $trident_count sanctuary_ench run data get entity @s item.Count
function sanctuary_ench:trident_copy/get_count with entity @s item.tag

# 裝填&亂丟
execute if score $trident_count sanctuary_ench = $copy_count sanctuary_ench run function sanctuary_ench:trident_copy/reload
execute if score $trident_count sanctuary_ench < $copy_count sanctuary_ench run function sanctuary_ench:trident_copy/_throw

tag @s add trident_copy.checked