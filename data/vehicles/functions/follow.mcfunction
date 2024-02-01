data modify entity @s Age set value -2147483648
execute store result entity @s Air short 1 run time query gametime
execute if predicate vehicles:riding_nothing run function vehicles:follow_tp
execute on origin run data modify storage vehicles:follow Health set from entity @s Health
execute if data storage vehicles:follow {Health:0.0f} run function vehicles:follow_end
