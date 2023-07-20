execute store result score $effect.id actionbar.state run data get storage actionbar:player Effects[0].Id
execute store result score $effect.duration actionbar.state run data get storage actionbar:player Effects[0].Duration
scoreboard players remove $effect.duration actionbar.state 1
scoreboard players operation $effect.duration actionbar.state /= $20 general.const
scoreboard players operation $input actionbar.time = $effect.duration actionbar.state
function actionbar:time/m1s2
data modify storage actionbar:player Effects[0].Time set from storage actionbar:time Output

execute if score $effect.id actionbar.state matches 1 run function actionbar:effect/positive/speed
execute if score $effect.id actionbar.state matches 2 run function actionbar:effect/negative/slowness
execute if score $effect.id actionbar.state matches 3 run function actionbar:effect/positive/haste
execute if score $effect.id actionbar.state matches 4 run function actionbar:effect/negative/mining_fatigue
execute if score $effect.id actionbar.state matches 5 run function actionbar:effect/positive/strength
execute if score $effect.id actionbar.state matches 6 run function actionbar:effect/positive/instant_health
execute if score $effect.id actionbar.state matches 7 run function actionbar:effect/negative/instant_damage
execute if score $effect.id actionbar.state matches 8 run function actionbar:effect/positive/jump_boost
execute if score $effect.id actionbar.state matches 9 run function actionbar:effect/negative/nausea
execute if score $effect.id actionbar.state matches 10 run function actionbar:effect/positive/regeneration
execute if score $effect.id actionbar.state matches 11 run function actionbar:effect/positive/resistance
execute if score $effect.id actionbar.state matches 12 run function actionbar:effect/positive/fire_resistance
execute if score $effect.id actionbar.state matches 13 run function actionbar:effect/positive/water_breathing
execute if score $effect.id actionbar.state matches 14 run function actionbar:effect/positive/invisibility
execute if score $effect.id actionbar.state matches 15 run function actionbar:effect/negative/blindness
execute if score $effect.id actionbar.state matches 16 run function actionbar:effect/positive/night_vision
execute if score $effect.id actionbar.state matches 17 run function actionbar:effect/negative/hunger
execute if score $effect.id actionbar.state matches 18 run function actionbar:effect/negative/weakness
execute if score $effect.id actionbar.state matches 19 run function actionbar:effect/negative/poison
execute if score $effect.id actionbar.state matches 20 run function actionbar:effect/negative/wither
execute if score $effect.id actionbar.state matches 21 run function actionbar:effect/positive/health_boost
execute if score $effect.id actionbar.state matches 22 run function actionbar:effect/positive/absorption
execute if score $effect.id actionbar.state matches 23 run function actionbar:effect/positive/saturation
execute if score $effect.id actionbar.state matches 24 run function actionbar:effect/positive/glowing
execute if score $effect.id actionbar.state matches 25 run function actionbar:effect/negative/levitation
execute if score $effect.id actionbar.state matches 26 run function actionbar:effect/positive/luck
execute if score $effect.id actionbar.state matches 27 run function actionbar:effect/negative/unluck
execute if score $effect.id actionbar.state matches 28 run function actionbar:effect/positive/slow_falling
execute if score $effect.id actionbar.state matches 29 run function actionbar:effect/positive/conduit_power
execute if score $effect.id actionbar.state matches 30 run function actionbar:effect/positive/dolphins_grace
execute if score $effect.id actionbar.state matches 31 run function actionbar:effect/negative/bad_omen
execute if score $effect.id actionbar.state matches 32 run function actionbar:effect/positive/hero_of_the_village
execute if score $effect.id actionbar.state matches 33 run function actionbar:effect/negative/darkness
