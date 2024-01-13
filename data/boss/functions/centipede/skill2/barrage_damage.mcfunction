damage @a[distance=0..1,limit=1] 5 magic by 00000000-0000-0000-0000-000000000b00
particle end_rod ~ ~ ~ 0 0 0 0.1 0 force
particle bubble ~ ~ ~ 0.1 0.1 0.1 0.5 5 force
kill @s[distance=40..]
execute if entity @s[distance=..40] positioned ^ ^ ^0.1 run function boss:centipede/skill2/barrage_damage
