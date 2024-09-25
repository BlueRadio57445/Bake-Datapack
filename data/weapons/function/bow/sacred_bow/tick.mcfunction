execute as @a[scores={weapons.sacred_bow.draw_time=100..}] if items entity @s weapon.* bow[custom_data~{sacred_bow:{}}] at @s anchored eyes run particle minecraft:enchant ^-.2 ^ ^.5 .1 .1 .1 0 2

scoreboard players reset @a[scores={weapons.sacred_bow.draw_time=1..},advancements={weapons:bow/sacred_bow/draw=false}] weapons.sacred_bow.draw_time
advancement revoke @a[advancements={weapons:bow/sacred_bow/draw=true}] only weapons:bow/sacred_bow/draw
