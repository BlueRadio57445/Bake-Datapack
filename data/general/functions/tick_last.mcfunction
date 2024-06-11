execute as @a[advancements={general:extra_lore/new={need_update=true}}] run function general:extra_lore/check_new
execute as @a[advancements={general:extra_lore/durability_changed={durability_changed=true}}] run function general:extra_lore/check_used
execute as @a[advancements={general:extra_lore/trident_pickup={trident_pickup=true}}] run function general:extra_lore/check_used
execute as @a[advancements={general:inventory_changed={inventory_changed=true}}] run function general:player_data/inventory

execute as @e[scores={general.object.duration=0}] on passengers run kill @s
kill @e[scores={general.object.duration=..0}]

execute if data storage general:utils Execute[1] run function general:utils/execute_server
