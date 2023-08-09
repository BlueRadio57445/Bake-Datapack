data modify storage quest:hunger_cave monster set value {}

# 分數為1，提醒玩家繩子的位置
data modify storage quest:hunger_cave monster.Start_Remind set value {Texts:['{"text":"繩子就在屍體的旁邊喔!"}']}

# 拿到繩子後分數為2
data modify storage quest:hunger_cave monster.Got_Rope set value {Texts:['{"text":"拿到繩子了嗎?"}','{"text":"快丟下來吧!"}'],Options:[{Option:'{"text":"丟下繩子"}',React:['{"text":"總算能出來了"}','{"text":"不過我肚子好餓啊...要不然"}','{"text":"你就給我好人做到底吧!"}'],Condition:{Item:{id:"minecraft:lead",Count:1b,tag:{rope:1b}}},Extra:{End_Command:"function quest:hunger_cave/monster/drop_rope"},End:1b},{Option:'{"text":"詢問紙條的事情"}',React:['{"text":"這種事等我出去在回答好不好?"}','{"text":"可以先把繩子丟下來嗎?"}'],Extra:{Start_Command:"function quest:hunger_cave/monster/alt_1"}}],NoExit:1b}

# 神奇的寫法，好孩子也可以學一下
data modify storage quest:hunger_cave monster.Alt_Option_1 set value {Option:'{"text":"請他先回答你的問題"}',React:['{"text":"我不知道什麼紙條...\\n難道你在懷疑我嗎?"}','{"text":"總之快把繩子丟下來吧!"}'],Extra:{Start_Command:"function quest:hunger_cave/monster/alt_2"}}
data modify storage quest:hunger_cave monster.Alt_Option_2 set value {Option:'{"text":"不丟"}',React:['{"text":"我說你到底有完沒完啊?"}','{"text":"快把繩子丟下來!"}']}

# 選擇丟下繩子後分數為3，食人魔死亡後分數為4
