execute as @e[tag=hit_player,tag=hit_by_player] at @s run function enemy:tagvillx/mushroom_man/brown/cast

#
execute as @e[tag=mushroom_skill,predicate=enemy:on_ground,type=item] at @s run function enemy:tagvillx/mushroom_man/brown/summon_mushroom

#
execute as @e[tag=mushroom_display,type=item_display] at @s run function enemy:tagvillx/mushroom_man/brown/mushroom_display