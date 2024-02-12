damage @a[distance=0..2,limit=1] 15 magic by 00000000-0000-0000-0000-000000000b00
particle end_rod ~ ~ ~ 0 0 0 0.1 0 force
kill @s[distance=40..]
execute if entity @s[distance=..40] positioned ^ ^ ^0.1 run function boss:centipede/skill2/barrage_damage