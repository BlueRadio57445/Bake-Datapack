$execute store result score $effect.duration actionbar.state run data get storage actionbar:player Data.$(category)_effects[{Id:$(Id)}].duration
$execute store result score $updateInterval actionbar.time run data get storage actionbar:player Data.$(category)_effects[{Id:$(Id)}].last_update_time -1

scoreboard players operation $updateInterval actionbar.time += $gametime general.utils
scoreboard players operation $effect.duration actionbar.state -= $updateInterval actionbar.time

$execute store result storage actionbar:player Data.$(category)_effects[{Id:$(Id)}].duration int 1 run scoreboard players get $effect.duration actionbar.state
$execute store result storage actionbar:player Data.$(category)_effects[{Id:$(Id)}].last_update_time int 1 run scoreboard players get $gametime general.utils

scoreboard players remove $effect.duration actionbar.state 1
scoreboard players operation $effect.duration actionbar.state /= $20 general.const
scoreboard players operation $input actionbar.time = $effect.duration actionbar.state
function actionbar:time/m1s2
$data modify storage actionbar:player Data.$(category)_effects[{Id:$(Id)}].time set from storage actionbar:time Output

function actionbar:effect/new_timer
