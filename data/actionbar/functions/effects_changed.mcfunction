advancement revoke @s only actionbar:effects_changed
scoreboard players operation $nextSec actionbar.time = $gametime general.utils
scoreboard players add $nextSec actionbar.time 20

data modify storage actionbar:player Data set value {}
function general:player_data/get {path:"Actionbar",target:"storage actionbar:player Data"}
data modify storage actionbar:player Data.positive_effects[{custom:0b}].updated set value 0b
data modify storage actionbar:player Data.negative_effects[{custom:0b}].updated set value 0b

data modify storage actionbar:player Effects set value []
data modify storage actionbar:player Effects set from entity @s active_effects
execute if data storage actionbar:player Effects[] run function actionbar:effect/check

data remove storage actionbar:player Data.positive_effects[{updated:0b}]
data remove storage actionbar:player Data.negative_effects[{updated:0b}]

execute store result score @s actionbar.effect.update_time run data get storage actionbar:player Data.effect_schedule[0].time

function general:player_data/store {path:"Actionbar",target:"storage actionbar:player Data"}
function actionbar:update
