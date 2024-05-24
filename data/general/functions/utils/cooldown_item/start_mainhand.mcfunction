data modify storage general:utils Cooldown.Item set value {mode:"item",length:0,target_time:0}
data modify storage general:utils Cooldown.Item.command set from entity @s SelectedItem.components."minecraft:custom_data".cooldown.end_command
data modify storage general:utils Cooldown.Item.end_command set from entity @s SelectedItem.components."minecraft:custom_data".cooldown.end_command
execute store result score $length general.utils run data get entity @s SelectedItem.components."minecraft:custom_data".cooldown.length
execute unless score $length general.utils matches 1.. run scoreboard players set $length general.utils 160
scoreboard players operation $targetTime general.utils = $gametime general.utils
scoreboard players operation $targetTime general.utils += $length general.utils
execute store result storage general:utils Cooldown.Item.length int 1 run scoreboard players get $length general.utils
execute store result storage general:utils Cooldown.Item.target_time int 1 run scoreboard players get $targetTime general.utils
item modify entity @s weapon.mainhand {function:"minecraft:copy_custom_data",source:{type:"storage",source:"general:utils"},ops:[{source:"Cooldown.Item",target:"cooldown",op:"replace"}]}
