# 執行者、執行位置是伏沙魔
execute unless score @s enemy.lurker_state matches 0.. run scoreboard players set @s enemy.lurker_state 3
execute unless block ~ ~-1 ~ sand unless block ~ ~-2 ~ sand run scoreboard players set @s enemy.lurker_state 1
execute if entity @a[distance=..3.5,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s enemy.lurker_state 2


execute if score @s enemy.lurker_state matches 1..2 run function enemy:crystal_beach/sand_lurker/unearthed
#execute if score @s enemy.lurker_state matches 0 at @s run function enemy:crystal_beach/sand_lurker/earthed


