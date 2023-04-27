execute as @e[type=#minecraft:mobs,tag=vehicles.tag] run function vehicles:regular
execute as @a[scores={vehicles.state=1..}] run function vehicles:riding
