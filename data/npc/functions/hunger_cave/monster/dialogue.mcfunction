# 普通NPC的模板

data modify storage npc:hunger_cave monster.NormalRandom set value 0b
data modify storage npc:hunger_cave monster.NoExit set value 1b

# 清空列表
data modify storage npc:hunger_cave monster.Normal set value []
data modify storage npc:hunger_cave monster.Normal append value {Texts:['{"text":"太...太好了!"}','{"text":"請幫幫我好嗎?"}','{"text":"那個...井的旁邊那具屍體\\n身上應該有一條繩子吧?"}','{"text":"只要把繩子丟給我就好了\\n好心的陌生人!"}'],Once:1b}
data modify storage npc:hunger_cave monster.Normal append value {Texts:['{"text":"拿到繩子了嗎?"}','{"text":"快拿給我吧!"}'],Options:[{Option:'{"text":"給他繩子"}',React:['{"text":"總算能出來了"}','{"text":"不過我肚子好餓啊...要不然"}','{"text":"你就給我好人做到底吧!"}'],Condition:{Item:{id:"minecraft:lead",Count:1b,tag:{rope:1b}}},Extra:{End_Command:"function quest:hunger_cave/monster/give_rope"},End:1b},{Option:'{"text":"不給"}',React:['{"text":"快點把繩子給我!!!"}']}]}
# ...

data modify storage npc:hunger_cave monster.Exit set value {Texts:['{"text":"離開對話選項介面時"}','{"text":"會顯示的對話"}','{"text":"不設定亦可"}']}

# 清空列表
data modify storage npchunger_cave monster.Idle set value []
data modify storage npchunger_cave monster.Idle append value {Text:'{"text":"喂!有人聽到嗎?"}',Duration:2,Rest:{min:10,max:20}}
