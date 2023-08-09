# 重製任務的函數
scoreboard players reset $hunger_cave.dying_warrior quest.state
advancement revoke @a from quest:hunger_cave/dying_warrior/start

setblock -48 -54 991 barrel{CustomName:'{"text":"水里的裂縫"}'}
data merge block -48 -54 991 {Items:[]}
loot replace block -48 -54 991 container.13 loot quest:hunger_cave/dying_warrior/necklace

