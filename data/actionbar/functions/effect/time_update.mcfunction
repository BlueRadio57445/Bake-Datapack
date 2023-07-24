scoreboard players operation $nextSec actionbar.time = $gametime general.utils
scoreboard players add $nextSec actionbar.time 20

function general:player_data/select
data modify storage actionbar:player Data set value {}
data modify storage actionbar:player Data set from storage general:player_data Data[{selected:1b}].Actionbar

execute if score @s actionbar.effect.update_time < $gametime general.utils run function actionbar:effect/time_clear
execute unless score @s actionbar.effect.update_time = $gametime general.utils run return 0

function actionbar:effect/time_check

data modify storage general:player_data Data[{selected:1b}].Actionbar set from storage actionbar:player Data
function actionbar:update
