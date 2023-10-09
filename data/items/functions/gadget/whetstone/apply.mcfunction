scoreboard players set $hand items.whetstone 0
execute if predicate items:gadget/whetstone_mainhand run scoreboard players set $hand items.whetstone 1
execute if predicate items:gadget/whetstone_offhand run scoreboard players set $hand items.whetstone -1

execute if score $hand items.whetstone matches 1 run data modify storage items:whetstone Whetstone set from entity @s SelectedItem
execute if score $hand items.whetstone matches -1 run data modify storage items:whetstone Whetstone set from entity @s Inventory[{Slot:-106b}]

execute store result score $durability.current items.whetstone run data get storage items:whetstone Whetstone.tag.durability.current
execute store result score $durability.max items.whetstone run data get storage items:whetstone Whetstone.tag.durability.max
scoreboard players remove $durability.current items.whetstone 1
execute store result storage items:whetstone Whetstone.tag.durability.current int 1 run scoreboard players get $durability.current items.whetstone

scoreboard players set $modifier items.whetstone 0
scoreboard players set $times items.whetstone 1
execute store result score $modifier items.whetstone run data get storage items:whetstone Whetstone.tag.whetstone.modifier 100
execute store result score $times items.whetstone run data get storage items:whetstone Whetstone.tag.whetstone.times_left
item replace block 0 16 0 container.0 with minecraft:stone 1
item modify block 0 16 0 container.0 items:gadget/whetstone/get_durability
data modify storage items:whetstone LoreDurability set from block 0 16 0 Items[0].tag.display.Name
data modify block 0 16 0 Items set value []

execute if score $hand items.whetstone matches 1 unless data entity @s Inventory[{Slot:-106b}].tag.AttributeModifiers[] run function items:gadget/whetstone/base_attributes with entity @s Inventory[{Slot:-106b}]
execute if score $hand items.whetstone matches -1 unless data entity @s SelectedItem.tag.AttributeModifiers[] run function items:gadget/whetstone/base_attributes with entity @s SelectedItem

execute if score $durability.current items.whetstone matches 1.. if score $hand items.whetstone matches 1 run item modify entity @s weapon.mainhand items:gadget/whetstone/duribility
execute if score $durability.current items.whetstone matches 1.. if score $hand items.whetstone matches -1 run item modify entity @s weapon.offhand items:gadget/whetstone/duribility
execute if score $durability.current items.whetstone matches 0 if score $hand items.whetstone matches 1 run item replace entity @s weapon.mainhand with minecraft:air
execute if score $durability.current items.whetstone matches 0 if score $hand items.whetstone matches -1 run item replace entity @s weapon.offhand with minecraft:air
execute if score $durability.current items.whetstone matches 0 run playsound minecraft:entity.item.break player @s ~ ~ ~ 1 1
execute if score $hand items.whetstone matches 1 run item modify entity @s weapon.offhand items:gadget/whetstone/apply
execute if score $hand items.whetstone matches -1 run item modify entity @s weapon.mainhand items:gadget/whetstone/apply
