# 執行者、執行位置是三叉戟
# 歸還三叉戟
summon item ~ ~ ~ {Tags:["trident_sweep"],Item:{id:"trident",Count:1b},PickupDelay:0}
data modify entity @e[type=item,tag=trident_sweep,limit=1] Item set from entity @s Trident