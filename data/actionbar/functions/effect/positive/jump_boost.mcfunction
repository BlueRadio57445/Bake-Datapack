execute store result score $effect.amplifier actionbar.state run data get storage actionbar:player Effects[0].Amplifier
execute unless score $effect.amplifier actionbar.state matches 0..127 run return 0
execute store success score $effect.new actionbar.states unless data storage actionbar:player Data.PositiveEffects[{Id:8}] run data modify storage actionbar:player Data.PositiveEffects append value {Id:8,custom:0b,Icon:'[{"text":"\\uF800","font":"bake:icon"},{"text":"\\uDAFF\\uDFEA","font":"bake:space"},{"text":"\\uF808","font":"bake:icon"},{"text":"\\uDB00\\uDC01","font":"bake:space"}]',IconReverse:'{"text":"\\uDAFF\\uDFE9","font":"bake:space"}'}
data modify storage actionbar:player Data.PositiveEffects[{Id:8}] merge from storage actionbar:player Effects[0]
data modify storage actionbar:player Data.PositiveEffects[{Id:8}].updated set value 1b
