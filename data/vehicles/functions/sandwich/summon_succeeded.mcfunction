execute as @e[limit=1,type=minecraft:donkey,tag=vehicles.sandwich,nbt={ForcedAge:-1}] unless data entity @s Items[{Slot:16b}] run loot replace entity @s horse.14 loot items:gadget/sandwich/bag_opened 
data modify entity @e[limit=1,type=minecraft:donkey,tag=vehicles.sandwich,nbt={ForcedAge:-1}] ForcedAge set value 0
