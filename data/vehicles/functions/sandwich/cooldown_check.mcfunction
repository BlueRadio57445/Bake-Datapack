execute store result score $time vehicles.cooldown run time query gametime
execute store result score $item vehicles.cooldown run data get storage vehicles:sandwich temp.tag.cooldown
scoreboard players operation $time vehicles.cooldown -= $item vehicles.cooldown
execute if score $time vehicles.cooldown matches ..-1 run function vehicles:sandwich/failed