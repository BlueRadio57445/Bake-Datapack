data modify storage general:extra_lore Item.Slot set value 0b
data modify block 0 16 0 Items append from storage general:extra_lore Item

execute if score $slot general.extra_lore matches 0 run item replace entity @s container.0 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 1 run item replace entity @s container.1 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 2 run item replace entity @s container.2 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 3 run item replace entity @s container.3 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 4 run item replace entity @s container.4 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 5 run item replace entity @s container.5 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 6 run item replace entity @s container.6 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 7 run item replace entity @s container.7 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 8 run item replace entity @s container.8 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 9 run item replace entity @s container.9 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 10 run item replace entity @s container.10 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 11 run item replace entity @s container.11 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 12 run item replace entity @s container.12 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 13 run item replace entity @s container.13 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 14 run item replace entity @s container.14 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 15 run item replace entity @s container.15 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 16 run item replace entity @s container.16 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 17 run item replace entity @s container.17 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 18 run item replace entity @s container.18 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 19 run item replace entity @s container.19 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 20 run item replace entity @s container.20 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 21 run item replace entity @s container.21 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 22 run item replace entity @s container.22 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 23 run item replace entity @s container.23 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 24 run item replace entity @s container.24 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 25 run item replace entity @s container.25 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 26 run item replace entity @s container.26 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 27 run item replace entity @s container.27 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 28 run item replace entity @s container.28 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 29 run item replace entity @s container.29 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 30 run item replace entity @s container.30 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 31 run item replace entity @s container.31 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 32 run item replace entity @s container.32 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 33 run item replace entity @s container.33 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 34 run item replace entity @s container.34 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 35 run item replace entity @s container.35 from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 100 run item replace entity @s armor.feet from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 101 run item replace entity @s armor.legs from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 102 run item replace entity @s armor.chest from block 0 16 0 container.0
execute if score $slot general.extra_lore matches 103 run item replace entity @s armor.head from block 0 16 0 container.0
execute if score $slot general.extra_lore matches -106 run item replace entity @s weapon.offhand from block 0 16 0 container.0

data remove block 0 16 0 Items[]
