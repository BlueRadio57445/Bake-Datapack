scoreboard players operation @s vehicles.rider = $system vehicles.rider
scoreboard players reset @s vehicles.user
scoreboard players operation $temp vehicles.id = @s vehicles.id
execute as @e[type=minecraft:area_effect_cloud,tag=vehicles.display] if score @s vehicles.id = $temp vehicles.id run ride @s mount @e[limit=1,type=minecraft:donkey,tag=vehicles.this]
execute if data entity @s SaddleItem on owner run give @s minecraft:saddle
item replace entity @s horse.saddle with minecraft:air
function vehicles:sandwich/stuffing_check
