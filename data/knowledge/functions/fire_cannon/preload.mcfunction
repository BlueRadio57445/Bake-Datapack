execute at @s[scores={knowledge.fire_cannon=0}] run particle block_marker soul_fire ^1.3 ^0.0 ^
execute at @s[scores={knowledge.fire_cannon=0}] run particle block_marker soul_fire ^-0.0 ^1.3 ^
execute at @s[scores={knowledge.fire_cannon=0}] run particle block_marker soul_fire ^-1.3 ^-0.0 ^
execute at @s[scores={knowledge.fire_cannon=0}] run particle block_marker soul_fire ^0.0 ^-1.3 ^
execute at @s[scores={knowledge.fire_cannon=1}] run particle block_marker soul_fire ^1.283 ^0.203 ^
execute at @s[scores={knowledge.fire_cannon=1}] run particle block_marker soul_fire ^-0.203 ^1.283 ^
execute at @s[scores={knowledge.fire_cannon=1}] run particle block_marker soul_fire ^-1.283 ^-0.203 ^
execute at @s[scores={knowledge.fire_cannon=1}] run particle block_marker soul_fire ^0.203 ^-1.283 ^
execute at @s[scores={knowledge.fire_cannon=2}] run particle block_marker soul_fire ^1.236 ^0.401 ^
execute at @s[scores={knowledge.fire_cannon=2}] run particle block_marker soul_fire ^-0.401 ^1.236 ^
execute at @s[scores={knowledge.fire_cannon=2}] run particle block_marker soul_fire ^-1.236 ^-0.401 ^
execute at @s[scores={knowledge.fire_cannon=2}] run particle block_marker soul_fire ^0.401 ^-1.236 ^
execute at @s[scores={knowledge.fire_cannon=3}] run particle block_marker soul_fire ^1.158 ^0.59 ^
execute at @s[scores={knowledge.fire_cannon=3}] run particle block_marker soul_fire ^-0.59 ^1.158 ^
execute at @s[scores={knowledge.fire_cannon=3}] run particle block_marker soul_fire ^-1.158 ^-0.59 ^
execute at @s[scores={knowledge.fire_cannon=3}] run particle block_marker soul_fire ^0.59 ^-1.158 ^
execute at @s[scores={knowledge.fire_cannon=4}] run particle block_marker soul_fire ^1.051 ^0.764 ^
execute at @s[scores={knowledge.fire_cannon=4}] run particle block_marker soul_fire ^-0.764 ^1.051 ^
execute at @s[scores={knowledge.fire_cannon=4}] run particle block_marker soul_fire ^-1.051 ^-0.764 ^
execute at @s[scores={knowledge.fire_cannon=4}] run particle block_marker soul_fire ^0.764 ^-1.051 ^
execute at @s[scores={knowledge.fire_cannon=5}] run particle block_marker soul_fire ^0.919 ^0.919 ^
execute at @s[scores={knowledge.fire_cannon=5}] run particle block_marker soul_fire ^-0.919 ^0.919 ^
execute at @s[scores={knowledge.fire_cannon=5}] run particle block_marker soul_fire ^-0.919 ^-0.919 ^
execute at @s[scores={knowledge.fire_cannon=5}] run particle block_marker soul_fire ^0.919 ^-0.919 ^
execute at @s[scores={knowledge.fire_cannon=6}] run particle block_marker soul_fire ^0.764 ^1.051 ^
execute at @s[scores={knowledge.fire_cannon=6}] run particle block_marker soul_fire ^-1.051 ^0.764 ^
execute at @s[scores={knowledge.fire_cannon=6}] run particle block_marker soul_fire ^-0.764 ^-1.051 ^
execute at @s[scores={knowledge.fire_cannon=6}] run particle block_marker soul_fire ^1.051 ^-0.764 ^
execute at @s[scores={knowledge.fire_cannon=7}] run particle block_marker soul_fire ^0.59 ^1.158 ^
execute at @s[scores={knowledge.fire_cannon=7}] run particle block_marker soul_fire ^-1.158 ^0.59 ^
execute at @s[scores={knowledge.fire_cannon=7}] run particle block_marker soul_fire ^-0.59 ^-1.158 ^
execute at @s[scores={knowledge.fire_cannon=7}] run particle block_marker soul_fire ^1.158 ^-0.59 ^
execute at @s[scores={knowledge.fire_cannon=8}] run particle block_marker soul_fire ^0.401 ^1.236 ^
execute at @s[scores={knowledge.fire_cannon=8}] run particle block_marker soul_fire ^-1.236 ^0.401 ^
execute at @s[scores={knowledge.fire_cannon=8}] run particle block_marker soul_fire ^-0.401 ^-1.236 ^
execute at @s[scores={knowledge.fire_cannon=8}] run particle block_marker soul_fire ^1.236 ^-0.401 ^
execute at @s[scores={knowledge.fire_cannon=9}] run particle block_marker soul_fire ^0.203 ^1.283 ^
execute at @s[scores={knowledge.fire_cannon=9}] run particle block_marker soul_fire ^-1.283 ^0.203 ^
execute at @s[scores={knowledge.fire_cannon=9}] run particle block_marker soul_fire ^-0.203 ^-1.283 ^
execute at @s[scores={knowledge.fire_cannon=9}] run particle block_marker soul_fire ^1.283 ^-0.203 ^
execute at @s[scores={knowledge.fire_cannon=10}] run particle block_marker soul_fire ^0.0 ^1.3 ^
execute at @s[scores={knowledge.fire_cannon=10}] run particle block_marker soul_fire ^-1.3 ^0.0 ^
execute at @s[scores={knowledge.fire_cannon=10}] run particle block_marker soul_fire ^-0.0 ^-1.3 ^
execute at @s[scores={knowledge.fire_cannon=10}] run particle block_marker soul_fire ^1.3 ^-0.0 ^

execute at @s[scores={knowledge.fire_cannon=1..}] run playsound minecraft:block.amethyst_block.step master @a[distance=..5] ~ ~ ~ 1 1

execute at @s[scores={knowledge.fire_cannon=10}] run playsound minecraft:entity.generic.explode master @a[distance=..5] ~ ~ ~ 0.5 1
execute at @s[scores={knowledge.fire_cannon=10..}] run function knowledge:fire_cannon/shoot
kill @s[scores={knowledge.fire_cannon=10..}]

scoreboard players add @s knowledge.fire_cannon 1