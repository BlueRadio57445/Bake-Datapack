scoreboard players reset @s effects.fire.added_max_health
damage @s 3.0 minecraft:unattributed_fireball
damage @s 4.0 minecraft:on_fire
attribute @s minecraft:generic.max_health modifier remove 00007000-0000-7000-0000-700000007000

# 避免循環執行
advancement revoke @s only effects:fire/reset_health
