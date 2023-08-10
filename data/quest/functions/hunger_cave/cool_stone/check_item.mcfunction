# 執行者是玩家
execute store success score $item_check npc.state run clear @s clay_ball{cool_stone:1b} 0
execute if score $item_check npc.state matches 0 run data modify storage npc_system:common This.Dialogue set from storage quest:hunger_cave cool_stone.Start_Remind
execute if score $item_check npc.state matches 1 run data modify storage npc_system:common This.Dialogue set from storage quest:hunger_cave cool_stone.Got
execute if score $item_check npc.state matches 1 run clear @a clay_ball{cool_stone:1b}
execute if score $item_check npc.state matches 1 run scoreboard players set $hunger_cave.cool_stone quest.state 2
