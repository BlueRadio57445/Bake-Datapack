scoreboard players operation @s vehicles.user = @a[limit=1,tag=vehicles.user] general.id
execute if data entity @s SaddleItem run give @a[limit=1,tag=vehicles.user,gamemode=!creative] saddle 1
execute if data entity @s SaddleItem run item replace entity @s horse.saddle with minecraft:air
