scoreboard players set @s actionbar.custom_effect 0
data modify storage actionbar:player Data set value {}
function general:player_data/get {path:"Actionbar",target:"storage actionbar:player Data"}
data modify storage actionbar:player Data.positive_effects[{custom:1b}].updated set value 0b
data modify storage actionbar:player Data.negative_effects[{custom:1b}].updated set value 0b

execute if score @s effects.bleed.duration matches 1.. run function actionbar:custom_effect/negative/bleed
execute if score @s effects.stun.duration matches 1.. run function actionbar:custom_effect/negative/stun
execute if score @s effects.strong_gravity.duration matches 1.. run function actionbar:custom_effect/negative/strong_gravity

data remove storage actionbar:player Data.positive_effects[{updated:0b}]
data remove storage actionbar:player Data.negative_effects[{updated:0b}]
function general:player_data/store {path:"Actionbar",target:"storage actionbar:player Data"}
function actionbar:update
