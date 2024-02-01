# 負責葡萄的動畫，遞迴執行

execute as @e[type=#object,tag=golden_grapes.decoration] run function enemy:radio/golden_grapes/grapes_animation

schedule function enemy:radio/golden_grapes/schedule_effect 8t