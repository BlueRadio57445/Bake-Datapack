execute as @e[type=minecraft:marker,tag=enemy.no_exp] on vehicle at @s run kill @e[type=minecraft:experience_orb,distance=0..1,nbt={Age:0s}]
tag @e[tag=enemy.no_exp] remove enemy.no_exp

# 特殊的 marker: 在它騎乘的實體死亡時，會執行 data.command 裡面的指令
execute as @e[type=minecraft:marker,tag=enemy.death_detect,predicate=!enemy:vehicle] run function enemy:system/vehicle_died

execute as @e[type=#object,tag=enemy.decoration,predicate=!enemy:vehicle] run kill @s
execute as @e[type=#object,tag=enemy.decoration.facing] run function enemy:decoration_facing



# ==== 飢餓洞窟 ==== #
execute as @e[type=axolotl,tag=enemy.elite_axolotl] at @s run function enemy:hunger_cave/elite_axolotl/tick
# ==== 豐饒之地 ==== #

# ==== 結晶沙灘 ==== #
execute as @e[tag=enemy.crab,type=#mobs] at @s run function enemy:crystal_beach/crab/crab
execute as @e[tag=enemy.crystal_blaze,type=blaze] at @s run function enemy:crystal_beach/crystal_blaze/crystal_blaze
# ==== 酵菌蕈島 ==== #
function enemy:radio/golden_grapes/tick
# ==== 稀糊 ==== #

# ==== 學海無崖 ==== #

# ==== 三色豆山脈 ==== #

# ==== 可可叢林 ==== #

# ==== 高筋大平原 ==== #

# ==== 至高麵包聖殿 ==== #

# ==== 糖霜極地 ==== #

# ==== 村村測試 ==== #
function enemy:tagvillx/tick
# ==== 末天測試 ==== #
function enemy:endsky/tick