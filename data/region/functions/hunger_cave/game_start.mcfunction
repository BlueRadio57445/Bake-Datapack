# 按下開始遊戲會發生的事情
# 送大家去打Boss
execute unless score $hunger_cave region matches 0.. run tp @a[distance=..50] -262 110 991
execute unless score $hunger_cave region matches 0.. run scoreboard players set $hunger_cave region 0

execute if score $hunger_cave region matches 0 run spawnpoint @a[distance=..50] -271 110 991
execute if score $hunger_cave region matches 0 run tp @a[distance=..50] -262 110 991

execute if score $hunger_cave region matches 1 run spawnpoint @a[distance=..50] -193 95 1013
execute if score $hunger_cave region matches 1 run tp @a[distance=..50] -193 95 1013

execute if score $hunger_cave region matches 2 run spawnpoint @a[distance=..50] -339 -21 988
execute if score $hunger_cave region matches 2 run tp @a[distance=..50] -343 35 971

execute if score $hunger_cave region matches 3 run spawnpoint @a[distance=..50] 125 7 965
execute if score $hunger_cave region matches 3 run tp @a[distance=..50] 125 7 965

execute if score $hunger_cave region matches 1..3 run tag @a[distance=..50] add region.hunger_cave.defeat

schedule function region:hunger_cave/boss1 1s