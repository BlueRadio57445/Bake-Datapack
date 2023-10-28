# 執行者是物品(三叉戟)

# 檢查有沒有註冊
execute unless data entity @s Item.tag.copy_id run function sanctuary_ench:trident_copy/register_id

# 儲存數量
execute store result score $trident_count sanctuary_ench run data get entity @s Item.Count
function sanctuary_ench:trident_copy/get_count with entity @s Item.tag

# 開火
execute if score $trident_count sanctuary_ench < $copy_count sanctuary_ench run function sanctuary_ench:trident_copy/_drop

tag @s add trident_copy.checked