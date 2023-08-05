tag @a remove region.hunger_cave.defeat
execute as @a run attribute @s generic.max_health modifier remove 00000000-0000-0000-0000-000000001200
scoreboard players set $amount items.vitality_apple 0
function items:food/vitality_apple/scoreboard_tree/root
