scoreboard players remove @s enemy.mushroom_man.grow 1

data merge entity @s[scores={enemy.mushroom_man.grow=38}] {interpolation_duration:15,start_interpolation:0,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[3.5f,3.5f,2.0f]}}

tp @s[scores={enemy.mushroom_man.grow=25..}] ~ ~0.07 ~ ~35 ~

playsound minecraft:block.weeping_vines.hit master @a[distance=..6] ~ ~ ~ 10 1

particle dust 0.035 0.576 0.02 1 ~ ~-1.5 ~ .5 .1 .5 0 50
particle totem_of_undying ~ ~-1.4 ~ .5 .1 .5 0 10

effect give @a[distance=..3,predicate=!enemy:poison] poison 8 0
effect give @a[distance=..3] nausea 8 0

execute if score @s enemy.mushroom_man.grow matches ..-5 run particle end_rod ~ ~-1 ~ .5 .5 .5 .2 10
kill @s[scores={enemy.mushroom_man.grow=-5}]
