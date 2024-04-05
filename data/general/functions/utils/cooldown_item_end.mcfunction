execute unless score $slot actionbar.cooldown matches -1 run data modify storage general:utils Cooldown.Empty.length set from entity @s SelectedItem.tag.cooldown.length
execute if score $slot actionbar.cooldown matches -1 run data modify storage general:utils Cooldown.Empty.length set from entity @s Inventory[{Slot:-106b}].tag.cooldown.length
execute unless score $slot actionbar.cooldown matches -1 run item modify entity @s weapon.mainhand general:utils/cooldown_item_end
execute if score $slot actionbar.cooldown matches -1 run item modify entity @s weapon.offhand general:utils/cooldown_item_end
