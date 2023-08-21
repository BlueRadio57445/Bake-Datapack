execute if score $temp actionbar.state matches -1 store result score $effect.duration actionbar.state run data get storage actionbar:player Data.NegativeEffects[{selected:1b}].Duration
execute if score $temp actionbar.state matches 1 store result score $effect.duration actionbar.state run data get storage actionbar:player Data.PositiveEffects[{selected:1b}].Duration
execute if score $temp actionbar.state matches -1 store result score $updateInterval actionbar.time run data get storage actionbar:player Data.NegativeEffects[{selected:1b}].LastUpdateTime -1
execute if score $temp actionbar.state matches 1 store result score $updateInterval actionbar.time run data get storage actionbar:player Data.PositiveEffects[{selected:1b}].LastUpdateTime -1

scoreboard players operation $updateInterval actionbar.time += $gametime general.utils
scoreboard players operation $effect.duration actionbar.state -= $updateInterval actionbar.time

execute if score $temp actionbar.state matches -1 store result storage actionbar:player Data.NegativeEffects[{selected:1b}].Duration int 1 run scoreboard players get $effect.duration actionbar.state
execute if score $temp actionbar.state matches 1 store result storage actionbar:player Data.PositiveEffects[{selected:1b}].Duration int 1 run scoreboard players get $effect.duration actionbar.state
execute if score $temp actionbar.state matches -1 store result storage actionbar:player Data.NegativeEffects[{selected:1b}].LastUpdateTime int 1 run scoreboard players get $gametime general.utils
execute if score $temp actionbar.state matches 1 store result storage actionbar:player Data.PositiveEffects[{selected:1b}].LastUpdateTime int 1 run scoreboard players get $gametime general.utils

scoreboard players remove $effect.duration actionbar.state 1
scoreboard players operation $effect.duration actionbar.state /= $20 general.const
scoreboard players operation $input actionbar.time = $effect.duration actionbar.state
function actionbar:time/m1s2
execute if score $temp actionbar.state matches -1 run data modify storage actionbar:player Data.NegativeEffects[{selected:1b}].Time set from storage actionbar:time Output
execute if score $temp actionbar.state matches 1 run data modify storage actionbar:player Data.PositiveEffects[{selected:1b}].Time set from storage actionbar:time Output

data remove storage actionbar:player Data.NegativeEffects[].selected
data remove storage actionbar:player Data.PositiveEffects[].selected

function actionbar:effect/new_timer