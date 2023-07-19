execute unless data storage actionbar:player Data.NegativeEffects[{Id:65}] run data modify storage actionbar:player Data.NegativeEffects prepend value {Id:65,custom:1b,Icon:'[{"text":"\\uF800","font":"bake:icon"},{"text":"\\uDAFF\\uDFEA","font":"bake:space"},{"text":"\\uF841","font":"bake:icon"},{"text":"\\uDB00\\uDC01","font":"bake:space"}]',IconReverse:'{"text":"\\uDAFF\\uDFE9","font":"bake:space"}'}
execute store result storage actionbar:player Data.NegativeEffects[{Id:65}].Amplifier byte 1 run scoreboard players get @s effects.bleed.amplifier
scoreboard players operation $input actionbar.time = @s effects.bleed.duration
scoreboard players remove $input actionbar.time 1
function actionbar:time/m1s2
data modify storage actionbar:player Data.NegativeEffects[{Id:65}].Time set from storage actionbar:time Output
data modify storage actionbar:player Data.NegativeEffects[{Id:65}].updated set value 1b
