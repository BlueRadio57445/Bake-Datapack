$loot replace block 0 16 0 container.0 1 loot $(buy)
$loot replace block 0 16 0 container.1 1 loot $(buyB)
$loot replace block 0 16 0 container.2 1 loot $(sell)
execute if data block 0 16 0 Items[{tag:{LoreUpdate:1b}}] run function general:extra_lore/check_new_shulker
