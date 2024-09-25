scoreboard players operation @s weapons.use_health = $self weapons.use_health
scoreboard players set $temp weapons 0
data modify storage weapons:sword blood_sword set value {damage:0}
data modify storage weapons:sword blood_sword.damage set from entity @s SelectedItem.components."minecraft:attribute_modifiers".modifiers[{id:"weapons:blood_sword"}].amount
execute if score $self weapons.use_health matches 100 store success score $temp weapons run data modify storage weapons:sword blood_sword.damage set value 0.0d
execute if score $self weapons.use_health matches 80..99 store success score $temp weapons run data modify storage weapons:sword blood_sword.damage set value 1.5d
execute if score $self weapons.use_health matches 50..79 store success score $temp weapons run data modify storage weapons:sword blood_sword.damage set value 2.0d
execute if score $self weapons.use_health matches 30..49 store success score $temp weapons run data modify storage weapons:sword blood_sword.damage set value 3.0d
execute if score $self weapons.use_health matches 0..29 store success score $temp weapons run data modify storage weapons:sword blood_sword.damage set value 4.0d
execute if score $temp weapons matches 0 run return 0

data remove block 0 16 0 Items[]
item replace block 0 16 0 container.0 from entity @s weapon.mainhand
data modify block 0 16 0 Items[0].components."minecraft:attribute_modifiers".modifiers[{id:"weapons:blood_sword"}].amount set from storage weapons:sword blood_sword.damage
data modify block 0 16 0 Items[0].components."minecraft:custom_data".lore_update set value {}
item replace entity @s weapon.mainhand from block 0 16 0 container.0
data remove block 0 16 0 Items[]
