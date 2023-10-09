# 丟袋子，清理分數寫在check_universe函數裡面
execute as @a[scores={universe.drop_bundle=1..}] run function universe:system/check_universe

# 冷卻時間
scoreboard players remove @a[scores={universe.cd.test_universe2=1..}] universe.cd.test_universe2 1

# 宇宙效果

execute as @a[tag=universe.water_universe] run function universe:water_universe/tick_effect
function universe:light_universe/tick_effect
function universe:cat_universe/tick_effect

# 加攻擊傷害的宇宙(寫得很爛，之後還需要改)
execute as @a[predicate=universe:hold_sword,tag=universe.sword_universe] run function universe:sword_universe/enable_effect
execute as @a[predicate=universe:hold_axe,tag=universe.axe_universe] run function universe:axe_universe/enable_effect
execute as @a[predicate=universe:hold_trident,tag=universe.trident_universe] run function universe:trident_universe/enable_effect
execute as @a[predicate=universe:hold_hammer,tag=universe.hammer_universe] run function universe:hammer_universe/enable_effect
execute as @a[predicate=universe:hold_scythe,tag=universe.scythe_universe] run function universe:scythe_universe/enable_effect
execute as @a[predicate=universe:hold_whip,tag=universe.whip_universe] run function universe:whip_universe/enable_effect
execute as @a[predicate=universe:hold_gloves,tag=universe.gloves_universe] run function universe:gloves_universe/enable_effect

execute as @a[tag=universe.sword_universe] unless entity @s[predicate=universe:hold_sword] run function universe:sword_universe/disable_effect
execute as @a[tag=universe.axe_universe] unless entity @s[predicate=universe:hold_axe] run function universe:axe_universe/disable_effect
execute as @a[tag=universe.trident_universe] unless entity @s[predicate=universe:hold_trident] run function universe:trident_universe/disable_effect
execute as @a[tag=universe.hammer_universe] unless entity @s[predicate=universe:hold_hammer] run function universe:hammer_universe/disable_effect
execute as @a[tag=universe.scythe_universe] unless entity @s[predicate=universe:hold_scythe] run function universe:scythe_universe/disable_effect
execute as @a[tag=universe.whip_universe] unless entity @s[predicate=universe:hold_whip] run function universe:whip_universe/disable_effect
execute as @a[tag=universe.gloves_universe] unless entity @s[predicate=universe:hold_gloves] run function universe:gloves_universe/disable_effect