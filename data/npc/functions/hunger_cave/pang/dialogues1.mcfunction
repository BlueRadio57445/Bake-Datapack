# 普通NPC的模板

data modify storage npc:hunger_cave pang.NormalRandom set value 0b

# 清空列表
data modify storage npc:hunger_cave pang.Normal set value []
data modify storage npc:hunger_cave pang.Normal append value {Texts:['{"text":"诶...诶?"}','{"text":"啊，又是一位勇者呢，幸會幸會。"}','{"text":"我叫小胖，和你一樣是一位§c烘焙勇者§0。"}','{"text":"同時，我也在這裡做些小買賣"}'],Options:[{Option:'{"text":"什麼是烘焙勇者?"}',React:['{"text":"你似乎還不太清楚現在的狀況呢\\n我來向你解釋吧"}','{"text":"要從哪裡說起呢…"}','{"text":"你知道§6米木各§0是誰嗎?\\n就是那位創造了食物的神"}','{"text":"你可以從這裡的壁畫\\n了解§6米木各§0的歷史"}','{"text":"雖然他是這片大陸上最強的神\\n但是他在幾年前無故失蹤了"}','{"text":"總之，在你之前\\n已經有一大堆人和你一樣復活了。"}','{"text":"是因為§6米木各§0嗎？我也不確定..."}','{"text":"他們大部分都是強大的戰士、學者、魔法師..."}','{"text":"不過我卻只是一個普通人，唉..."}','{"text":"會不會只有我沒資格當§6烘焙勇者§0呢?"}']},{Option:'{"text":"交易"}',React:['{"text":"诶，你要買東西嗎?"}','{"text":"我是很樂意賣給你啦...\\n但我手邊實在沒有東西了。"}','剩下的商品都放在袋子裡了\\n但是我沒有勇氣進去洞穴裡面找','{"text":"你願意幫我找回來嗎?\\n我會給你打折的!"}']}]}
# ...

data modify storage npc:hunger_cave pang.Exit set value {Texts:['{"text":"離開對話選項介面時"}','{"text":"會顯示的對話"}','{"text":"不設定亦可"}']}

# 清空列表
data modify storage npchunger_cave pang.Idle set value []
data modify storage npchunger_cave pang.Idle append value {Text:'{"text":"不在這...也不在這裡..."}',Duration:3,Rest:{min:10,max:20}}
data modify storage npchunger_cave pang.Idle append value {Text:'{"text":"我到底在這裡幹嘛啊?"}',Duration:{min:3,max:5},Rest:40}
# ...
