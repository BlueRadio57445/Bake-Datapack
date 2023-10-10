execute if score $hunger_cave.cool_stone quest.state matches 1 unless data entity @s data.Dialogue run function quest:hunger_cave/cool_stone/check_item
execute if score $hunger_cave.cool_stone quest.state matches 2 unless data entity @s data.Dialogue run data modify entity @s data.Dialogue set from storage quest:hunger_cave cool_stone.Got
execute if score $hunger_cave.cool_stone quest.state matches 3 unless data entity @s data.Dialogue run data modify entity @s data.Dialogue set from storage quest:hunger_cave cool_stone.End
