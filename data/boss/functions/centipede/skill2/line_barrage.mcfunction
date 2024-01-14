scoreboard players add $line_barrage centipede.ability 1
execute at 00000000-0000-0000-0000-000000000b00 at @a[distance=..100,sort=random,limit=1] if score $line_barrage centipede.ability matches 10 run summon marker ~ ~ ~ {Tags:["centipede.line_barrage","centipede.line1"],Rotation:[45.0f,45.0f]}
execute at 00000000-0000-0000-0000-000000000b00 at @a[distance=..100,sort=random,limit=1] if score $line_barrage centipede.ability matches 20 run summon marker ~ ~ ~ {Tags:["centipede.line_barrage","centipede.line2"],Rotation:[135.0f,30.0f]}
execute at 00000000-0000-0000-0000-000000000b00 at @a[distance=..100,sort=random,limit=1] if score $line_barrage centipede.ability matches 30 run summon marker ~ ~ ~ {Tags:["centipede.line_barrage","centipede.line3"],Rotation:[0.0f,0.0f]}
execute at 00000000-0000-0000-0000-000000000b00 at @a[distance=..100,sort=random,limit=1] if score $line_barrage centipede.ability matches 40 run summon marker ~ ~ ~ {Tags:["centipede.line_barrage","centipede.line4"],Rotation:[-90.0f,60.0f]}
execute at 00000000-0000-0000-0000-000000000b00 at @a[distance=..100,sort=random,limit=1] if score $line_barrage centipede.ability matches 50 run summon marker ~ ~ ~ {Tags:["centipede.line_barrage","centipede.line5"],Rotation:[60.0f,90.0f]}
execute at 00000000-0000-0000-0000-000000000b00 at @a[distance=..100,sort=random,limit=1] if score $line_barrage centipede.ability matches 60 run summon marker ~ ~ ~ {Tags:["centipede.line_barrage","centipede.line6"],Rotation:[45.0f,45.0f]}
execute at 00000000-0000-0000-0000-000000000b00 at @a[distance=..100,sort=random,limit=1] if score $line_barrage centipede.ability matches 70 run summon marker ~ ~ ~ {Tags:["centipede.line_barrage","centipede.line7"],Rotation:[135.0f,30.0f]}
execute at 00000000-0000-0000-0000-000000000b00 at @a[distance=..100,sort=random,limit=1] if score $line_barrage centipede.ability matches 80 run summon marker ~ ~ ~ {Tags:["centipede.line_barrage","centipede.line8"],Rotation:[0.0f,0.0f]}
execute at 00000000-0000-0000-0000-000000000b00 at @a[distance=..100,sort=random,limit=1] if score $line_barrage centipede.ability matches 90 run summon marker ~ ~ ~ {Tags:["centipede.line_barrage","centipede.line9"],Rotation:[-90.0f,60.0f]}


execute if score $line_barrage centipede.ability matches 10 as @e[tag=centipede.line1] at @s run tp @s ^ ^ ^-20
execute if score $line_barrage centipede.ability matches 20 as @e[tag=centipede.line2] at @s run tp @s ^ ^ ^-20
execute if score $line_barrage centipede.ability matches 30 as @e[tag=centipede.line3] at @s run tp @s ^ ^ ^-20
execute if score $line_barrage centipede.ability matches 40 as @e[tag=centipede.line4] at @s run tp @s ^ ^ ^-20
execute if score $line_barrage centipede.ability matches 50 as @e[tag=centipede.line5] at @s run tp @s ^ ^ ^-20
execute if score $line_barrage centipede.ability matches 60 as @e[tag=centipede.line6] at @s run tp @s ^ ^ ^-20
execute if score $line_barrage centipede.ability matches 70 as @e[tag=centipede.line7] at @s run tp @s ^ ^ ^-20
execute if score $line_barrage centipede.ability matches 80 as @e[tag=centipede.line8] at @s run tp @s ^ ^ ^-20
execute if score $line_barrage centipede.ability matches 90 as @e[tag=centipede.line9] at @s run tp @s ^ ^ ^-20


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
execute as @e[tag=centipede.line6] at @s if score $line_barrage centipede.ability matches 80 run playsound entity.experience_orb.pickup ambient @a ~ ~ ~ 100 1 1
execute as @e[tag=centipede.line6] at @s if score $line_barrage centipede.ability matches 80 run function boss:centipede/skill2/barrage_damage
execute as @e[tag=centipede.line7] at @s if score $line_barrage centipede.ability matches 90 run playsound entity.experience_orb.pickup ambient @a ~ ~ ~ 100 1 1
execute as @e[tag=centipede.line7] at @s if score $line_barrage centipede.ability matches 90 run function boss:centipede/skill2/barrage_damage
execute as @e[tag=centipede.line8] at @s if score $line_barrage centipede.ability matches 100 run playsound entity.experience_orb.pickup ambient @a ~ ~ ~ 100 1 1
execute as @e[tag=centipede.line8] at @s if score $line_barrage centipede.ability matches 100 run function boss:centipede/skill2/barrage_damage
execute as @e[tag=centipede.line9] at @s if score $line_barrage centipede.ability matches 110 run playsound entity.experience_orb.pickup ambient @a ~ ~ ~ 100 1 1
execute as @e[tag=centipede.line9] at @s if score $line_barrage centipede.ability matches 110 run function boss:centipede/skill2/barrage_damage

execute as @e[tag=centipede.line_barrage] at @s if score $line_barrage centipede.ability matches ..110 run function boss:centipede/skill2/barrage_particle
execute if score $line_barrage centipede.ability matches ..110 run schedule function boss:centipede/skill2/line_barrage 1t
execute if score $line_barrage centipede.ability matches 111.. run tag @e remove centipede.barrage
execute if score $line_barrage centipede.ability matches 111.. run kill @e[tag=centipede.line_barrage]
