execute unless data storage actionbar:player Data.negative_effects[{Id:65}] run data modify storage actionbar:player Data.negative_effects prepend value {Id:65,custom:1b,icon:'[{"text":"\\uF800"},{"text":"\\uDAFF\\uDFEA"},{"text":"\\uF841"},{"text":"\\uDB00\\uDC01"}]',icon_reverse:'{"text":"\\uDAFF\\uDFE9"}'}
execute store result storage actionbar:player Data.negative_effects[{Id:65}].Amplifier byte 1 run scoreboard players get @s effects.bleed.amplifier
scoreboard players operation $input actionbar.time = @s effects.bleed.duration
scoreboard players remove $input actionbar.time 1
function actionbar:time/m1s2
data modify storage actionbar:player Data.negative_effects[{Id:65}].time set from storage actionbar:time Output
data modify storage actionbar:player Data.negative_effects[{Id:65}].updated set value 1b
