function general:player_data/get {path:"Actionbar",target:"storage actionbar:player Data"}

scoreboard players set $different actionbar.cooldown 0
scoreboard players set $targetTime actionbar.cooldown 0
scoreboard players set $current actionbar.cooldown 0
scoreboard players set $length actionbar.cooldown 0
scoreboard players set $slot actionbar.cooldown -1
execute store result score $prevLength actionbar.cooldown run data get storage actionbar:player Data.cooldown.offhand.length

scoreboard players operation $targetTime actionbar.cooldown = $gametime general.utils
execute if predicate knowledge:hold_knowledge2 run function actionbar:cooldown/offhand/check_knowledge
execute as @s[predicate=actionbar:cooldown/offhand_cooldown_score] run function actionbar:cooldown/offhand/check_score with entity @s Inventory[{Slot:-106b}].tag.cooldown
execute as @s[predicate=actionbar:cooldown/offhand_cooldown_item] run function actionbar:cooldown/offhand/check_item

execute unless score $targetTime actionbar.cooldown = @s actionbar.cooldown.offhand_target_time run scoreboard players set $different actionbar.cooldown 1
execute unless score $length actionbar.cooldown = $prevLength actionbar.cooldown run scoreboard players set $different actionbar.cooldown 1

execute if score $different actionbar.cooldown matches 1 if score $current actionbar.cooldown matches 1.. run function actionbar:cooldown/offhand/start
execute unless score $current actionbar.cooldown matches 1.. run function actionbar:cooldown/offhand/end
