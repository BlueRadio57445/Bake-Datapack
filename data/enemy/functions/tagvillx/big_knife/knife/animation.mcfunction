#執行者:刀 位置:刀

#animation
execute if score @s enemy.big_knife.skill.cd matches 59 on passengers run data merge entity @s {interpolation_duration:27,start_interpolation:0,transformation:{scale:[0.5f,0.5f,0.5f]}}

execute if score @s enemy.big_knife.skill.cd matches 25.. on passengers at @s run tp @s ^ ^ ^ ~ ~-3

execute if score @s enemy.big_knife.skill.cd matches 20..25 on passengers at @s run tp @s ^ ^ ^ ~ ~25.1

execute if score @s enemy.big_knife.skill.cd matches 33 on passengers run data merge entity @s {block_state:{Name:"minecraft:amethyst_block"}}


#聲音
execute if score @s enemy.big_knife.skill.cd matches 55 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 0
execute if score @s enemy.big_knife.skill.cd matches 57 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 0.2
execute if score @s enemy.big_knife.skill.cd matches 50 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 0.3
execute if score @s enemy.big_knife.skill.cd matches 47 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 0.5
execute if score @s enemy.big_knife.skill.cd matches 45 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 0.7
execute if score @s enemy.big_knife.skill.cd matches 43 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 0.9
execute if score @s enemy.big_knife.skill.cd matches 40 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 1
execute if score @s enemy.big_knife.skill.cd matches 48 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 1.1
execute if score @s enemy.big_knife.skill.cd matches 45 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 1.2
execute if score @s enemy.big_knife.skill.cd matches 43 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 1.3
execute if score @s enemy.big_knife.skill.cd matches 40 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 1.5
execute if score @s enemy.big_knife.skill.cd matches 38 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 1.6
execute if score @s enemy.big_knife.skill.cd matches 35 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 1.7
execute if score @s enemy.big_knife.skill.cd matches 33 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 1.8
execute if score @s enemy.big_knife.skill.cd matches 30 run playsound minecraft:block.respawn_anchor.charge master @a[distance=..10] ~ ~ ~ 1 2
execute if score @s enemy.big_knife.skill.cd matches 33 run playsound entity.player.levelup master @a[distance=..10] ~ ~ ~ 1 2
