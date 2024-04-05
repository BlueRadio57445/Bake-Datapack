execute store result score $length general.utils run data get entity @s SelectedItem.tag.cooldown.length
execute unless score $length general.utils matches 1.. run scoreboard players set $length general.utils 160
scoreboard players operation $targetTime general.utils = $gametime general.utils
scoreboard players operation $targetTime general.utils += $length general.utils
execute store result storage general:utils Cooldown.Item.length int 1 run scoreboard players get $length general.utils
execute store result storage general:utils Cooldown.Item.target_time int 1 run scoreboard players get $targetTime general.utils
item modify entity @s weapon.mainhand general:utils/cooldown_item_start
