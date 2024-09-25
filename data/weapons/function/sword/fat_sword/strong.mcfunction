data remove block 0 16 0 Items[]
item replace block 0 16 0 container.0 from entity @s weapon.mainhand
data modify block 0 16 0 Items[0].components."minecraft:attribute_modifiers".modifiers[{id:"weapons:fat_sword"}].amount set from storage weapons:sword fat_sword.amount[0]
data modify block 0 16 0 Items[0].components."minecraft:custom_model_data" set value 3000
data modify block 0 16 0 Items[0].components."minecraft:custom_data".lore_update set value {}
item replace entity @s weapon.mainhand from block 0 16 0 container.0
