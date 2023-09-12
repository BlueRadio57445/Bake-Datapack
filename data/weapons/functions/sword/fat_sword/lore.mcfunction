data modify storage weapons:sword fat_sword.Lore set from entity @s SelectedItem.tag.display.Lore
data modify storage weapons:sword fat_sword.Temp set value []
scoreboard players set $target weapons.sword 2
function weapons:sword/fat_sword/lore_remove
data modify storage weapons:sword fat_sword.Lore append from storage weapons:sword fat_sword.Temp[]
