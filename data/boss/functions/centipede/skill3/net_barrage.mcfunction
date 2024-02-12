scoreboard players add $net_barrage centipede.ability 1

execute as @e[tag=centipede.barrage_datum] at @s if score $net_barrage centipede.ability matches 1 run summon marker ~-25 ~-26 ~-25 {Tags:["centipede.net"]}
execute as @e[tag=centipede.net] at @s run function boss:centipede/skill3/summon_net

execute if score $net_barrage centipede.ability matches 1 run playsound block.anvil.fall ambient @a ~ ~ ~ 100 1 1
execute if score $net_barrage centipede.ability matches ..49 run playsound block.anvil.fall ambient @a ~ ~ ~ 100 1 1
execute if score $net_barrage centipede.ability matches ..100 run schedule function boss:centipede/skill3/net_barrage 1t
execute if score $net_barrage centipede.ability matches 101.. run tag @e remove centipede.barrage