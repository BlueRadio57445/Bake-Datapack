scoreboard players set $effect.new actionbar.state 0
execute store success score $effect.new actionbar.state unless data storage actionbar:player Data.positive_effects[{Id:13}] run data modify storage actionbar:player Data.positive_effects append value {Id:13,custom:0b,icon:'[{"text":"\\uF800"},{"text":"\\uDAFF\\uDFEA"},{"text":"\\uF80D"},{"text":"\\uDB00\\uDC01"}]',icon_reverse:'{"text":"\\uDAFF\\uDFE9"}'}
execute if score $effect.new actionbar.state matches 1 run data remove storage actionbar:player Data.effect_schedule[{Id:13}]
execute if score $effect.new actionbar.state matches 1 run function actionbar:effect/new_timer
data modify storage actionbar:player Data.positive_effects[{Id:13}] merge from storage actionbar:player Effects[0]
