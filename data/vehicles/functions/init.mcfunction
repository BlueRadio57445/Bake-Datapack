scoreboard players operation @s vehicles.id = $system vehicles.id
execute as @s[type=minecraft:donkey,tag=vehicles.sandwich] run function vehicles:sandwich/init
scoreboard players add $system vehicles.id 1
