playsound minecraft:block.moss.place master @a[distance=..15] ~ ~ ~
playsound minecraft:block.stone.break master @a[distance=..15] ~ ~ ~
execute rotated ~ 0 run function knowledge:earth_wall/summon_wall
schedule function knowledge:earth_wall/new_wall_init 2t append
