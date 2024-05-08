scoreboard players reset @s effects.fire.added_max_health
execute store result score $temp effects.state run data get entity @s Fire 1
scoreboard players operation @s effects.fire.prev_duration = $temp effects.state
scoreboard players operation @s effects.fire.prev_duration /= $20 general.const
scoreboard players operation $temp effects.state %= $20 general.const
damage @s 3.0 minecraft:unattributed_fireball
execute if score $temp effects.state matches 0 run damage @s 4.0 minecraft:on_fire
attribute @s minecraft:generic.max_health modifier remove 00007000-0000-7000-0000-700000007000

# 避免循環執行
advancement revoke @s only effects:fire/reset_health
