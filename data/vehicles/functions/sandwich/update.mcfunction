item replace entity @s horse.14 with minecraft:donkey_spawn_egg{sandwich:{bag:1b,unfolded:1b}}
data modify storage vehicles:sandwich Entity set from entity @s {}
data modify storage vehicles:sandwich Entity.Tags set value ["vehicles.tag","vehicles.sandwich"]
data remove storage vehicles:sandwich Entity.Pos
data remove storage vehicles:sandwich Entity.UUID
data remove storage vehicles:sandwich Entity.Owner
data remove storage vehicles:sandwich Entity.Rotation
data remove storage vehicles:sandwich Entity.Passengers
data remove storage vehicles:sandwich Entity.Attributes[]
item modify entity @s horse.14 vehicles:sandwich_entity
