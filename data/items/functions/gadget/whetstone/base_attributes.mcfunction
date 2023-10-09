$data modify storage items:whetstone Attribute set from storage items:whetstone BaseAttributes[{id:"$(id)"}]
execute store result score $damage items.whetstone run data get storage items:whetstone Attribute.damage 100
execute store result score $speed items.whetstone run data get storage items:whetstone Attribute.speed 100
execute if score $hand items.whetstone matches 1 run item modify entity @s weapon.offhand items:gadget/whetstone/base_attributes
execute if score $hand items.whetstone matches -1 run item modify entity @s weapon.mainhand items:gadget/whetstone/base_attributes
