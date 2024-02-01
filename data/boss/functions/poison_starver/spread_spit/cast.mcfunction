execute positioned ~ ~1.6 ~ run summon minecraft:armor_stand ^ ^ ^1 {Tags:["poison_starver.spread_spit","new"],Invisible:1b,Small:1b}
execute positioned 0.0 0.0 0.0 run tp 00000000-0000-0000-0000-000000000000 ^ ^ ^1.25
execute as @e[tag=new] run data modify entity @s Motion set from entity 00000000-0000-0000-0000-000000000000 Pos
tp 00000000-0000-0000-0000-000000000000 0.0 0.0 0.0
scoreboard players set @e[tag=new] general.object.duration 80
tag @e[tag=new] remove new
