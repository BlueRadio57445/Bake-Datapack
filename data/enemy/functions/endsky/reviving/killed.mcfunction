execute if data entity @s data.loot_table run data modify entity @s data.entity.DeathLootTable set from entity @s data.loot_table
execute unless data entity @s data.loot_table run data remove entity @s data.entity.DeathLootTable
execute on vehicle on vehicle at @s on passengers on passengers run function enemy:endsky/reviving/loot with entity @s data
function general:utils/kill_below
