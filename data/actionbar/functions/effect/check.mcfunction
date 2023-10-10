data modify storage actionbar:player Effects[0].id set string storage actionbar:player Effects[0].id 10
execute store result score $showIcon actionbar.state run data get storage actionbar:player Effects[0].show_icon
execute if score $showIcon actionbar.state matches 1 run function actionbar:effect/type_get with storage actionbar:player Effects[0]
execute if score $showIcon actionbar.state matches 1 run function actionbar:effect/update with storage actionbar:player Effects[0]
data remove storage actionbar:player Effects[0]
execute if data storage actionbar:player Effects[] run function actionbar:effect/check
