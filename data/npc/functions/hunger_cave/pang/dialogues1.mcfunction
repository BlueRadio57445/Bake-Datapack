data modify storage npc:hunger_cave pang set value {}

# 普通NPC的模板

data modify storage npc:hunger_cave pang.NormalRandom set value 0b

# 清空列表
data modify storage npc:hunger_cave pang.Normal set value []
data modify storage npc:hunger_cave pang.Normal append value {Texts:['{"text":"欸...欸?"}','{"text":"啊，又是一位勇者呢，幸會幸會。"}','{"text":"我叫小胖，和你一樣是一位§c烘焙勇者§0。"}','{"text":"同時，我也在這裡做些小買賣"}'],Options:[{Option:'{"text":"什麼是烘焙勇者?"}',React:['{"text":"你似乎還不太清楚現在的狀況呢\\n我來向你解釋吧"}','{"text":"要從哪裡說起呢…"}','{"text":"你知道§6米木各§0是誰嗎?\\n就是那位創造了食物的神"}','{"text":"你可以從這裡的壁畫\\n了解§6米木各§0的歷史"}','{"text":"雖然他是這片大陸上最強的神\\n但是他在幾年前無故失蹤了"}','{"text":"總之，在你之前\\n已經有一大堆人和你一樣復活了。"}','{"text":"是因為§6米木各§0嗎？我也不確定..."}','{"text":"他們大部分都是強大的戰士、學者、魔法師..."}','{"text":"不過我卻只是一個普通人，唉..."}','{"text":"會不會只有我沒資格當§6烘焙勇者§0呢?"}']},{Option:'{"text":"交易"}',React:['{"text":"欸，你要買東西嗎?"}','{"text":"我是很樂意賣給你啦...\\n但我手邊實在沒有東西了。"}','{"text":"剩下的商品都放在袋子裡了\\n但是我沒有勇氣進去洞穴裡面找"}','{"text":"你願意幫我找回來嗎?\\n我會給你打折的!"}'],Extra:{EndCommand:"function quest:hunger_cave/trader_bundle/start"}},{Option:'{"text":"給予袋子"}',React:['{"text":"你找回我的袋子了!\\n你戰鬥能力很強呢!"}','{"text":"說不定你能成為第一位\\n成功的烘焙勇者喔?"}','{"text":"老實說吧，\\n以前看到這種人我都很忌妒"}','{"text":"畢竟我只是一個小商人\\n我甚至不知道為何§6米木各§0選中了我"}','{"text":"不過現在我已經想通了。"}','{"text":"我或許永遠無法當上\\n第一位成功的烘焙勇者…"}','{"text":"但我可以當最後一位!"}','{"text":"所以我決定留在這裡\\n幫助每一位醒來的勇者。"}','{"text":"很抱歉說了這麼多...\\n總之有空記得多來逛逛啊!"}','{"text":"前方還有數不盡的冒險等著你呢!"}','{"text":"不過請你小心..."}','{"text":"§c不是每位烘焙勇者都抱持善意"}'],End:1b,Condition:{Item:{id:"minecraft:prismarine_crystals",tag:{trader_bundle:1b},Count:1b}},Extra:{EndCommand:"function quest:hunger_cave/trader_bundle/finish"}}]}
# ...

data modify storage npc:hunger_cave pang.Exit set value {Texts:['{"text":"我的袋子..."}','{"text":"如果我再強一點的話..."}']}

# 清空列表
data modify storage npc:hunger_cave pang.Idle set value []
data modify storage npc:hunger_cave pang.Idle append value {Text:'{"text":"不在這...也不在這裡..."}',Duration:3,Rest:{min:10,max:20}}
data modify storage npc:hunger_cave pang.Idle append value {Text:'{"text":"我到底在這裡幹嘛啊?"}',Duration:{min:3,max:5},Rest:{min:10,max:20}}
# ...
