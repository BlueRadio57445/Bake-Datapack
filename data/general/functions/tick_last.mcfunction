execute as @a[advancements={general:extra_lore/new=true}] run function general:extra_lore/check_new
execute as @a[advancements={general:extra_lore/durability_changed=true}] run function general:extra_lore/check_used
execute as @a[advancements={general:inventory_changed=true}] run function general:player_data/inventory

execute as @e[type=#object,scores={knowledge.object_duration=0}] on passengers run kill @s[type=#object]
kill @e[type=#object,scores={knowledge.object_duration=..0}]