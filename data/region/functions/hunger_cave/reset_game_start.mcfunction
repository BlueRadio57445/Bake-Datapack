scoreboard players reset $hunger_cave region
scoreboard players reset $tutorial region
kill @e[tag=region.hunber_cave.portal]
tag @a remove region.hunger_cave.defeat
execute as @a run attribute @s generic.max_health modifier remove 00000000-0000-0000-0000-000000001200
scoreboard players reset $amount items.vitality_apple
spawnpoint @s -77 27 15