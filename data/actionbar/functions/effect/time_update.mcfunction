scoreboard players operation $nextSec actionbar.time = $gametime general.utils
scoreboard players add $nextSec actionbar.time 20

data modify storage actionbar:player Data set value {}
function general:player_data/get {path:"Actionbar",target:"storage actionbar:player Data"}

execute if score @s actionbar.effect.update_time < $gametime general.utils run function actionbar:effect/time_clear
execute unless score @s actionbar.effect.update_time = $gametime general.utils run return 0

function actionbar:effect/time_check with storage actionbar:player Data.effect_schedule[0]

function general:player_data/store {path:"Actionbar",target:"storage actionbar:player Data"}
function actionbar:update
