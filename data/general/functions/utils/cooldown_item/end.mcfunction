execute unless score $slot actionbar.cooldown matches -1 run data modify storage general:utils Cooldown.Empty.length set from entity @s SelectedItem.tag.cooldown.length
execute if score $slot actionbar.cooldown matches -1 run data modify storage general:utils Cooldown.Empty.length set from entity @s Inventory[{Slot:-106b}].tag.cooldown.length
execute unless score $slot actionbar.cooldown matches -1 run data modify storage general:utils Cooldown.slot set value "weapon.mainhand"
execute if score $slot actionbar.cooldown matches -1 run data modify storage general:utils Cooldown.slot set value "weapon.offhand"
function general:utils/cooldown_item/end_modify with storage general:utils Cooldown
