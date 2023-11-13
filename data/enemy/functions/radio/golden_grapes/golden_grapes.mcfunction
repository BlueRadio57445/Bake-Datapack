# 執行者、執行位置是金黃葡萄球菌

# 新的
execute if entity @s[tag=new] run function enemy:radio/golden_grapes/summon_decoration
tag @s[tag=new] remove new

# 常駐粒子效果
particle dust_color_transition 1 0.929 0.290 1 1 0.380 0.019 ~ ~1 ~ 0.15 0.5 0.15 0.01 10