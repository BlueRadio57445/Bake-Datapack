execute unless data storage actionbar:player Data.negative_effects[{Id:66}] run data modify storage actionbar:player Data.negative_effects prepend value {Id:66,Amplifier:0b,custom:1b,icon:'[{"text":"\\uF800"},{"text":"\\uDAFF\\uDFEA"},{"text":"\\uF842"},{"text":"\\uDB00\\uDC01"}]',icon_reverse:'{"text":"\\uDAFF\\uDFE9"}'}
scoreboard players operation $input actionbar.time = @s effects.stun.duration
scoreboard players remove $input actionbar.time 1
function actionbar:time/m1s2
data modify storage actionbar:player Data.negative_effects[{Id:66}].time set from storage actionbar:time Output
data modify storage actionbar:player Data.negative_effects[{Id:66}].updated set value 1b
