# 冷卻時間
scoreboard players remove @a[scores={universe.cd.test_universe2=1..}] universe.cd.test_universe2 1

# 宇宙效果

execute as @a[tag=universe.water_universe] run function universe:water_universe/tick_effect
function universe:light_universe/tick_effect