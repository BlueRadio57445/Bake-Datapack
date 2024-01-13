scoreboard players add $line_barrage centipede.ability 1
execute as @a[limit=1,sort=random] at @s if score $line_barrage centipede.ability matches 10 run summon marker ~ ~ ~ {Tags:["centipede.line_barrage","centipede.line1"],Rotation:[45.0f,45.0f]}
execute as @a[limit=1,sort=random] at @s if score $line_barrage centipede.ability matches 20 run summon marker ~ ~ ~ {Tags:["centipede.line_barrage","centipede.line2"],Rotation:[135.0f,135.0f]}
execute as @a[limit=1,sort=random] at @s if score $line_barrage centipede.ability matches 30 run summon marker ~ ~ ~ {Tags:["centipede.line_barrage","centipede.line3"],Rotation:[0.0f,0.0f]}
execute as @a[limit=1,sort=random] at @s if score $line_barrage centipede.ability matches 40 run summon marker ~ ~ ~ {Tags:["centipede.line_barrage","centipede.line4"],Rotation:[90.0f,90.0f]}
execute as @a[limit=1,sort=random] at @s if score $line_barrage centipede.ability matches 50 run summon marker ~ ~ ~ {Tags:["centipede.line_barrage","centipede.line5"],Rotation:[90.0f,90.0f]}
execute as @e[tag=centipede.line1] at @s if score $line_barrage centipede.ability matches 30 run damage @a[limit=1,distance=0..1] 5 magic by @s
execute as @e[tag=centipede.line2] at @s if score $line_barrage centipede.ability matches 40 run damage @a[limit=1,distance=0..1] 5 magic by @s
execute as @e[tag=centipede.line3] at @s if score $line_barrage centipede.ability matches 50 run damage @a[limit=1,distance=0..1] 5 magic by @s
execute as @e[tag=centipede.line4] at @s if score $line_barrage centipede.ability matches 60 run damage @a[limit=1,distance=0..1] 5 magic by @s
execute as @e[tag=centipede.line5] at @s if score $line_barrage centipede.ability matches 70 run damage @a[limit=1,distance=0..1] 5 magic by @s
execute as @e[tag=centipede.line1] at @s if score $line_barrage centipede.ability matches 31 run damage @a[limit=1,distance=0..1] 5 magic by @s
execute as @e[tag=centipede.line2] at @s if score $line_barrage centipede.ability matches 41 run damage @a[limit=1,distance=0..1] 5 magic by @s
execute as @e[tag=centipede.line3] at @s if score $line_barrage centipede.ability matches 51 run damage @a[limit=1,distance=0..1] 5 magic by @s
execute as @e[tag=centipede.line4] at @s if score $line_barrage centipede.ability matches 61 run damage @a[limit=1,distance=0..1] 5 magic by @s
execute as @e[tag=centipede.line5] at @s if score $line_barrage centipede.ability matches 71 run damage @a[limit=1,distance=0..1] 5 magic by @s
execute as @e[tag=centipede.line1] at @s if score $line_barrage centipede.ability matches 32 run damage @a[limit=1,distance=0..1] 5 magic by @s
execute as @e[tag=centipede.line2] at @s if score $line_barrage centipede.ability matches 42 run damage @a[limit=1,distance=0..1] 5 magic by @s
execute as @e[tag=centipede.line3] at @s if score $line_barrage centipede.ability matches 52 run damage @a[limit=1,distance=0..1] 5 magic by @s
execute as @e[tag=centipede.line4] at @s if score $line_barrage centipede.ability matches 62 run damage @a[limit=1,distance=0..1] 5 magic by @s
execute as @e[tag=centipede.line5] at @s if score $line_barrage centipede.ability matches 72 run damage @a[limit=1,distance=0..1] 5 magic by @s


execute as @e[tag=centipede.line1] at @s if score $line_barrage centipede.ability matches 30 run playsound entity.experience_orb.pickup ambient @a ~ ~ ~ 100 1 1
execute as @e[tag=centipede.line2] at @s if score $line_barrage centipede.ability matches 40 run playsound entity.experience_orb.pickup ambient @a ~ ~ ~ 100 1 1
execute as @e[tag=centipede.line3] at @s if score $line_barrage centipede.ability matches 50 run playsound entity.experience_orb.pickup ambient @a ~ ~ ~ 100 1 1
execute as @e[tag=centipede.line4] at @s if score $line_barrage centipede.ability matches 60 run playsound entity.experience_orb.pickup ambient @a ~ ~ ~ 100 1 1
execute as @e[tag=centipede.line5] at @s if score $line_barrage centipede.ability matches 70 run playsound entity.experience_orb.pickup ambient @a ~ ~ ~ 100 1 1

execute if score $line_barrage centipede.ability matches 71.. run tag @e remove centipede.barrage
execute if score $line_barrage centipede.ability matches 71.. run kill @e[tag=centipede.line_barrage]
execute if score $line_barrage centipede.ability matches ..70 run schedule function boss:centipede/line_barrage 1t


execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^ 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^1 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^2 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^3 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^4 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^5 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^6 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^7 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^8 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^9 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^10 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^11 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^12 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^13 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^14 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^15 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^16 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^17 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^18 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^19 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^20 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^-1 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^-2 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^-3 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^-4 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^-5 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^-6 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^-7 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^-8 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^-9 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^-10 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^-11 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^-12 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^-13 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^-14 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^-15 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^-16 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^-17 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^-18 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^-19 0.2 0.2 0.2 0.1 50 force
execute as @e[tag=centipede.line_barrage] at @s run particle bubble ^ ^ ^-20 0.2 0.2 0.2 0.1 50 force