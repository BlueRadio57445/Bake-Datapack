# 重製任務的函數
scoreboard players reset $hunger_cave.dying_warrior quest.state
advancement revoke @a from quest:hunger_cave/dying_warrior/start
function npc:hunger_cave/warrior/dialogues
function quest:hunger_cave/dying_warrior/dialogues

kill @e[tag=quest.hunger_cave.deadbody]
execute positioned 8.30 -25.00 966.29 run function npc:hunger_cave/warrior/summon

setblock -48 -54 991 barrel{CustomName:'{"text":"水里的裂縫"}'}
loot replace block -48 -54 991 container.13 loot quest:hunger_cave/dying_warrior/necklace

