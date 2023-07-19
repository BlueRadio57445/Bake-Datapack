execute store result score $showIcon actionbar.state run data get storage actionbar:player Effects[0].ShowIcon
execute if score $showIcon actionbar.state matches 0 run function actionbar:effect/update
data remove storage actionbar:player Effects[0]
execute if data storage actionbar:player Effects[] run function actionbar:effect/check
