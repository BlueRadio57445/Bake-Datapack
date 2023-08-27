execute anchored eyes run summon item_display ^ ^-0.5 ^ {item:{Count:1b,id:"minecraft:lily_pad"},transformation:{left_rotation:[2.0E-4f,0.7075f,0.7074f,2.0E-4f],right_rotation:[0.0f,0.0f,1.0E-4f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},Tags:["weapons.lily_pad","weapons.lily_pad.forward","weapons.lily_pad.new"]}
scoreboard players operation @e[tag=weapons.lily_pad.new] weapons.lily_pad.id = @s general.id
execute as @e[tag=weapons.lily_pad.new] at @s rotated as @p run tp @s ~ ~ ~ ~ ~
tag @e[tag=weapons.lily_pad.new] remove weapons.lily_pad.new

execute unless predicate weapons:misc/lily_pad/selected_main run item replace entity @s weapon.offhand with air
execute if predicate weapons:misc/lily_pad/selected_main run item replace entity @s weapon.mainhand with air


scoreboard players reset @s weapons.lily_pad.use