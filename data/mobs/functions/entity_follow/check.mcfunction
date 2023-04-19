execute store result score $temp mobs.id run data get storage mobs:entity_follow List[0].id
execute if score @s mobs.id = $temp mobs.id run function mobs:entity_follow/apply
execute unless score @s mobs.id = $temp mobs.id run function mobs:entity_follow/kill
