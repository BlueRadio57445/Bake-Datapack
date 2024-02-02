# 腳
summon minecraft:block_display ~ ~ ~ {Tags:["enemy.decoration","new"],block_state:{Name:"white_stained_glass"},transformation:{translation:[0f,-0.35f,-0.1f],left_rotation:[0.257f,0.239f,0.8f,0.484f],right_rotation:[-0.33f,0f,0.33f,0.89f],scale:[0.12f,0.5f,0.12f]}}
summon minecraft:block_display ~ ~ ~ {Tags:["enemy.decoration","new"],block_state:{Name:"white_stained_glass"},transformation:{translation:[0f,-0.35f,-0.1f],left_rotation:[0.257f,-0.239f,0.8f,0.484f],right_rotation:[-0.33f,0f,0.33f,0.89f],scale:[0.12f,0.5f,0.12f]}}
summon minecraft:block_display ~ ~ ~ {Tags:["enemy.decoration","new"],block_state:{Name:"white_stained_glass"},transformation:{translation:[0f,-0.35f,-0.1f],left_rotation:[0.257f,0.239f,-0.8f,-0.484f],right_rotation:[-0.33f,0f,0.33f,0.89f],scale:[0.12f,0.5f,0.12f]}}
summon minecraft:block_display ~ ~ ~ {Tags:["enemy.decoration","new"],block_state:{Name:"white_stained_glass"},transformation:{translation:[0f,-0.35f,-0.1f],left_rotation:[-0.257f,0.239f,0.8f,-0.484f],right_rotation:[-0.33f,0f,0.33f,0.89f],scale:[0.12f,0.5f,0.12f]}}
summon minecraft:block_display ~ ~ ~ {Tags:["enemy.decoration","new"],block_state:{Name:"white_stained_glass"},transformation:{translation:[0f,-0.35f,-0.1f],left_rotation:[0.257f,-0.239f,0.8f,-0.484f],right_rotation:[-0.33f,0f,0.33f,0.89f],scale:[0.12f,0.5f,0.12f]}}
summon minecraft:block_display ~ ~ ~ {Tags:["enemy.decoration","new"],block_state:{Name:"white_stained_glass"},transformation:{translation:[0f,-0.35f,-0.1f],left_rotation:[0.257f,0.239f,-0.8f,0.484f],right_rotation:[-0.33f,0f,0.33f,0.89f],scale:[0.12f,0.5f,0.12f]}}
# 身體
summon minecraft:item_display ~ ~ ~ {Tags:["enemy.decoration","new"],item:{id:"white_stained_glass",Count:1b},transformation:{translation:[0f,-0.35f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.6f,0.3f,0.5f]}}
# 螯
summon minecraft:block_display ~ ~ ~ {Tags:["enemy.decoration","crab.claw","new"],block_state:{Name:"yellow_glazed_terracotta"},transformation:{translation:[-0.1f,-0.5f,0.1f],left_rotation:[0.43f,-0.47f,0.14f,0.76f],right_rotation:[-0.33f,0f,0.33f,0.89f],scale:[0.23f,0.5f,0.23f]}}
summon minecraft:block_display ~ ~ ~ {Tags:["enemy.decoration","crab.claw","new"],block_state:{Name:"yellow_glazed_terracotta"},transformation:{translation:[0.1f,-0.5f,0.1f],left_rotation:[0.43f,0.47f,-0.14f,0.76f],right_rotation:[-0.33f,0f,0.33f,0.89f],scale:[0.23f,0.5f,0.23f]}}

tag @s add this
execute as @e[tag=new,tag=enemy.decoration] run ride @s mount @e[limit=1,tag=this]
tag @s remove this