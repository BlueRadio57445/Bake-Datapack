execute store result entity @s[type=item] Item.tag.copy_id int 1 run data get storage sanctuary_ench:data copy_id
execute store result entity @s[type=trident] Trident.tag.copy_id int 1 run data get storage sanctuary_ench:data copy_id
data modify storage sanctuary_ench:data copy_id append from entity @s[type=item] Item.Count
data modify storage sanctuary_ench:data copy_id append from entity @s[type=trident] Trident.Count