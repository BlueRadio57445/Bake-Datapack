data modify entity @s Pos set from storage mobs:entity_follow List[0].Pos
execute on passengers run data modify entity @s Rotation set from storage mobs:entity_follow List[0].Rotation
data remove storage mobs:entity_follow List[0]
