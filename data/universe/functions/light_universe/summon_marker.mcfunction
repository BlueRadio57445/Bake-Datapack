summon minecraft:marker ~ ~ ~ {Tags:["light_universe.marker","light_universe.new_marker"]}
execute as @e[type=marker,distance=..1,tag=light_universe.new_marker] at @s if block ~ ~ ~ light run tag @s add has_light
execute at @e[type=marker,distance=..1,tag=light_universe.marker,tag=!has_light] run setblock ~ ~ ~ light keep