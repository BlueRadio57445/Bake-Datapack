execute as @e[type=marker,tag=fire_cannon] at @s run function knowledge:fire_cannon/preload

execute if entity @e[type=marker,tag=fire_cannon] run schedule function knowledge:fire_cannon/schedule_effect 1t append
