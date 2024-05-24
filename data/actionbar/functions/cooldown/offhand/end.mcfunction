scoreboard players reset @s actionbar.cooldown.offhand_target_time
scoreboard players reset @s actionbar.cooldown.offhand_update_time

function general:player_data/remove {path:"Actionbar.cooldown.offhand"}

execute as @s[predicate=actionbar:cooldown/offhand_cooldown_item] run function general:utils/cooldown_item/end_offhand

function actionbar:update
