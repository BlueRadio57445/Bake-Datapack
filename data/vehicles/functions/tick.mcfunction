execute as @e[type=minecraft:area_effect_cloud,tag=vehicles.display] if predicate vehicles:riding_nothing run function vehicles:follow
execute as @e[type=#minecraft:mobs,tag=vehicles.tag] run function vehicles:regular
execute as @a[scores={vehicles.state=1..}] run function vehicles:riding
scoreboard players set @a[scores={vehicles.used_donkey_egg=1..}] vehicles.used_donkey_egg 0
