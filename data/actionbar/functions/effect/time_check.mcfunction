execute store result score $effect.id actionbar.state run data get storage actionbar:player Data.effect_schedule[0].Id

$execute if data storage actionbar:player Data.$(category)_effects[{Id:$(Id)}] run function actionbar:effect/time_calc with storage actionbar:player Data.effect_schedule[0]

data remove storage actionbar:player Data.effect_schedule[0]
execute store result score @s actionbar.effect.update_time run data get storage actionbar:player Data.effect_schedule[0].time
execute if predicate actionbar:effect/time_matched run function actionbar:effect/time_check with storage actionbar:player Data.effect_schedule[0]
