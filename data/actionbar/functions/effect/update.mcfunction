execute store result score $effect.id actionbar.state run data get storage actionbar:player Effects[0].Id
execute store result score $effect.duration actionbar.state run data get storage actionbar:player Effects[0].duration
scoreboard players remove $effect.duration actionbar.state 1
scoreboard players operation $effect.duration actionbar.state /= $20 general.const
scoreboard players operation $input actionbar.time = $effect.duration actionbar.state
function actionbar:time/m1s2
data modify storage actionbar:player Effects[0].time set from storage actionbar:time Output
data modify storage actionbar:player Effects[0].updated set value 1b
execute store result storage actionbar:player Effects[0].last_update_time int 1 run scoreboard players get $gametime general.utils

$function actionbar:effect/$(category)/$(id)
