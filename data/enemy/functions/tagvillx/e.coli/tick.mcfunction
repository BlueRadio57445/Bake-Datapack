execute as @e[tag=E.coli] at @s run function enemy:tagvillx/e.coli/e.coli

#
execute as @a[tag=infected] at @s run particle glow_squid_ink ~ ~ ~ .2 .5 .2 0 10

#
#execute as @a unless score @s enemy.e.coli.shift_temp matches -1.. run scoreboard players set @s enemy.e.coli.shift_key 0

execute as @a at @s run function enemy:tagvillx/e.coli/player