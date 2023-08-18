scoreboard players set $temp weapons.gloves.drop 0
function general:player_data/select
execute at @s as @e[limit=1,type=minecraft:item,distance=0..10,nbt={Item:{tag:{gloves:2b}}}] store result score $temp weapons.gloves.drop run data modify entity @s Item set from storage general:player_data Data[{selected:1b}].storedOffhand
kill @e[type=minecraft:item,nbt={Item:{tag:{gloves:2b}}}]
execute if score $temp weapons.gloves.drop matches 1 run data modify storage general:player_data Data[{selected:1b}].storedOffhand set value {}
scoreboard players set @s weapons.gloves.drop 0
