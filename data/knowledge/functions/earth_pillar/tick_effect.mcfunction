# 執行者是土垂(互動實體)，執行位置也是

scoreboard players remove @s knowledge.earth_pillar 1
execute as @s[scores={knowledge.earth_pillar=0}] on passengers run kill @s
kill @s[scores={knowledge.earth_pillar=0}]
