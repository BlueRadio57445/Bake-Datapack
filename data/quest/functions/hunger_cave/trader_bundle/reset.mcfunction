# 重製任務的函數
scoreboard players reset $hunger_cave.trader_bundle quest.state
advancement revoke @a only quest:hunger_cave/trader_bundle/start
advancement revoke @a only quest:hunger_cave/trader_bundle/finish

setblock -261 7 1008 chest
data merge block -261 7 1008 {Items:[]}
loot replace block -261 7 1008 container.10 loot quest:hunger_cave/trader_bundle/bundle