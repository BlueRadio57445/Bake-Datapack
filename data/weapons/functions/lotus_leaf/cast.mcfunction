execute anchored eyes run summon item_display ^ ^-0.5 ^ {item:{Count:1b,id:"minecraft:lily_pad"},transformation:{left_rotation:[2.0E-4f,0.7075f,0.7074f,2.0E-4f],right_rotation:[0.0f,0.0f,1.0E-4f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},Tags:[weapons.lotus_leaf]}
scoreboard players operation @e[tag=weapons.lotus_leaf,limit=1,sort=nearest] weapons.lotus_leaf.id = @s general.id
execute as @e[tag=weapons.lotus_leaf,limit=1,sort=nearest] at @s rotated as @p run tp @s ~ ~ ~ ~ ~

execute unless predicate weapons:lotus_leaf/selected_main run item replace entity @s weapon.offhand with air
execute if predicate weapons:lotus_leaf/selected_main run item replace entity @s weapon.mainhand with air


scoreboard players reset @s weapons.+10.use