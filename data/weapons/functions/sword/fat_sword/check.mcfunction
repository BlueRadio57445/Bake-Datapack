# 由 general:utils/hunger_changed 及 general:utils/selected_item_changed 觸發
execute if score @s general.player.food matches 20.. if data entity @s SelectedItem.tag{CustomModelData:0} run item modify entity @s weapon.mainhand weapons:sword/fat_sword/strong
execute unless score @s general.player.food matches 20.. if data entity @s SelectedItem.tag{CustomModelData:3000} run item modify entity @s weapon.mainhand weapons:sword/fat_sword/weak
