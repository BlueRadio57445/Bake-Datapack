execute as @e[type=#minecraft:mobs,type=!minecraft:player,predicate=items:projectile/plate_effect] run function items:projectile/plate/effect
execute if entity @e[type=minecraft:item,predicate=items:projectile/is_broken_plate] run schedule function items:projectile/plate/area_effect 1t replace
