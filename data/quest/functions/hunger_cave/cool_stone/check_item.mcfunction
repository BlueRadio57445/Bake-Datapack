# executed by marker
execute store success score $item_check npc.state run clear @a[limit=1,tag=npc.user] prismarine_crystals{cool_stone:1b} 0
execute if score $item_check npc.state matches 0 run data modify entity @s data.Dialogue set from storage quest:hunger_cave cool_stone.Start_Remind
execute if score $item_check npc.state matches 1 run data modify entity @s data.Dialogue set from storage quest:hunger_cave cool_stone.Got
execute if score $item_check npc.state matches 1 run clear @a prismarine_crystals{cool_stone:1b}
execute if score $item_check npc.state matches 1 run scoreboard players set $hunger_cave.cool_stone quest.state 2
