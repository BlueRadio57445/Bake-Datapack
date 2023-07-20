execute store result score $effect.amplifier actionbar.state run data get storage actionbar:player Effects[0].Amplifier
execute unless score $effect.amplifier actionbar.state matches 0..5 run return 0
scoreboard players set $effect.new actionbar.state 0
execute store success score $effect.new actionbar.state unless data storage actionbar:player Data.NegativeEffects[{Id:2}] run data modify storage actionbar:player Data.NegativeEffects prepend value {Id:2,custom:0b,Icon:'[{"text":"\\uF800","font":"bake:icon"},{"text":"\\uDAFF\\uDFEA","font":"bake:space"},{"text":"\\uF802","font":"bake:icon"},{"text":"\\uDB00\\uDC01","font":"bake:space"}]',IconReverse:'{"text":"\\uDAFF\\uDFE9","font":"bake:space"}'}
execute if score $effect.new actionbar.state matches 1 run data remove storage actionbar:player Data.EffectSchedule[{Id:2}]
execute if score $effect.new actionbar.state matches 1 run function actionbar:effect/new_timer
data modify storage actionbar:player Data.NegativeEffects[{Id:2}] merge from storage actionbar:player Effects[0]
data modify storage actionbar:player Data.NegativeEffects[{Id:2}].updated set value 1b
