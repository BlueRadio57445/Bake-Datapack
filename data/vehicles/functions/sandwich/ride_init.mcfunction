scoreboard players operation @s vehicles.rider = $system vehicles.rider
scoreboard players set @s vehicles.data 0
execute if data entity @s SaddleItem on owner run give @s minecraft:saddle
item replace entity @s weapon.mainhand with minecraft:dirt
function vehicles:sandwich/stuffing_check
