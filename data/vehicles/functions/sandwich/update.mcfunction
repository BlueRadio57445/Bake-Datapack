loot replace entity @s horse.14 loot items:gadget/sandwich/bag_opened
data modify storage vehicles:sandwich Entity set from entity @s {}
data remove storage vehicles:sandwich Entity.Pos
data remove storage vehicles:sandwich Entity.UUID
data remove storage vehicles:sandwich Entity.Owner
data remove storage vehicles:sandwich Entity.Rotation
data remove storage vehicles:sandwich Entity.ForcedAge
data remove storage vehicles:sandwich Entity.Passengers
data remove storage vehicles:sandwich Entity.Attributes[]
data remove storage vehicles:sandwich Entity.Items[{Slot:16b}]
item modify entity @s horse.14 vehicles:sandwich_entity
