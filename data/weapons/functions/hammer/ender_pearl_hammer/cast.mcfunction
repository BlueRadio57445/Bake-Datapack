# 執行者，執行位置是那個神奇的標記
playsound entity.ender_pearl.throw master @a[distance=..5] ~ ~ ~ 1 1
particle portal ~ ~1 ~ 0.3 0.3 0.3 0.1 80
summon ender_pearl ~ ~0.01 ~ {Tags:["hammer.ender_pearl_hammer"]}
data modify entity @e[limit=1,type=ender_pearl,tag=hammer.ender_pearl_hammer] Owner set from entity @p[tag=this] UUID
kill @s