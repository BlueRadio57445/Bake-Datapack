scoreboard players operation $system vehicles.user = @s vehicles.user
execute as @a if score @s general.id = $system vehicles.user run tag @s add vehicles.user
execute unless entity @a[tag=vehicles.user] on owner run tag @s add vehicles.user

execute if data entity @s SaddleItem unless data entity @s SaddleItem.tag{vehicle_binded:1b} at @s run give @a[limit=1,tag=vehicles.user] minecraft:saddle
execute if data entity @s SaddleItem unless data entity @s SaddleItem.tag{vehicle_binded:1b} run item replace entity @s horse.saddle with minecraft:air

data modify storage vehicles:sandwich Items set from entity @s HandItems[0].tag.Items
execute store success score $diff vehicles.state run data modify storage vehicles:sandwich Items set from entity @s Items
execute if score $diff vehicles.state matches 1 run function vehicles:sandwich/stuffing_check

execute as @s[scores={vehicles.descending=0},predicate=vehicles:sandwich/is_floating] store success score @s vehicles.descending if score @s vehicles.descending matches 0 run data modify entity @s NoAI set value 0b
execute as @s[scores={vehicles.descending=1,vehicles.sandwich.fly=1},predicate=vehicles:sandwich/is_floating] run data merge entity @s {FallDistance:0,Motion:[0.0d,-0.3d,0.0d]}
execute as @s[scores={vehicles.descending=1},predicate=!vehicles:sandwich/is_floating] on passengers run ride @s dismount
execute as @s[scores={vehicles.descending=1},predicate=!vehicles:sandwich/is_floating] store result score @s vehicles.descending run data modify entity @s NoAI set value 1b
execute as @s[scores={vehicles.descending=1},predicate=!vehicles:sandwich/is_floating] run scoreboard players set @s vehicles.descending 0

execute store result score $temp vehicles.health run data get entity @s Health 10
execute unless score @s vehicles.health = $temp vehicles.health run function vehicles:sandwich/update
scoreboard players operation @s vehicles.health = $temp vehicles.health

tag @a[tag=vehicles.user] remove vehicles.user
