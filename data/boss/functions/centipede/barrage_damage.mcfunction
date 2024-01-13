execute if entity @e[tag=centipede.barrage_datum,distance=0..1] run kill @s
execute if entity @e[tag=centipede.barrage_datum,distance=0..1] run kill @e[tag=centipede.barrage_datum]
tp @s ^ ^ ^0.1
damage @a[distance=0..1,limit=1] 5 magic by @s
particle bubble ~ ~ ~ 0.1 0.1 0.1 0.5 100 force
execute unless entity @e[tag=centipede.barrage_datum] run function boss:centipede/barrage_damage