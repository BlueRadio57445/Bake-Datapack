# 執行者，執行位置是玩家
advancement revoke @s only enemy:radio/golden_grapes/hurt_by_player

tag @s add this
execute at @s as @e[tag=enemy.golden_grapes,nbt={HurtTime:10s}] run function enemy:check_attacker
execute as @e[tag=attacked] at @s if predicate enemy:golden_grapes/50_prob run function enemy:radio/golden_grapes/summon_little_grape
tag @e[tag=attacked] remove attacked
tag @s remove this