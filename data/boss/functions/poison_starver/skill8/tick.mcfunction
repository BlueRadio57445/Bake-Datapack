# 執行者、執行位置是嘔噁餓死鬼

scoreboard players add @s boss.time1 1

execute as @s[scores={boss.time1=12}] rotated 0 0 run function boss:poison_starver/poison_bubble/cast
execute as @s[scores={boss.time1=14}] rotated 36 0 run function boss:poison_starver/poison_bubble/cast
execute as @s[scores={boss.time1=16}] rotated 72 0 run function boss:poison_starver/poison_bubble/cast
execute as @s[scores={boss.time1=18}] rotated 108 0 run function boss:poison_starver/poison_bubble/cast
execute as @s[scores={boss.time1=20}] rotated 144 0 run function boss:poison_starver/poison_bubble/cast
execute as @s[scores={boss.time1=22}] rotated 180 0 run function boss:poison_starver/poison_bubble/cast
execute as @s[scores={boss.time1=24}] rotated 216 0 run function boss:poison_starver/poison_bubble/cast
execute as @s[scores={boss.time1=26}] rotated 252 0 run function boss:poison_starver/poison_bubble/cast
execute as @s[scores={boss.time1=28}] rotated 288 0 run function boss:poison_starver/poison_bubble/cast
execute as @s[scores={boss.time1=28}] rotated 324 0 run function boss:poison_starver/poison_bubble/cast

execute as @s[scores={boss.time1=28}] run function boss:poison_starver/skill8/end