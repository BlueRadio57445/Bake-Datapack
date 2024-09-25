data modify storage weapons:gloves temp set value [{id:"minecraft:air",count:1,Slot:0b}]
data modify storage weapons:gloves temp[0] merge from entity @s Inventory[{Slot:-106b}].components.minecraft:charged_projectiles[0]
data modify block 0 16 0 Items set from storage weapons:gloves temp
loot give @s mine 0 16 0 minecraft:netherite_pickaxe[minecraft:custom_data={drop_contents:{}}]
item modify entity @s weapon.offhand weapons:gloves/discharged
advancement revoke @s only weapons:gloves/system/off_hand_charged
