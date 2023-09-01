data remove storage actionbar:player Data.effect_schedule[0]
execute store result score @s actionbar.effect.update_time run data get storage actionbar:player Data.effect_schedule[0].time
execute if score @s actionbar.effect.update_time matches 1.. if score @s actionbar.effect.update_time < $gametime general.utils run function actionbar:effect/time_clear
