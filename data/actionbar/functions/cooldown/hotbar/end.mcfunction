scoreboard players reset @s actionbar.cooldown.hotbar_target_time
scoreboard players reset @s actionbar.cooldown.hotbar_update_time

function general:player_data/remove {path:"Actionbar.cooldown.hotbar"}

execute as @s[predicate=actionbar:cooldown/hotbar_cooldown_item] if data entity @s SelectedItem.tag.cooldown.command run function general:utils/execute with entity @s SelectedItem.tag.cooldown

function actionbar:update
