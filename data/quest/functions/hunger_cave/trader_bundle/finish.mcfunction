scoreboard players set $hunger_cave.trader_bundle quest.state 2
scoreboard players add $system quest.version 1
scoreboard players operation @a quest.version = $system quest.version
advancement grant @a only quest:hunger_cave/trader_bundle/start
advancement grant @a only quest:hunger_cave/trader_bundle/finish

clear @s bundle{trader_bundle:1b}
function npc:hunger_cave/pang/dialogues2
# @末天!~
# dialogues2沒有用欸！
# 我預期完成任務之後，就直接改一個dialigue