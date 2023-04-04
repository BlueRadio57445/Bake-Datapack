scoreboard players set @s weapons.gloves.holding 0

# 將當前副手的物品或次要拳套儲存的物品資料複製到暫存storage 
data remove storage gloves offhand
data modify storage gloves offhand set from entity @s Inventory[{Slot:-106b}].tag.offhand
execute unless predicate weapons:gloves/hold_off_gloves run data modify storage gloves offhand set from entity @s Inventory[{Slot:-106b}]
data modify storage gloves offhand.Slot set value 0b

# 偵測除副手外的次要拳套，若其中存有物品資料即歸還副手物品(以掉落物形式)
item replace entity @s weapon.offhand with air
data remove storage gloves return
data modify storage gloves return set from entity @s Inventory[{id:"minecraft:arrow",tag:{gloves:2b}}].tag.offhand
execute store result score $temp weapons.gloves.holding run clear @s arrow{gloves:2b}
execute if score $temp weapons.gloves.holding matches 2.. if data storage gloves return run function weapons:gloves/return_offhand3

# 將副手替換回次要拳套並存入storage中的物品資料
item replace entity @s weapon.offhand with arrow{gloves:2b} 2
item modify entity @s weapon.offhand weapons:gloves/copy_offhand
scoreboard players set @s weapons.gloves.holding 1

advancement revoke @s only weapons:gloves/off_gloves_moved
