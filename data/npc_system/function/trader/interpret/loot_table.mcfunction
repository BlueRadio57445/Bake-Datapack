$loot replace block 0 16 0 container.0 1 loot $(buy)
$loot replace block 0 16 0 container.1 1 loot $(buyB)
$loot replace block 0 16 0 container.2 1 loot $(sell)
execute if items block 0 16 0 container.* *[minecraft:custom_data~{lore_update:{}}] run function general:extra_lore/check_new_shulker
