execute on origin run tag @s add items.this
execute at @e[tag=items.this] run tp @s ~ ~ ~
execute store result entity @s Air short 1 run time query gametime
tag @e[tag=items.this] remove items.this
schedule function items:projectile/raw_egg/follow_tick 1t replace
