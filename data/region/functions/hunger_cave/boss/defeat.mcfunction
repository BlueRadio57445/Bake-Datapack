# 由Boss的faild.mcfunction觸發
execute if score $hunger_cave region matches 0 run function region:hunger_cave/boss/boss1_defeat
execute if score $hunger_cave region matches 3 run function region:hunger_cave/boss/boss2_defeat