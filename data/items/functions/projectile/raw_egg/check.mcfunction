scoreboard players set $temp items.state 0
execute on vehicle run scoreboard players set $temp items.state 1
execute if score $temp items.state matches 0 run function items:projectile/raw_egg/function
execute if score $temp items.state matches 1 run schedule function items:projectile/raw_egg/tick 1t replace
