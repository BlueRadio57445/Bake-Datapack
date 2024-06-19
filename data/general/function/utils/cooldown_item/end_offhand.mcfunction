data modify storage general:utils Cooldown.Empty set value {mode:"empty",length:0}
execute if data entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".cooldown.command run function general:utils/execute with entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".cooldown
execute unless data entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".cooldown.end_command run data modify storage general:utils Cooldown.Empty.end_command set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".cooldown.command
data modify storage general:utils Cooldown.Empty.length set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".cooldown.length
item modify entity @s weapon.offhand {function:"minecraft:copy_custom_data",source:{type:"storage",source:"general:utils"},ops:[{source:"Cooldown.Empty",target:"cooldown",op:"replace"}]}
