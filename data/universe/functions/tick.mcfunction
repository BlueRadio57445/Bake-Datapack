# 冷卻時間
scoreboard players remove @a[scores={universe.cd.test_universe2=1..}] universe.cd.test_universe2 1

# 宇宙效果

execute as @a[tag=universe.water_universe] run function universe:water_universe/tick_effect
function universe:light_universe/tick_effect

# 加攻擊傷害的宇宙(寫得很爛，之後還需要改)
execute as @a[predicate=universe:hold_sword,tag=universe.sword_universe] run function universe:sword_universe/enable_effect
execute as @a[predicate=universe:hold_axe,tag=universe.axe_universe] run function universe:axe_universe/enable_effect
execute as @a[predicate=universe:hold_trident,tag=universe.trident_universe] run function universe:trident_universe/enable_effect
execute as @a[predicate=universe:hold_hammer,tag=universe.hammer_universe] run function universe:hammer_universe/enable_effect

execute as @a unless entity @s[predicate=universe:hold_sword,tag=universe.sword_universe] run function universe:sword_universe/disable_effect
execute as @a unless entity @s[predicate=universe:hold_axe,tag=universe.axe_universe] run function universe:axe_universe/disable_effect
execute as @a unless entity @s[predicate=universe:hold_trident,tag=universe.trident_universe] run function universe:trident_universe/disable_effect
execute as @a unless entity @s[predicate=universe:hold_hammer,tag=universe.hammer_universe] run function universe:hammer_universe/disable_effect