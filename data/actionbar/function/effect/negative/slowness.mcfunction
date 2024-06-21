execute store result score $effect.amplifier actionbar.state run data get storage actionbar:player Effects[0].Amplifier
execute unless score $effect.amplifier actionbar.state matches 0..5 run return 0
scoreboard players set $effect.new actionbar.state 0
execute store success score $effect.new actionbar.state unless data storage actionbar:player Data.negative_effects[{Id:2}] run data modify storage actionbar:player Data.negative_effects prepend value {Id:2,custom:0b,icon:'[{"text":"\\uF800"},{"text":"\\uDAFF\\uDFEA"},{"text":"\\uF802"},{"text":"\\uDB00\\uDC03"}]',icon_reverse:'{"text":"\\uDAFF\\uDFE7"}'}
execute if score $effect.new actionbar.state matches 1 run data remove storage actionbar:player Data.effect_schedule[{Id:2}]
execute if score $effect.new actionbar.state matches 1 run function actionbar:effect/new_timer
data modify storage actionbar:player Data.negative_effects[{Id:2}] merge from storage actionbar:player Effects[0]
