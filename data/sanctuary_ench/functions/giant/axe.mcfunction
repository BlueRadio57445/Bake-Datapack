# 執行者、執行位置是大斧頭
scoreboard players add @s s_ench.object_duration 1
execute as @s[scores={s_ench.object_duration=2}] run data merge entity @s {transformation:{left_rotation:[0.0f,-0.707f,0.0f,0.707f],right_rotation:[0.0f,0.0f,-0.9707f,0.2392f],translation:[0f,0f,0.5f],scale:[5f,5f,5f]},start_interpolation:0,interpolation_duration:10}
execute at @s[scores={s_ench.object_duration=12}] run particle block dirt ^ ^-1.5 ^1.5 0.4 0.4 0.4 0.1 300
execute at @s[scores={s_ench.object_duration=12}] run playsound entity.player.attack.crit master @a[distance=..10] ^ ^ ^1.5 2
execute at @s[scores={s_ench.object_duration=12}] run function sanctuary_ench:giant/axe_damage
execute at @s[scores={s_ench.object_duration=40}] run particle minecraft:poof ~ ~ ~ 1 1 1 0.1 20
kill @s[scores={s_ench.object_duration=40..}]

