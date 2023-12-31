# 執行者、執行位置是金黃葡萄球菌
summon item_display ~ ~ ~ {Tags:["enemy.golden_grapes.1","enemy.decoration","golden_grapes.decoration","new"],item:{id:"honey_block",Count:1b},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f]}}
summon item_display ~ ~ ~ {Tags:["enemy.golden_grapes.2","enemy.decoration","golden_grapes.decoration","new"],item:{id:"honey_block",Count:1b},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f]}}
summon item_display ~ ~ ~ {Tags:["enemy.golden_grapes.3","enemy.decoration","golden_grapes.decoration","new"],item:{id:"honey_block",Count:1b},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f]}}
summon item_display ~ ~ ~ {Tags:["enemy.golden_grapes.4","enemy.decoration","golden_grapes.decoration","new"],item:{id:"honey_block",Count:1b},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f]}}
summon item_display ~ ~ ~ {Tags:["enemy.golden_grapes.5","enemy.decoration","golden_grapes.decoration","new"],item:{id:"honey_block",Count:1b},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f]}}
summon item_display ~ ~ ~ {Tags:["enemy.golden_grapes.6","enemy.decoration","golden_grapes.decoration","new"],item:{id:"honey_block",Count:1b},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f]}}
summon item_display ~ ~ ~ {Tags:["enemy.golden_grapes.7","enemy.decoration","golden_grapes.decoration","new"],item:{id:"honey_block",Count:1b},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f]}}
tag @s add this
execute as @e[tag=new, tag=enemy.decoration] run ride @s mount @e[limit=1,tag=this]
tag @s remove this
tag @e[tag=new] remove new