execute as @e[type=item,nbt={OnGround: 1b, Item: {tag: {q06y7: 1b}}}] at @s summon marker run data merge entity @s {Tags: ["glass"]}
execute as @e[type=item,nbt={OnGround: 1b, Item: {tag: {q06y7: 1b}}}] at @s if data entity @s Item.tag.up run tag @e[type=marker,limit=1,sort=nearest] add UP
kill @e[type=item,nbt={OnGround: 1b, Item: {tag: {q06y7: 1b}}}]

scoreboard players add @e[type=marker,tag=glass] q06y7.cooldown 1

execute at @e[type=marker,tag=glass,tag=!UP] run effect give @e[type=#items:bad,distance=..2.5] slowness 1 0 true
execute at @e[type=marker,tag=glass,tag=!UP] run effect give @e[type=#items:bad,distance=..2.5] wither 5 2 true
execute at @e[type=marker,tag=glass,tag=!UP] run particle cloud ~ ~ ~ 2.5 0 2.5 0 10

execute at @e[type=marker,tag=glass,tag=UP] run effect give @e[type=#items:bad,distance=..4] slowness 1 2 true
execute at @e[type=marker,tag=glass,tag=UP] run effect give @e[type=#items:bad,distance=..4] wither 10 3 true
execute at @e[type=marker,tag=glass,tag=UP] run particle cloud ~ ~ ~ 4 0 4 0 15

kill @e[type=marker,scores={q06y7.cooldown=200}]