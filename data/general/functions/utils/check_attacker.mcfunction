# 執行者是被打的怪物
scoreboard players set $found_attacker general.utils 0
execute on attacker if entity @s[tag=general.attacker] run scoreboard players set $found_attacker general.utils 1
execute if score $found_attacker general.utils matches 1 run tag @s add general.attacked
