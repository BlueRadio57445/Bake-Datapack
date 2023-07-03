# 這是用schedule遞迴的函數
# 落第的時候會停下來

scoreboard players add @e[tag=disaster_starver.jumping] boss.time1 1

execute as @e[tag=disaster_starver.jumping,scores={boss.time1=14}] at @s run function boss:disaster_starver/skill5/big_jump
tag @e[tag=disaster_starver.jumping,scores={boss.time1=16}] add disaster_starver.big_jumping

execute as @e[tag=disaster_starver.big_jumping,nbt={OnGround:1b}] at @s run function boss:disaster_starver/skill5/land

execute if entity @e[tag=disaster_starver.jumping] run schedule function boss:disaster_starver/skill5/jumping_detect 1t

