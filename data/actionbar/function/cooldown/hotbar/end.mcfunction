scoreboard players reset @s actionbar.cooldown.hotbar_target_time
scoreboard players reset @s actionbar.cooldown.hotbar_update_time

function general:player_data/remove {path:"Actionbar.cooldown.hotbar"}

execute as @s[predicate=actionbar:cooldown/hotbar_cooldown_item] run function general:utils/cooldown_item/end_mainhand

function actionbar:update
