scoreboard players add $net_barrage centipede.ability 1

say hi

execute as @e[tag=centipede.net_barrage] at @s if score $net_barrage centipede.ability matches ..110 run function boss:centipede/skill2/barrage_particle
execute if score $net_barrage centipede.ability matches ..110 run schedule function boss:centipede/skill3/net_barrage 1t
execute if score $net_barrage centipede.ability matches 111.. run tag @e remove centipede.barrage