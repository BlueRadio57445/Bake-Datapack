execute as @e[type=egg,tag=lay-egg] at @s run kill @e[type=marker,tag=lay-egg.pos,limit=1,sort=nearest]
execute as @e[type=marker,tag=lay-egg.pos] at @s unless entity @e[distance=..2,type=!#items:system] summon marker run tag @s add lay-egg
execute as @e[type=marker,tag=lay-egg.pos] at @s if entity @e[distance=..2,type=!#items:system] run tag @e[type=!#items:system,sort=nearest,limit=1] add lay-egg
execute as @e[type=marker,tag=lay-egg.pos] run kill @s
execute as @e[type=egg,tag=lay-egg] at @s run summon marker ~ ~ ~ {Tags: ["lay-egg.pos"]}

scoreboard players add @e[tag=lay-egg] lay-egg.cooldown 1

effect give @e[type=!#items:system,tag=lay-egg] slowness 1 1
execute at @e[type=marker,tag=lay-egg] run effect give @e[distance=..2] slowness 1 1
execute at @e[tag=lay-egg,type=!#items:system] run particle cloud ~ ~ ~ .1 .1 .1 0 4
execute at @e[tag=lay-egg,type=marker] run particle cloud ~ ~ ~ 1 .1 1 0 4

kill @e[type=marker,tag=lay-egg,scores={lay-egg.cooldown=160}]
tag @e[tag=lay-egg,scores={lay-egg.cooldown=160}] remove lay-egg
scoreboard players reset @e[tag=!lay-egg,scores={lay-egg.cooldown=160}]