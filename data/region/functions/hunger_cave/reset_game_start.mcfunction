scoreboard players reset $hunger_cave region
scoreboard players reset $tutorial region
fill -288 110 991 -288 112 991 air replace end_gateway
tag @a remove region.hunger_cave.defeat
execute as @a run attribute @s generic.max_health modifier remove 00000000-0000-0000-0000-000000001200
scoreboard players reset $amount items.vitality_apple
spawnpoint @s -77 27 15
execute unless entity @e[type=item_frame,tag=region.hunger_cave.key_frame] run function region:hunger_cave/key/summon_key_frame
function region:hunger_cave/key/reset_gate
function region:hunger_cave/boss/reset_gate

# 支線任務重製
function quest:hunger_cave/cool_stone/reset
function quest:hunger_cave/dying_warrior/reset
function quest:hunger_cave/monster/reset
function quest:hunger_cave/trader_bundle/reset

# Boss寶箱重製
setblock -281 110 991 air
setblock 226 -1 965 air

# 重製紀念碑
function target:reset_all