# 用遞迴執行的函數，但是他會自己停掉
# 用來生成隨機位置的marker

execute if entity @e[tag=boss.disaster_starver] run schedule function boss:disaster_starver/skill2/random_step 2s

execute at @e[tag=boss.disaster_starver] run summon marker ~ ~ ~ {Tags:["disaster_starver.random"]}
execute store result score $count boss if entity @e[type=marker,tag=disaster_starver.random]
execute if score $count boss matches 10.. run kill @e[type=marker,tag=disaster_starver.random,sort=random,limit=1]