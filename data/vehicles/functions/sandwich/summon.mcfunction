execute as @s[gamemode=creative] unless data entity @s SelectedItem.tag.sandwich.bag if data entity @s Inventory[{Slot:-106b}].tag.sandwich.bag run item modify entity @s weapon.offhand vehicles:sandwich_bag
execute as @s[gamemode=creative] if data entity @s SelectedItem.tag.sandwich.bag run item modify entity @s weapon.mainhand vehicles:sandwich_bag

execute as @e[type=minecraft:item_frame,tag=vehicles.sandwich_spawner] if data entity @s Item.tag.EntityTag at @s align y run function vehicles:sandwich/release with entity @s Item.tag
execute as @e[limit=1,type=minecraft:donkey,tag=vehicles.sandwich,nbt={ForcedAge:-1}] unless data entity @s Items[{Slot:16b}] run loot replace entity @s horse.14 loot items:gadget/sandwich/bag_opened 
data modify entity @e[limit=1,type=minecraft:donkey,tag=vehicles.sandwich,nbt={ForcedAge:-1}] ForcedAge set value 0
tag @e[tag=vehicles.this] remove vehicles.this
