# executed by marker
execute store success score $item_check npc.state run clear @a[limit=1,tag=npc.user] prismarine_crystals{warrior_necklace:1b} 0
execute if score $item_check npc.state matches 0 run data modify entity @s data.Dialogue set from storage quest:hunger_cave dying_warrior.Start_Remind
execute if score $item_check npc.state matches 1 run data modify entity @s data.Dialogue set from storage quest:hunger_cave dying_warrior.Got