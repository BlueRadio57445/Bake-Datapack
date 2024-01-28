execute store result score $count boss if entity @e[type=husk,tag=poison_starver.starver]
execute if score $count boss matches 3.. as @e[sort=arbitrary,limit=1,type=husk,tag=poison_starver.starver] at @s run particle minecraft:dust_color_transition 0.64 0.65 0.19 2 0.08 0.2 0.09 ~ ~ ~ 0.25 1 0.25 0.1 50
execute if score $count boss matches 3.. as @e[sort=arbitrary,limit=1,type=husk,tag=poison_starver.starver] at @s run tp @s ~ -100 ~
execute if score $count boss matches 3.. run kill @e[sort=arbitrary,limit=1,type=husk,tag=poison_starver.starver]
execute if score $count boss matches 3.. run function boss:poison_starver/skill1/iteration_kill