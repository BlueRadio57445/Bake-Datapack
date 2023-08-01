# 由Boss的victory.mcfunction觸發
execute if score $hunger_cave region matches 3 run say 不是第0階段打贏
execute if score $hunger_cave region matches 0 run function region:hunger_cave/boss/boss1_victory