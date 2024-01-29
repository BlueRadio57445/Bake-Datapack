# 執行者是葡萄裝飾物(item display)
data merge storage enemy:data {golden_grapes_temp:{interpolation_duration:8,start_interpolation:0,transformation:{translation:[0f,0f,0f]}}}
execute store result storage enemy:data golden_grapes_temp.transformation.translation[0] float 0.01 run random value -50..50
execute store result storage enemy:data golden_grapes_temp.transformation.translation[1] float 0.01 run random value -190..-20
execute store result storage enemy:data golden_grapes_temp.transformation.translation[2] float 0.01 run random value -50..50
execute store result storage enemy:data random.value int 1 run random value 0..5
function enemy:radio/golden_grapes/_grapes_animation with storage enemy:data random
data modify entity @s {} merge from storage enemy:data golden_grapes_temp