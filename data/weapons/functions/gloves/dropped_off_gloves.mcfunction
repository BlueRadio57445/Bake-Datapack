scoreboard players set $temp weapons.gloves.drop 0
execute at @s as @e[type=minecraft:item,nbt={Item:{tag:{gloves:2b}}}] store result score $temp weapons.gloves.drop run data modify entity @s Item set from entity @s Item.tag.offhand
kill @e[type=minecraft:item,nbt={Item:{tag:{gloves:2b}}}]
execute if score $temp weapons.gloves.drop matches 1 if predicate weapons:gloves/hold_off_gloves_single run item replace entity @s weapon.offhand with air
scoreboard players set @s weapons.gloves.drop 0
