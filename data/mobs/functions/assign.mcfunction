scoreboard players operation @s mobs.id = $system mobs.id

execute if entity @s[tag=mobs.demo.pikacnu_zombie] at @s run function mobs:demo/pikacnu_zombie/assign
scoreboard players operation @e[tag=mobs.new] mobs.id = @s mobs.id
tag @e[tag=mobs.new] remove mobs.new

scoreboard players add $system mobs.id 1
