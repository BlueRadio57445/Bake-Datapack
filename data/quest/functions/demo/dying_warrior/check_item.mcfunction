# 執行者是玩家
execute store result score $output quest.item_check run clear @s prismarine_crystals{warrior_necklace:1b} 0
execute if score $output quest.item_check matches 0 run data modify storage npc_system:common This.Dialogue set from storage quest:demo dying_warrior.Start_Remind
execute if score $output quest.item_check matches 1 run data modify storage npc_system:common This.Dialogue set from storage quest:demo dying_warrior.Got