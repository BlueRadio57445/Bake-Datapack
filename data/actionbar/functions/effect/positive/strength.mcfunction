scoreboard players set $effect.new actionbar.state 0
execute store success score $effect.new actionbar.state unless data storage actionbar:player Data.PositiveEffects[{Id:5}] run data modify storage actionbar:player Data.PositiveEffects append value {Id:5,custom:0b,Icon:'[{"text":"\\uF800"},{"text":"\\uDAFF\\uDFEA"},{"text":"\\uF805"},{"text":"\\uDB00\\uDC01"}]',IconReverse:'{"text":"\\uDAFF\\uDFE9"}'}
execute if score $effect.new actionbar.state matches 1 run data remove storage actionbar:player Data.EffectSchedule[{Id:5}]
execute if score $effect.new actionbar.state matches 1 run function actionbar:effect/new_timer
data modify storage actionbar:player Data.PositiveEffects[{Id:5}] merge from storage actionbar:player Effects[0]
