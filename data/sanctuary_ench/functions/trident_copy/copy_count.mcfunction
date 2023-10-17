execute store result score $trident_copy.player_1 sanctuary_ench run data get entity @s SelectedItem.Count
execute store result score $trident_copy.player_2 sanctuary_ench run data get entity @s SelectedItem.tag.copy_count

scoreboard players operation $trident_copy.player_2 sanctuary_ench -= @s s_ench.trident_copy.drop

execute if score $trident_copy.player_1 sanctuary_ench = $trident_copy.player_2 sanctuary_ench run item modify entity @s weapon.mainhand sanctuary_ench:trident_copy/copy_count