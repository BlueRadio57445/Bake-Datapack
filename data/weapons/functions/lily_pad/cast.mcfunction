execute anchored eyes run summon item_display ^ ^-0.5 ^ {item:{Count:1b,id:"minecraft:lily_pad"},transformation:{left_rotation:[2.0E-4f,0.7075f,0.7074f,2.0E-4f],right_rotation:[0.0f,0.0f,1.0E-4f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},Tags:["weapons.lily_pad","weapons.lily_pad.forward"]}
scoreboard players operation @e[tag=weapons.lily_pad,limit=1,sort=nearest] weapons.lily_pad.id = @s general.id
execute as @e[tag=weapons.lily_pad,limit=1,sort=nearest] at @s rotated as @p run tp @s ~ ~ ~ ~ ~

execute unless predicate weapons:lily_pad/selected_main run item replace entity @s weapon.offhand with air
execute if predicate weapons:lily_pad/selected_main run item replace entity @s weapon.mainhand with air


scoreboard players reset @s weapons.+10.use