scoreboard players set $effect.new actionbar.state 0
execute store success score $effect.new actionbar.state unless data storage actionbar:player Data.negative_effects[{Id:37}] run data modify storage actionbar:player Data.negative_effects prepend value {Id:37,custom:0b,icon:'[{"text":"\\uF800"},{"text":"\\uDAFF\\uDFEA"},{"text":"\\uF825"},{"text":"\\uDB00\\uDC03"}]',icon_reverse:'{"text":"\\uDAFF\\uDFE7"}'}
execute if score $effect.new actionbar.state matches 1 run data remove storage actionbar:player Data.effect_schedule[{Id:37}]
execute if score $effect.new actionbar.state matches 1 run function actionbar:effect/new_timer
data modify storage actionbar:player Data.negative_effects[{Id:37}] merge from storage actionbar:player Effects[0]