# 執行者、執行位置是災厄餓死鬼

scoreboard players add @s boss.time1 1

execute as @s[scores={boss.time1=14}] run function boss:poison_starver/skill5/big_jump
tag @s[scores={boss.time1=16}] add poison_starver.big_jumping

data modify entity @s[tag=poison_starver.big_jumping] FallDistance set value 0.0f
execute as @s[tag=poison_starver.big_jumping,nbt={OnGround:1b}] run function boss:poison_starver/skill5/land