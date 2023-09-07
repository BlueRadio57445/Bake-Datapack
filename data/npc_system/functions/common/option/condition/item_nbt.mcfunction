$execute store result score $item npc.count run clear @s $(id)$(tag) 0
$execute store success score $condition npc.state if score $item npc.count matches $(Count)..
