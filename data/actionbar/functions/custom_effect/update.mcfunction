scoreboard players set @s actionbar.custom_effect 0
function general:player_data/select
data modify storage actionbar:player Data set value {}
data modify storage actionbar:player Data set from storage general:player_data Data[{selected:1b}].Actionbar
data modify storage actionbar:player Data.PositiveEffects[{custom:1b}].updated set value 0b
data modify storage actionbar:player Data.NegativeEffects[{custom:1b}].updated set value 0b

execute if score @s effects.bleed.duration matches 1.. run function actionbar:custom_effect/negative/bleed
execute if score @s effects.stun.duration matches 1.. run function actionbar:custom_effect/negative/stun
execute if score @s effects.strong_gravity.duration matches 1.. run function actionbar:custom_effect/negative/strong_gravity

data remove storage actionbar:player Data.PositiveEffects[{updated:0b}]
data remove storage actionbar:player Data.NegativeEffects[{updated:0b}]
data modify storage general:player_data Data[{selected:1b}].Actionbar set from storage actionbar:player Data
function actionbar:update
