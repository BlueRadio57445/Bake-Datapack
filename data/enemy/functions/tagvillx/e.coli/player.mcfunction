execute if entity @s[tag=infected] if score @s enemy.e.coli.shift_key matches 1.. if score @s enemy.e.coli.shift_temp matches ..0 run function enemy:tagvillx/e.coli/escape

scoreboard players operation @s enemy.e.coli.shift_temp = @s enemy.e.coli.shift_key
scoreboard players set @s enemy.e.coli.shift_key 0

execute if entity @s[tag=infected] if score @s enemy.e.coli.escape matches 15.. run function enemy:tagvillx/e.coli/escaped