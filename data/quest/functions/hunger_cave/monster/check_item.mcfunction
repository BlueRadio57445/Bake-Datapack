# 執行者是玩家
execute store success score $item_check npc.state run clear @s lead{rope:1b} 0
execute if score $item_check npc.state matches 0 run data modify storage npc_system:common This.Dialogue set from storage quest:hunger_cave monster.Start_Remind
execute if score $item_check npc.state matches 1 run data modify storage npc_system:common This.Dialogue set from storage quest:hunger_cave monster.Got