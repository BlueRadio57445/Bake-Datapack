execute on origin at @s run function sanctuary_ench:trident_copy/cast
execute store result score $update_count sanctuary_ench run scoreboard players operation $copy_count sanctuary_ench -= $trident_count sanctuary_ench
function sanctuary_ench:trident_copy/update_count with entity @s Item.tag
kill @s
