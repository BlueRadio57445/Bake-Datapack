execute store success score $effect.new actionbar.states unless data storage actionbar:player Data.PositiveEffects[{Id:21}] run data modify storage actionbar:player Data.PositiveEffects append value {Id:21,custom:0b,Icon:'[{"text":"\\uF800","font":"bake:icon"},{"text":"\\uDAFF\\uDFEA","font":"bake:space"},{"text":"\\uF815","font":"bake:icon"},{"text":"\\uDB00\\uDC01","font":"bake:space"}]',IconReverse:'{"text":"\\uDAFF\\uDFE9","font":"bake:space"}'}
data modify storage actionbar:player Data.PositiveEffects[{Id:21}] merge from storage actionbar:player Effects[0]
data modify storage actionbar:player Data.PositiveEffects[{Id:21}].updated set value 1b
