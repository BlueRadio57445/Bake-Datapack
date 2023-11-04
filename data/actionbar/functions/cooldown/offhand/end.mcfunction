scoreboard players reset @s actionbar.cooldown.offhand_target_time
scoreboard players reset @s actionbar.cooldown.offhand_update_time

function general:player_data/remove {path:"Actionbar.cooldown.offhand"}

execute as @s[predicate=actionbar:cooldown/offhand_cooldown_item] if data entity @s Inventory[{Slot:-106b}].tag.cooldown.command run function general:utils/execute with entity @s Inventory[{Slot:-106b}].tag.cooldown

function actionbar:update
