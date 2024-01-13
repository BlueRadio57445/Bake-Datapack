scoreboard players add $line_barrage centipede.ability 1
execute at 00000000-0000-0000-0000-000000000b00 at @a[distance=..100,sort=random,limit=1] if score $line_barrage centipede.ability matches 10 run summon marker ~ ~ ~ {Tags:["centipede.line_barrage","centipede.line1"],Rotation:[45.0f,45.0f]}
execute at 00000000-0000-0000-0000-000000000b00 at @a[distance=..100,sort=random,limit=1] if score $line_barrage centipede.ability matches 20 run summon marker ~ ~ ~ {Tags:["centipede.line_barrage","centipede.line2"],Rotation:[135.0f,30.0f]}
execute at 00000000-0000-0000-0000-000000000b00 at @a[distance=..100,sort=random,limit=1] if score $line_barrage centipede.ability matches 30 run summon marker ~ ~ ~ {Tags:["centipede.line_barrage","centipede.line3"],Rotation:[0.0f,0.0f]}
execute at 00000000-0000-0000-0000-000000000b00 at @a[distance=..100,sort=random,limit=1] if score $line_barrage centipede.ability matches 40 run summon marker ~ ~ ~ {Tags:["centipede.line_barrage","centipede.line4"],Rotation:[-90.0f,60.0f]}
execute at 00000000-0000-0000-0000-000000000b00 at @a[distance=..100,sort=random,limit=1] if score $line_barrage centipede.ability matches 50 run summon marker ~ ~ ~ {Tags:["centipede.line_barrage","centipede.line5"],Rotation:[60.0f,90.0f]}


execute as @e[tag=centipede.line1] at @s run tp @s ^ ^ ^-0.2
execute as @e[tag=centipede.line2] at @s run tp @s ^ ^ ^-0.2
execute as @e[tag=centipede.line3] at @s run tp @s ^ ^ ^-0.2
execute as @e[tag=centipede.line4] at @s run tp @s ^ ^ ^-0.2
execute as @e[tag=centipede.line5] at @s run tp @s ^ ^ ^-0.2

execute as @e[tag=centipede.line1] at @s if score $line_barrage centipede.ability matches 30 run playsound entity.experience_orb.pickup ambient @a ~ ~ ~ 100 1 1
execute as @e[tag=centipede.line1] at @s if score $line_barrage centipede.ability matches 30 run function boss:centipede/skill2/barrage_damage
execute as @e[tag=centipede.line2] at @s if score $line_barrage centipede.ability matches 40 run playsound entity.experience_orb.pickup ambient @a ~ ~ ~ 100 1 1
execute as @e[tag=centipede.line2] at @s if score $line_barrage centipede.ability matches 40 run function boss:centipede/skill2/barrage_damage
execute as @e[tag=centipede.line3] at @s if score $line_barrage centipede.ability matches 50 run playsound entity.experience_orb.pickup ambient @a ~ ~ ~ 100 1 1
execute as @e[tag=centipede.line3] at @s if score $line_barrage centipede.ability matches 50 run function boss:centipede/skill2/barrage_damage
execute as @e[tag=centipede.line4] at @s if score $line_barrage centipede.ability matches 60 run playsound entity.experience_orb.pickup ambient @a ~ ~ ~ 100 1 1
execute as @e[tag=centipede.line4] at @s if score $line_barrage centipede.ability matches 60 run function boss:centipede/skill2/barrage_damage
execute as @e[tag=centipede.line5] at @s if score $line_barrage centipede.ability matches 70 run playsound entity.experience_orb.pickup ambient @a ~ ~ ~ 100 1 1
execute as @e[tag=centipede.line5] at @s if score $line_barrage centipede.ability matches 70 run function boss:centipede/skill2/barrage_damage

execute if score $line_barrage centipede.ability matches 71.. run tag @e remove centipede.barrage
execute if score $line_barrage centipede.ability matches 71.. run kill @e[tag=centipede.line_barrage]
execute if score $line_barrage centipede.ability matches ..70 run schedule function boss:centipede/skill2/line_barrage 1t