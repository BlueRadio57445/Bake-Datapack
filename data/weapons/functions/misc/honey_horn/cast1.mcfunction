say 1
scoreboard players set @s weapons.honey_horn.cd1 800
playsound minecraft:item.goat_horn.sound.7 master @s ~ ~ ~ 100

effect give @a[distance=..8] minecraft:strength 15 0
effect give @a[distance=..8] minecraft:regeneration 15 1
effect give @a[distance=..8] minecraft:resistance 15 0


scoreboard players reset @s weapons.use.honey_horn