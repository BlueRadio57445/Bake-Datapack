#執行者:巨妖刀 位置:巨妖刀
say slash

execute positioned ~-.5 ~ ~-.5 run function enemy:tagvillx/big_knife/damage
scoreboard players reset @s enemy.big_knife.skill.prepare

tag @s[tag=!original] remove big_knife
