execute store success score @s vehicles.sandwich.speed if data entity @s Items[{tag:{sandwich:{speed:1b}}}]
execute store success score @s vehicles.sandwich.jump_boost if data entity @s Items[{tag:{sandwich:{jump_boost:1b}}}]
execute store success score @s vehicles.sandwich.health_boost if data entity @s Items[{tag:{sandwich:{health_boost:1b}}}]
execute store success score @s vehicles.sandwich.fly if data entity @s Items[{tag:{sandwich:{fly:1b}}}]

# 由於某種特性，直接修改驢子身上的物品資料會造成玩家GUI關閉，因此使用物品修飾器來繞過
item replace entity @s horse.saddle with minecraft:air
item replace entity @s weapon.mainhand with minecraft:air
execute if data entity @s Items[{tag:{sandwich:{unfolded:1b}}}] run function vehicles:sandwich/update
execute unless data entity @s Items[{tag:{sandwich:{unfolded:1b}}}] run function vehicles:sandwich/kill
data modify storage vehicles:sandwich Items set from entity @s Items
item replace entity @s weapon.mainhand with minecraft:stone
item modify entity @s weapon.mainhand vehicles:sandwich_items

execute if score @s vehicles.sandwich.speed matches 0 run attribute @s generic.movement_speed base set 0.175
execute if score @s vehicles.sandwich.speed matches 1 run attribute @s generic.movement_speed base set 0.350
execute if score @s vehicles.sandwich.jump_boost matches 0 run attribute @s horse.jump_strength base set 0.5
execute if score @s vehicles.sandwich.jump_boost matches 1 run attribute @s horse.jump_strength base set 0.8
execute if score @s vehicles.sandwich.health_boost matches 0 run attribute @s generic.max_health base set 20.0
execute if score @s vehicles.sandwich.health_boost matches 1 run attribute @s generic.max_health base set 40.0
execute if score @s vehicles.sandwich.fly matches 0 if predicate vehicles:player_passenger run item replace entity @s horse.saddle with minecraft:saddle{vehicle_binded:1b}
