scoreboard players add $bullet centipede.ability 1
execute as @e[tag=centipede.bullet] at @s run tp @s ^ ^ ^1
execute as @e[tag=centipede.bullet] at @s run particle bubble ~ ~ ~ 0.01 0.01 0.01 0.3 100 force
execute as @e[tag=centipede.bullet] at @s run damage @a[limit=1,sort=nearest,distance=0..2] 5 magic by @s
execute if score $bullet centipede.ability matches 101.. run kill @e[tag=centipede.bullet]
execute if score $bullet centipede.ability matches ..100 run schedule function boss:centipede/bullet 1t
execute if score $bullet centipede.ability matches 101.. run scoreboard players set $bullet centipede.ability 0
execute as @e[tag=centipede.bullet] at @s unless block ~ ~ ~ water run kill @s