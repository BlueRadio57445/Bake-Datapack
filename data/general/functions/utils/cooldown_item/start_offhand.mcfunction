execute store result score $length general.utils run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".cooldown.length
execute unless score $length general.utils matches 1.. run scoreboard players set $length general.utils 160
scoreboard players operation $targetTime general.utils = $gametime general.utils
scoreboard players operation $targetTime general.utils += $length general.utils
execute store result storage general:utils Cooldown.Item.length int 1 run scoreboard players get $length general.utils
execute store result storage general:utils Cooldown.Item.target_time int 1 run scoreboard players get $targetTime general.utils
data modify storage general:utils Cooldiwn.slot set value "weapon.offhand"
function general:utils/cooldown_item/start_modify with storage general:utils Cooldown
