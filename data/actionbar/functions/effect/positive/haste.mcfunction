scoreboard players set $effect.new actionbar.state 0
execute store success score $effect.new actionbar.state unless data storage actionbar:player Data.positive_effects[{Id:3}] run data modify storage actionbar:player Data.positive_effects append value {Id:3,custom:0b,icon:'[{"text":"\\uF800"},{"text":"\\uDAFF\\uDFEA"},{"text":"\\uF803"},{"text":"\\uDB00\\uDC01"}]',icon_reverse:'{"text":"\\uDAFF\\uDFE9"}'}
execute if score $effect.new actionbar.state matches 1 run data remove storage actionbar:player Data.effect_schedule[{Id:3}]
execute if score $effect.new actionbar.state matches 1 run function actionbar:effect/new_timer
data modify storage actionbar:player Data.positive_effects[{Id:3}] merge from storage actionbar:player Effects[0]
