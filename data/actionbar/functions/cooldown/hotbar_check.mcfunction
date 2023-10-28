function general:player_data/get {path:"Actionbar",target:"storage actionbar:player Data"}

scoreboard players set $different actionbar.cooldown 0
scoreboard players set $targetTime actionbar.cooldown 0
scoreboard players set $current actionbar.cooldown 0
scoreboard players set $length actionbar.cooldown 0
scoreboard players operation $slot actionbar.cooldown = @s general.player.selected_slot
execute store result score $prevLength actionbar.cooldown run data get storage actionbar:player Data.cooldown.mainhand.length
execute store result score $prevSlot actionbar.cooldown run data get storage actionbar:player Data.cooldown.mainhand.slot

scoreboard players operation $targetTime actionbar.cooldown = $gametime general.utils
execute if predicate knowledge:hold_knowledge1 run function actionbar:cooldown/hotbar_check_knowledge

execute unless score $targetTime actionbar.cooldown = @s actionbar.cooldown.hotbar_target_time run scoreboard players set $different actionbar.cooldown 1
execute unless score $length actionbar.cooldown = $prevLength actionbar.cooldown run scoreboard players set $different actionbar.cooldown 1
execute unless score $slot actionbar.cooldown = $prevSlot actionbar.cooldown run scoreboard players set $different actionbar.cooldown 1

execute if score $different actionbar.cooldown matches 1 if score $current actionbar.cooldown matches 1.. run function actionbar:cooldown/hotbar_start
execute unless score $current actionbar.cooldown matches 1.. run function actionbar:cooldown/hotbar_end
