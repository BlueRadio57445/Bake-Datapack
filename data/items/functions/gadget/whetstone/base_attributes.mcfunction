execute if score $hand items.whetstone matches 1 run data modify storage items:whetstone temp set from entity @s Inventory[{Slot:-106b}].id
execute if score $hand items.whetstone matches -1 run data modify storage items:whetstone temp set from entity @s SelectedItem.id
execute if data storage items:whetstone {temp:"minecraft:wooden_sword"} run data modify storage items:whetstone Attribute set value {damage:3.0d,speed:-2.4d}
execute if data storage items:whetstone {temp:"minecraft:stone_sword"} run data modify storage items:whetstone Attribute set value {damage:4.0d,speed:-2.4d}
execute if data storage items:whetstone {temp:"minecraft:iron_sword"} run data modify storage items:whetstone Attribute set value {damage:5.0d,speed:-2.4d}
execute if data storage items:whetstone {temp:"minecraft:golden_sword"} run data modify storage items:whetstone Attribute set value {damage:3.0d,speed:-2.4d}
execute if data storage items:whetstone {temp:"minecraft:diamond_sword"} run data modify storage items:whetstone Attribute set value {damage:6.0d,speed:-2.4d}
execute if data storage items:whetstone {temp:"minecraft:netherite_sword"} run data modify storage items:whetstone Attribute set value {damage:7.0d,speed:-2.4d}
execute if data storage items:whetstone {temp:"minecraft:wooden_axe"} run data modify storage items:whetstone Attribute set value {damage:6.0d,speed:-3.2d}
execute if data storage items:whetstone {temp:"minecraft:stone_axe"} run data modify storage items:whetstone Attribute set value {damage:8.0d,speed:-3.2d}
execute if data storage items:whetstone {temp:"minecraft:iron_axe"} run data modify storage items:whetstone Attribute set value {damage:8.0d,speed:-3.1d}
execute if data storage items:whetstone {temp:"minecraft:golden_axe"} run data modify storage items:whetstone Attribute set value {damage:6.0d,speed:-3.0d}
execute if data storage items:whetstone {temp:"minecraft:diamond_axe"} run data modify storage items:whetstone Attribute set value {damage:8.0d,speed:-3.0d}
execute if data storage items:whetstone {temp:"minecraft:netherite_axe"} run data modify storage items:whetstone Attribute set value {damage:9.0d,speed:-3.0d}
execute if data storage items:whetstone {temp:"minecraft:wooden_hoe"} run data modify storage items:whetstone Attribute set value {damage:0.0d,speed:-3.0d}
execute if data storage items:whetstone {temp:"minecraft:stone_hoe"} run data modify storage items:whetstone Attribute set value {damage:0.0d,speed:-2.0d}
execute if data storage items:whetstone {temp:"minecraft:iron_hoe"} run data modify storage items:whetstone Attribute set value {damage:0.0d,speed:-1.0d}
execute if data storage items:whetstone {temp:"minecraft:golden_hoe"} run data modify storage items:whetstone Attribute set value {damage:0.0d,speed:-3.0d}
execute if data storage items:whetstone {temp:"minecraft:diamond_hoe"} run data modify storage items:whetstone Attribute set value {damage:0.0d,speed:0.0d}
execute if data storage items:whetstone {temp:"minecraft:netherite_hoe"} run data modify storage items:whetstone Attribute set value {damage:0.0d,speed:0.0d}
execute if data storage items:whetstone {temp:"minecraft:trident"} run data modify storage items:whetstone Attribute set value {damage:8.0d,speed:-2.9d}
execute store result score $damage items.whetstone run data get storage items:whetstone Attribute.damage 100
execute store result score $speed items.whetstone run data get storage items:whetstone Attribute.speed 100
execute if score $hand items.whetstone matches 1 run item modify entity @s weapon.offhand items:gadget/whetstone/base_attributes
execute if score $hand items.whetstone matches -1 run item modify entity @s weapon.mainhand items:gadget/whetstone/base_attributes
