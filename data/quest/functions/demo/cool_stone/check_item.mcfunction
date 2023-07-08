# 執行者是玩家
execute store success score $output quest.item_check run clear @s clay_ball{cool_stone:1b} 0
execute if score $output quest.item_check matches 0 run data modify storage npc_system:common This.Dialogue set from storage quest:demo cool_stone.Start_Remind
execute if score $output quest.item_check matches 1 run data modify storage npc_system:common This.Dialogue set from storage quest:demo cool_stone.Got
execute if score $output quest.item_check matches 1 run clear @a clay_ball{cool_stone:1b}
execute if score $output quest.item_check matches 1 run scoreboard players set $demo.cool_stone quest.state 2