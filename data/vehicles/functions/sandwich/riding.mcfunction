# 由於某種特性，直接修改驢子身上的物品資料會造成玩家GUI關閉，因此使用物品修飾器來繞過
data modify storage vehicles:sandwich Items set from entity @s HandItems[0].tag.Items
execute store success score $diff vehicles.state run data modify storage vehicles:sandwich Items set from entity @s Items
execute if score $diff vehicles.state matches 1 run function vehicles:sandwich/stuffing_check
execute if predicate vehicles:sandwich/missing_saddle at @s run function vehicles:sandwich/missing_saddle

execute if score @s vehicles.sandwich.fly matches 1 run function vehicles:sandwich/fly/main
