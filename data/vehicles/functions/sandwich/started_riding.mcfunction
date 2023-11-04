execute on vehicle run tag @s add vehicles.this
scoreboard players operation $system vehicles.rider = @s general.id
scoreboard players set @s vehicles.state 1
data modify entity @e[limit=1,type=minecraft:donkey,tag=vehicles.this] Owner set from entity @s UUID
execute on vehicle run function vehicles:sandwich/ride_init
execute on vehicle run tag @s remove vehicles.this
advancement revoke @s only vehicles:sandwich/started_riding
