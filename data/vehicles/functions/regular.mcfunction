execute unless score @s vehicles.id = @s vehicles.id run function vehicles:init
execute as @s[scores={vehicles.rider=0..},predicate=!vehicles:player_passenger] run function vehicles:no_passenger
execute as @s[predicate=vehicles:sandwich/is_vehicle] run function vehicles:sandwich/regular
