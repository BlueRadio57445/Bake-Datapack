# 執行者、執行位置是災厄餓死鬼
execute facing entity @p feet rotated ~180 -10 positioned 0.0 0.0 0.0 run tp 00000000-0000-0000-0000-000000000000 ^ ^ ^1.5
data modify entity @s Motion set from entity 00000000-0000-0000-0000-000000000000 Pos
tp 00000000-0000-0000-0000-000000000000 0.0 0.0 0.0

tag @s add disaster_starver.jumping

scoreboard players set @s boss.time1 0
function boss:disaster_starver/skill5/jumping_detect