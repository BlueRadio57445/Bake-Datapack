function general:player_data/get {path:"Actionbar",target:"storage actionbar:player Data"}

scoreboard players set $different actionbar.cooldown 0
scoreboard players set $targetTime actionbar.cooldown 0
scoreboard players set $current actionbar.cooldown 0
scoreboard players set $length actionbar.cooldown 0
execute store result score $prevLength actionbar.cooldown run data get storage actionbar:player Data.cooldown.offhand.length

scoreboard players operation $targetTime actionbar.cooldown = $gametime general.utils
execute if predicate knowledge:hold_knowledge2 run function actionbar:cooldown/offhand_check_knowledge

execute unless score $targetTime actionbar.cooldown = @s actionbar.cooldown.offhand_target_time run scoreboard players set $different actionbar.cooldown 1
execute unless score $length actionbar.cooldown = $prevLength actionbar.cooldown run scoreboard players set $different actionbar.cooldown 1

execute if score $different actionbar.cooldown matches 1 if score $current actionbar.cooldown matches 1.. run function actionbar:cooldown/offhand_start
execute unless score $current actionbar.cooldown matches 1.. run function actionbar:cooldown/offhand_end
