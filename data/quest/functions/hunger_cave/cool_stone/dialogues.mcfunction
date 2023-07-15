data modify storage quest:hunger_cave cool_stone.Start_Remind set value {Texts:['{"text":"你找到我的酷石頭了嗎?"}','{"text":"我還要透過他獲得§6奇怪的知識§r!!!"}'],Quest:1b}

data modify storage quest:hunger_cave cool_stone.Got set value {Texts:['{"text":"好耶!是我的石頭!!!"}','{"text":"你看!!!\\n是不是很像貓便便?"}','{"text":"為了答謝你\\n我要送你一個禮物!!!"}','{"text":"因為你接觸奇怪的知識\\n你的宇貓價值增加了"}','{"text":"你只要把我的禮物放到這個袋子裡"}','{"text":"就能獲得神奇的力量!!!"}','{"text":"就這樣啦!"}','{"text":"貓們!!!"}'],Extra:{End_Command:"function quest:hunger_cave/cool_stone/finish"},Quest:1b}

data modify storage quest:hunger_cave cool_stone.End set value {Texts:['{"text":"謝謝你幫我找到石頭!!!"}','{"text":"貓們!!"}'],Quest:1b}