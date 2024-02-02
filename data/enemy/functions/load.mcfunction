function enemy:tagvillx/load
function enemy:endsky/load

scoreboard objectives add enemy dummy "怪物算數學"

# ==== Demo版的區域 ==== #

scoreboard objectives add enemy.elite_axolotl.time dummy "波瀾蠑螈計時(正數)"

# ==== 豐饒之地 ==== #

# ==== 結晶沙灘 ==== #

scoreboard objectives add enemy.crab dummy "螃蟹技能(正數)"

# ==== 酵菌蕈島 ==== #
schedule function enemy:radio/golden_grapes/schedule_effect 1t
data remove storage enemy:data grapes_rotations
data modify storage enemy:data grapes_rotations append value {left_rotation:[-0.0762f,-0.4193f,-0.0544f,0.899f]}
data modify storage enemy:data grapes_rotations append value {left_rotation:[-0.039f,-0.8939f,0.1428f,0.4155f]}
data modify storage enemy:data grapes_rotations append value {left_rotation:[-0.0552f,0.2494f,0.1036f,0.9589f]}
data modify storage enemy:data grapes_rotations append value {left_rotation:[0.1189f,0.2629f,0.0568f,0.9513f]}
data modify storage enemy:data grapes_rotations append value {left_rotation:[-0.0671f,0.8949f,0.1431f,0.4039f]}
data modify storage enemy:data grapes_rotations append value {left_rotation:[-0.0796f,-0.8958f,-0.1882f,0.389f]}
# ==== 稀糊 ==== #

# ==== 學海無崖 ==== #

# ==== 三色豆山脈 ==== #

# ==== 可可叢林 ==== #

# ==== 高筋大平原 ==== #

# ==== 至高麵包聖殿 ==== #

# ==== 糖霜極地 ==== #
