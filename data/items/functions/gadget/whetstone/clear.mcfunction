data remove storage items:whetstone Weapon.tag.sharpened
data remove storage items:whetstone Weapon.tag.AttributeModifiers[{UUID:[I;18688,18688,18688,18688]}]
data remove storage items:whetstone Weapon.tag.AttributeModifiers[{UUID:[I;18689,18689,18689,18689]}]
data remove storage items:whetstone Weapon.tag.AttributeModifiers[{UUID:[I;18690,18690,18690,18690]}]
execute unless data storage items:whetstone Weapon.tag.display.Lore[] run data remove storage items:whetstone Weapon.tag.display.Lore
execute store result score $temp items.whetstone run data get storage items:whetstone Weapon.tag.display
execute if score $temp items.whetstone matches 0 run data remove storage items:whetstone Weapon.tag.display
execute unless data storage items:whetstone Weapon.tag.AttributeModifiers[] run data remove storage items:whetstone Weapon.tag.AttributeModifiers
data modify storage items:whetstone Weapon.Slot set value 0b
data modify block 0 16 0 Items append from storage items:whetstone Weapon
item replace entity @s weapon.mainhand from block 0 16 0 container.0
data modify block 0 16 0 Items set value []
