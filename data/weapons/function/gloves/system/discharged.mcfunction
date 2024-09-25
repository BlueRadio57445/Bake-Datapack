item modify entity @s weapon.mainhand weapons:gloves/discharged
advancement revoke @s only weapons:gloves/system/discharged
execute as @e[type=minecraft:arrow,distance=0..10] if data entity @s weapon.components.minecraft:custom_data.gloves run kill @s
