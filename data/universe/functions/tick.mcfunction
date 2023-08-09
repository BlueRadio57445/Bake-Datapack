# 冷卻時間
scoreboard players remove @a[scores={universe.cd.test_universe2=1..}] universe.cd.test_universe2 1

# 宇宙效果

execute as @a[tag=universe.2,predicate=universe:in_water] run function universe:test_universe2/tick_effect

# 苦力怕防爆，晚點補
#execute as @a[tag=universe.2] at @s run function universe:test_universe2/tick_effect