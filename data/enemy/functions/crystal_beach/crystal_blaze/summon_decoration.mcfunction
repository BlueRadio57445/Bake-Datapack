summon minecraft:block_display ~ ~ ~ {Tags:["enemy.decoration","new"],block_state:{Name:"orange_stained_glass"},transformation:{translation:[0f,-1.2f,-0.8f],left_rotation:[0f,0f,0f,1f],right_rotation:[-0.33f,0f,0.33f,0.89f],scale:[0.2f,0.6f,0.2f]},teleport_duration:1}
summon minecraft:block_display ~ ~ ~ {Tags:["enemy.decoration","new"],block_state:{Name:"orange_stained_glass"},transformation:{translation:[0f,-1.2f,0.8f],left_rotation:[0f,0f,0f,1f],right_rotation:[-0.33f,0f,0.33f,0.89f],scale:[0.2f,0.6f,0.2f]},teleport_duration:1}
summon minecraft:block_display ~ ~ ~ {Tags:["enemy.decoration","new"],block_state:{Name:"orange_stained_glass"},transformation:{translation:[0.8f,-1.2f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[-0.33f,0f,0.33f,0.89f],scale:[0.2f,0.6f,0.2f]},teleport_duration:1}
summon minecraft:block_display ~ ~ ~ {Tags:["enemy.decoration","new"],block_state:{Name:"orange_stained_glass"},transformation:{translation:[-0.8f,-1.2f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[-0.33f,0f,0.33f,0.89f],scale:[0.2f,0.6f,0.2f]},teleport_duration:1}

tag @s add this
execute as @e[tag=new,tag=enemy.decoration] run ride @s mount @e[limit=1,tag=this]
tag @s remove this
tag @e[tag=new] remove new