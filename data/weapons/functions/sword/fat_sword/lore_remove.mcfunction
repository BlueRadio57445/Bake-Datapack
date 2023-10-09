data modify storage weapons:sword fat_sword.temp set value {}
data modify storage weapons:sword fat_sword.temp.text set from storage weapons:sword fat_sword.Lore[-1]
scoreboard players set $temp weapons.sword 0
function weapons:sword/fat_sword/lore_check with storage weapons:sword fat_sword.temp
execute if score $temp weapons.sword matches 0 run data modify storage weapons:sword fat_sword.Temp prepend from storage weapons:sword fat_sword.Lore[-1]
execute if score $temp weapons.sword matches 1 run scoreboard players remove $target weapons.sword 1
data remove storage weapons:sword fat_sword.Lore[-1]
execute if score $target weapons.sword matches 1.. if data storage weapons:sword fat_sword.Lore[] run function weapons:sword/fat_sword/lore_remove
