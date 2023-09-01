advancement revoke @s only vehicles:summoned_baby_donkey
function general:player_data/get_holding
data remove storage vehicles:sandwich temp
execute store result score $temp vehicles.state if data storage general:utils output.mainhand.tag.sandwich{bag:1b}
execute if score $temp vehicles.state matches 1 run data modify storage vehicles:sandwich temp set from storage general:utils output.mainhand
execute if score $temp vehicles.state matches 0 run data modify storage vehicles:sandwich temp set from storage general:utils output.offhand
data modify storage vehicles:sandwich temp.Slot set value 0b
data modify block 0 16 0 Items append from storage vehicles:sandwich temp
execute if score $temp vehicles.state matches 1 run item replace entity @s weapon.mainhand from block 0 16 0 container.0
execute if score $temp vehicles.state matches 0 run item replace entity @s weapon.offhand from block 0 16 0 container.0
data remove block 0 16 0 Items[]
execute at @s run tp @e[type=minecraft:donkey,nbt={Age:-24000},distance=0..10] ~ -100 ~
