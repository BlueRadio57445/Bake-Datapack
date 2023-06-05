execute as @a[predicate=items:au04zp3] run scoreboard players add @s au04zp3.cooldown 1
execute as @a[predicate=items:au04zp3] at @s if score @s au04zp3.cooldown matches 200 run effect give @e[type=#items:bad,distance=..5] glowing 7 0 true
execute as @a[predicate=items:au04zp3] at @s if score @s au04zp3.cooldown matches 200 run effect give @e[type=#items:bad,distance=..5] slowness 4 4 true
execute as @a[predicate=items:au04zp3] if score @s au04zp3.cooldown matches 200 run scoreboard players set @s au04zp3.cooldown 0
execute as @a[predicate=!items:au04zp3] run scoreboard players set @s au04zp3.cooldown 0