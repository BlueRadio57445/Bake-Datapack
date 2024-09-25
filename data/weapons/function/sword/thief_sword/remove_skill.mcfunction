data modify storage weapons:sword thief_sword.damage set value 0.0d

data remove block 0 16 0 Items[]
execute unless score $slot actionbar.cooldown matches -1 run item replace block 0 16 0 container.0 from entity @s weapon.mainhand
execute if score $slot actionbar.cooldown matches -1 run item replace block 0 16 0 container.0 from entity @s weapon.offhand
data modify block 0 16 0 Items[0].components."minecraft:attribute_modifiers".modifiers[{id:"weapons:thief_sword"}].amount set value 0.0d
data modify block 0 16 0 Items[0].components."minecraft:custom_data".thief_sword.used_skill set value 0b
data modify block 0 16 0 Items[0].components."minecraft:custom_data".lore_update set value {}
item modify block 0 16 0 container.0 general:utils/can_use
execute unless score $slot actionbar.cooldown matches -1 run item replace entity @s weapon.mainhand from block 0 16 0 container.0
execute if score $slot actionbar.cooldown matches -1 run item replace entity @s weapon.offhand from block 0 16 0 container.0
data remove block 0 16 0 Items[]

playsound block.grindstone.use master @s ~ ~ ~ 1 0
