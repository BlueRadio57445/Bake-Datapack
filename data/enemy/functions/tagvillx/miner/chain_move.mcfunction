# 執行者、執行位置是鉤子
execute if block ^ ^ ^0.5 air run function enemy:tagvillx/miner/chain_hook_tp
execute unless block ^ ^ ^0.5 air run function enemy:tagvillx/miner/hit_wall
execute positioned ~-.5 ~ ~-.5 if entity @a[dx=0,dy=0,dz=0] run function enemy:tagvillx/miner/hit_player