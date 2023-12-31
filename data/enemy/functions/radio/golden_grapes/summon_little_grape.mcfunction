# 執行者、執行位置是金黃葡萄球菌
summon endermite ~ ~ ~ {Tags:["new","enemy.little_grape"],active_effects:[{id:"invisibility",duration:-1,show_particles:0b}],CustomName:'{"text":"小葡萄球菌"}',Health:1.0f}
execute on passengers run tag @s add temp
tag @e[tag=temp,tag=golden_grapes.decoration,sort=arbitrary,limit=1] add this_grape
tag @e[tag=this_grape] remove golden_grapes.decoration
data merge entity @e[tag=this_grape,limit=1] {transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},interpolation_duration:8,start_interpolation:0}
ride @e[tag=this_grape,limit=1] dismount
ride @e[tag=this_grape,limit=1] mount @e[tag=new,limit=1]
tag @e[tag=temp] remove temp
tag @e[tag=this_grape] remove this_grape
tag @e[tag=new] remove new