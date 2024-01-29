# 執行者、執行位置是玩家(或使用橫掃的怪物)
# 特效
scoreboard players set @s s_ench.trident_sweep.animation 360
function sanctuary_ench:trident_sweep/animation/animation

# 音效
playsound minecraft:item.trident.riptide_1 master @a[distance=..15] ~ ~ ~

# 傷害
execute as @e[distance=0.5..6,type=#mobs] run damage @s 5 minecraft:trident