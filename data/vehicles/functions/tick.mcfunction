execute as @e[type=minecraft:area_effect_cloud,tag=vehicles.display] run function vehicles:follow
execute as @e[type=#minecraft:mobs,tag=vehicles.tag] run function vehicles:regular
execute as @a[scores={vehicles.state=1..}] run function vehicles:riding
scoreboard players set @a[scores={vehicles.used_item_frame=1..}] vehicles.used_item_frame 0
