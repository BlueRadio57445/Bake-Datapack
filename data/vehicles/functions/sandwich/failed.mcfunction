execute at @s as @e[type=minecraft:donkey,tag=vehicles.sandwich,nbt={ForcedAge:-1}] run function vehicles:sandwich/kill
data modify storage vehicles:sandwich temp.Slot set value 0b
data modify block 0 16 0 Items append from storage vehicles:sandwich temp
execute if score $temp vehicles.state matches 1 run item replace entity @s weapon.mainhand from block 0 16 0 container.0
execute if score $temp vehicles.state matches 0 run item replace entity @s weapon.offhand from block 0 16 0 container.0
data remove block 0 16 0 Items[]
tellraw @s {"color":"red","text":"三明治驢復原中，請稍後再試"}
