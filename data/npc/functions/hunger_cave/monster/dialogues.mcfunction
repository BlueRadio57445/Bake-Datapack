# 普通NPC的模板
data modify storage npc:hunger_cave monster set value {}

data modify storage npc:hunger_cave monster.NormalRandom set value 0b

# 清空列表
data modify storage npc:hunger_cave monster.Normal set value []
data modify storage npc:hunger_cave monster.Normal append value {Texts:['{"text":"喂!有人聽到嗎?"}'],Options:[{Option:'{"text":"回應呼喊聲"}',React:['{"text":"太...太好了!"}','{"text":"請幫幫我好嗎?"}','{"text":"那個...井的旁邊那具屍體\\n身上應該有一條繩子吧?"}','{"text":"只要把繩子的一端丟下來給我就好了\\n好心的陌生人!"}'],End:1b,Extra:{End_Command:"function quest:hunger_cave/monster/start"}}]}
#
# ...

# 清空列表
data modify storage npc:hunger_cave monster.Idle set value []
data modify storage npc:hunger_cave monster.Idle append value {Text:'{"text":"喂!有人聽到嗎?"}',Duration:2,Rest:{min:10,max:20}}
