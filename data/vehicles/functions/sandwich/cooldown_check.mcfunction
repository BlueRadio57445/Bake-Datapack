scoreboard players operation $time vehicles.cooldown = $gametime general.utils
execute store result score $item vehicles.cooldown run data get storage vehicles:sandwich temp.tag.cooldown
scoreboard players operation $time vehicles.cooldown -= $item vehicles.cooldown
execute if score $time vehicles.cooldown matches 0.. run function vehicles:sandwich/summon_succeeded
execute if score $time vehicles.cooldown matches ..-1 run function vehicles:sandwich/summon_failed
