# 按下開始遊戲會發生的事情
# 送大家去打Boss
execute unless score $hunger_cave region matches 0.. run tp @a[distance=..50] -262 110 991
execute unless score $hunger_cave region matches 0.. run scoreboard players set $hunger_cave region 1


schedule function region:hunger_cave/boss1 1s