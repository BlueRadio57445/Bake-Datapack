# 執行者是三叉戟(三叉戟)

# 檢查有沒有註冊
execute unless data entity @s item.tag.copy_id run function sanctuary_ench:trident_copy/register_id

# 儲存數量
execute store result score $trident_count sanctuary_ench run data get entity @s item.Count
function sanctuary_ench:trident_copy/get_count with entity @s item.tag

# 裝填&亂丟
execute if score $trident_count sanctuary_ench = $copy_count sanctuary_ench run function sanctuary_ench:trident_copy/reload
execute if score $trident_count sanctuary_ench < $copy_count sanctuary_ench run function sanctuary_ench:trident_copy/_throw

tag @s add trident_copy.checked