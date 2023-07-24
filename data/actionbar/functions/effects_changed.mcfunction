advancement revoke @s only actionbar:effects_changed
scoreboard players operation $nextSec actionbar.time = $gametime general.utils
scoreboard players add $nextSec actionbar.time 20

function general:player_data/select
data modify storage actionbar:player Data set value {}
data modify storage actionbar:player Data set from storage general:player_data Data[{selected:1b}].Actionbar
data modify storage actionbar:player Data.PositiveEffects[{custom:0b}].updated set value 0b
data modify storage actionbar:player Data.NegativeEffects[{custom:0b}].updated set value 0b

data modify storage actionbar:player Effects set value []
data modify storage actionbar:player Effects set from entity @s ActiveEffects
execute if data storage actionbar:player Effects[] run function actionbar:effect/check

data remove storage actionbar:player Data.PositiveEffects[{updated:0b}]
data remove storage actionbar:player Data.NegativeEffects[{updated:0b}]

execute store result score @s actionbar.effect.update_time run data get storage actionbar:player Data.EffectSchedule[0].Time

data modify storage general:player_data Data[{selected:1b}].Actionbar set from storage actionbar:player Data
function actionbar:update
