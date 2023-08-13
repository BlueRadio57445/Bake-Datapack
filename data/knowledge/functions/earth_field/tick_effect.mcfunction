# 執行者是花園(互動實體)，執行位置也是

scoreboard players remove @s knowledge.object_duration 1
execute as @s[scores={knowledge.object_duration=0}] on passengers run kill @s
kill @s[scores={knowledge.object_duration=0}]
