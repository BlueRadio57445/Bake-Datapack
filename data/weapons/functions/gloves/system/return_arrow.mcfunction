#declare tag weapons.gloves.arrow_return

advancement revoke @s only weapons:gloves/off_hand_charge

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["weapons.gloves.arrow_return"]}
data modify entity @e[limit=1,type=minecraft:item,tag=weapons.gloves.arrow_return] Owner set from entity @s UUID
data modify entity @e[limit=1,type=minecraft:item,tag=weapons.gloves.arrow_return] Item merge from entity @s Inventory[{Slot:-106b}].tag.ChargedProjectiles[0]
tag @e[limit=1,type=minecraft:item,tag=weapons.gloves.arrow_return] remove weapons.gloves.arrow_return
item modify entity @s weapon.offhand weapons:gloves/update_loaded
