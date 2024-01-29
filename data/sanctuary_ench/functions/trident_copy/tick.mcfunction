execute as @e[type=item,predicate=sanctuary_ench:trident_copy/drop,tag=!trident_copy.checked] run function sanctuary_ench:trident_copy/drop
execute as @e[type=trident,predicate=sanctuary_ench:trident_copy/throw,tag=!trident_copy.checked] run function sanctuary_ench:trident_copy/throw 
execute as @e[type=item_display,tag=trident_bullet] at @s run function sanctuary_ench:trident_copy/bullet/move