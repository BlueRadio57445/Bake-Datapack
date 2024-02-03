# 執行者、執行位置是水晶螃蟹

# 新的
execute if entity @s[tag=new] run function enemy:crystal_beach/crab/summon_decoration
tag @s[tag=new] remove new

scoreboard players add @s enemy.crab 1
execute as @s[scores={enemy.crab=300}] run function enemy:crystal_beach/crab/skill_on
execute as @s[scores={enemy.crab=400..}] run function enemy:crystal_beach/crab/skill_off