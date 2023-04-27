execute store success score @s vehicles.sandwich.speed if data entity @s Items[{tag:{sandwich:{speed:1b}}}]
execute store success score @s vehicles.sandwich.jump_boost if data entity @s Items[{tag:{sandwich:{jump_boost:1b}}}]
execute store success score @s vehicles.sandwich.health_boost if data entity @s Items[{tag:{sandwich:{health_boost:1b}}}]
execute store success score @s vehicles.sandwich.fly if data entity @s Items[{tag:{sandwich:{fly:1b}}}]

item modify entity @s weapon.mainhand vehicles:sandwich_items
execute if score @s vehicles.sandwich.fly matches 0 run item replace entity @s horse.saddle with minecraft:saddle{vehicle_binded:1b}
execute if score @s vehicles.sandwich.fly matches 0 run scoreboard players reset @s vehicles.prev_y_rot
execute if score @s vehicles.sandwich.fly matches 1 run item replace entity @s horse.saddle with minecraft:air
