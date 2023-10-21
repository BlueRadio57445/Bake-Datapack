#animation
execute if score @s enemy.big_knife.skill.prepare matches 39 as @e[tag=big_knife_display] run data merge entity @s {interpolation_duration:27,start_interpolation:0,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f]}}

execute if score @s enemy.big_knife.skill.prepare matches 5.. as @e[tag=big_knife_display,tag=1] at @s run tp @s ^ ^ ^ ~ ~-3

execute if score @s enemy.big_knife.skill.prepare matches ..5 as @e[tag=big_knife_display,tag=1] at @s run tp @s ^ ^ ^ ~ ~30




#聲音
execute if score @s enemy.big_knife.skill.prepare matches 35 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 0
execute if score @s enemy.big_knife.skill.prepare matches 37 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 0.2
execute if score @s enemy.big_knife.skill.prepare matches 30 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 0.3
execute if score @s enemy.big_knife.skill.prepare matches 27 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 0.5
execute if score @s enemy.big_knife.skill.prepare matches 25 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 0.7
execute if score @s enemy.big_knife.skill.prepare matches 23 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 0.9
execute if score @s enemy.big_knife.skill.prepare matches 20 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 1
execute if score @s enemy.big_knife.skill.prepare matches 28 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 1.1
execute if score @s enemy.big_knife.skill.prepare matches 25 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 1.2
execute if score @s enemy.big_knife.skill.prepare matches 23 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 1.3
execute if score @s enemy.big_knife.skill.prepare matches 20 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 1.5
execute if score @s enemy.big_knife.skill.prepare matches 18 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 1.6
execute if score @s enemy.big_knife.skill.prepare matches 15 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 1.7
execute if score @s enemy.big_knife.skill.prepare matches 13 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 1.8
execute if score @s enemy.big_knife.skill.prepare matches 10 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 2

#
execute if score @s enemy.big_knife.skill.prepare matches 13 as @e[tag=big_knife_display] run data merge entity @s {block_state:{Name:"minecraft:amethyst_block"}}
execute if score @s enemy.big_knife.skill.prepare matches 13 as @e[tag=big_knife_display] at @s run playsound entity.player.levelup master @a[distance=..10] ~ ~ ~ 1 2