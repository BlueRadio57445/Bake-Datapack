execute store success score $effect.new actionbar.states unless data storage actionbar:player Data.NegativeEffects[{Id:18}] run data modify storage actionbar:player Data.NegativeEffects prepend value {Id:18,custom:0b,Icon:'[{"text":"\\uF800","font":"bake:icon"},{"text":"\\uDAFF\\uDFEA","font":"bake:space"},{"text":"\\uF812","font":"bake:icon"},{"text":"\\uDB00\\uDC01","font":"bake:space"}]',IconReverse:'{"text":"\\uDAFF\\uDFE9","font":"bake:space"}'}
data modify storage actionbar:player Data.NegativeEffects[{Id:18}] merge from storage actionbar:player Effects[0]
data modify storage actionbar:player Data.NegativeEffects[{Id:18}].updated set value 1b
