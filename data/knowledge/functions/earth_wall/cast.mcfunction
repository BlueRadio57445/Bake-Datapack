playsound minecraft:block.moss.place master @a[distance=..15] ~ ~ ~
playsound minecraft:block.stone.break master @a[distance=..15] ~ ~ ~
execute rotated ~ 0 run function knowledge:earth_wall/summon_wall
execute as @e[type=block_display,tag=new_earth_wall] store result score @s general.object.init_timestamp run schedule function knowledge:earth_wall/init_animation 2t append
scoreboard players set @e[tag=new_earth_wall] general.object.duration 200
tag @e[tag=new_earth_wall] remove new_earth_wall
