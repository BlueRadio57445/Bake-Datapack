execute on origin run scoreboard players operation $amount weapons.sacred_bow.draw_time = @s weapons.sacred_bow.draw_time

execute if score $amount weapons.sacred_bow.draw_time matches 30..59 run data modify entity @s damage set value 3.0d
execute if score $amount weapons.sacred_bow.draw_time matches 60..79 run data modify entity @s damage set value 6.0d
execute if score $amount weapons.sacred_bow.draw_time matches 80..99 run data modify entity @s damage set value 8.0d
execute if score $amount weapons.sacred_bow.draw_time matches 100.. run data modify entity @s damage set value 10.0d

execute on origin run scoreboard players reset @s weapons.sacred_bow.draw_time