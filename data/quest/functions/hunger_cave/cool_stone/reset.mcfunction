# 重製任務的函數
scoreboard players reset $hunger_cave.cool_stone quest.state
advancement revoke @a from quest:hunger_cave/cool_stone/start

setblock 38 -3 1001 barrel{CustomName:'{"text":"宇宙貓貓的考驗"}'}
data merge block 38 -3 1001 {Items:[]}
loot replace block 38 -3 1001 container.13 loot quest:hunger_cave/cool_stone/cool_stone
