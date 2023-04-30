data modify entity @s Age set value -2147483648
execute store result entity @s Air short 1 run time query gametime
execute on origin run data modify storage vehicles:follow Pos set from entity @s Pos
execute on origin run data modify storage vehicles:follow Health set from entity @s Health
execute if data storage vehicles:follow {Health:0.0f} run function vehicles:follow_end
execute store result score $temp vehicles.follow_y run data get storage vehicles:follow Pos[1] 10000
scoreboard players operation $temp vehicles.follow_y += @s vehicles.follow_y
execute store result storage vehicles:follow Pos[1] double 0.0001 run scoreboard players get $temp vehicles.follow_y
data modify entity @s Pos set from storage vehicles:follow Pos
