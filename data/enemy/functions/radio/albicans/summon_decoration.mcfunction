summon silverfish ~ ~ ~ {Tags:["enemy","new2"],Passengers:[{id:"item_display",item:{id:"pearlescent_froglight",Count:1b},Tags:["enemy.decoration"],transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}]}
summon silverfish ~ ~ ~ {Tags:["enemy","new3"],Passengers:[{id:"item_display",item:{id:"pearlescent_froglight",Count:1b},Tags:["enemy.decoration"],transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}]}
summon silverfish ~ ~ ~ {Tags:["enemy","new4"],Passengers:[{id:"item_display",item:{id:"pearlescent_froglight",Count:1b},Tags:["enemy.decoration"],transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}]}
summon item_display ~ ~ ~ {Tags:["enemy.decoration","new_decoration"],item:{id:"pearlescent_froglight",Count:1b},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}

tag @s add this
execute as @e[tag=new_decoration,tag=enemy.decoration] run ride @s mount @e[limit=1,tag=this]
data modify entity @e[limit=1,tag=new2] Leash.UUID set from entity @e[limit=1,tag=new] UUID
data modify entity @e[limit=1,tag=new3] Leash.UUID set from entity @e[limit=1,tag=new2] UUID
data modify entity @e[limit=1,tag=new4] Leash.UUID set from entity @e[limit=1,tag=new3] UUID
tag @s remove this
tag @e[tag=new] remove new
tag @e[tag=new2] remove new2
tag @e[tag=new3] remove new3
tag @e[tag=new4] remove new4
tag @e[tag=new_decoration] remove new_decoration