team add boss.no_collide "不會碰撞的隊伍"
team modify boss.no_collide collisionRule never

scoreboard objectives add boss dummy "Boss算數學"
scoreboard players set $3 boss 3

scoreboard objectives add boss.count_down dummy "Boss倒數計時"

scoreboard objectives add boss.death_in_boss deathCount "在Boss戰之中死亡"

scoreboard objectives add boss.time0 dummy "Boss用的計時器0"
scoreboard objectives add boss.time1 dummy "Boss用的計時器1"
scoreboard objectives add boss.time2 dummy "Boss用的計時器2"
scoreboard objectives add boss.time3 dummy "Boss用的計時器3"
scoreboard objectives add boss.time4 dummy "Boss用的計時器4"

scoreboard objectives add boss.count0 dummy "Boss用的計數器0"
scoreboard objectives add boss.count1 dummy "Boss用的計數器1"
scoreboard objectives add boss.count2 dummy "Boss用的計數器2"
scoreboard objectives add boss.count3 dummy "Boss用的計數器3"
scoreboard objectives add boss.count4 dummy "Boss用的計數器4"
