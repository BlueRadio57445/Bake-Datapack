# 階段為1時，由 "demo.radio" 觸發，選擇選項1後將階段設為2
data modify storage quest:demo mysterious_stone.Start set value {Texts:['{"text":"喔你來得正好"}','{"text":"創辦人那裡似乎出了點問題"}','{"text":"要求我尋找一個叫做「神奇石頭」的道具"}','{"text":"我記得 ","extra":[{"underlined":true,"text":"測試用末天機器人"},{"text":" 那邊有很多"}]}','{"text":"不過目前我手邊要處理的事太多了"}','{"text":"能請你幫我去跟他拿嗎"}'],Options:[{Option:'{"text":"接受任務"}',React:['{"text":"拜託了!"}'],Extra:{Command:"function quest:demo/mysterious_stone/start"}},{Option:'{"text":"拒絕任務"}',React:['{"text":"沒關係"}','{"text":"那我稍後再找時間去跟他拿"}']}],Quest:1b}

# 階段為2時，由 "demo.radio" 觸發
data modify storage quest:demo mysterious_stone.Start_Remind set value {Texts:['{"text":"記得要去找 ","extra":[{"underlined":true,"text":"測試用末天機器人"},{"text":" 喔"}]}']}

# 階段為2時，由 "demo.endsky" 觸發，結束後將階段設為3，並給予道具
data modify storage quest:demo mysterious_stone.Ask set value {Texts:['{"text":"神奇石頭?"}','{"text":"我當然有啊"}','{"text":"而且現在特價中喔"}','{"text":"一顆只賣你新台幣一千元--"}','{"text":"--當然是開玩笑的"}','{"text":"按照規定這東西我得直接給你"}','{"italic":true,"text":"不然你以為我有多不想說剛剛是開玩笑的啊"}','{"text":"唉...你就拿去吧"}'],Extra:{Command:"function quest:demo/mysterious_stone/give"}}

# 階段為3時，由 "demo.endsky" 觸發
data modify storage quest:demo mysterious_stone.Ask_Remind set value {Texts:['{"text":"把神奇石頭拿去給 ","extra":[{"underlined":true,"text":"收音機器人"},{"text":" 吧"}]}','{"text":"弄丟了我可不補發喔"}']}

# 階段為3且玩家持有指定道具時，由 "demo.radio" 觸發，結束後將階段設為4，收走指定道具，並給予另外的道具
data modify storage quest:demo mysterious_stone.Got set value {Texts:['{"text":"看來你拿到神奇石頭了"}','{"text":"太感謝你了"}','{"text":"雖然算不上什麼謝禮"}','{"text":"不過還請你收下這個吧"}'],Extra:{Command:"function quest:demo/mysterious_stone/finish",Leave_Command:"function quest:demo/mysterious_stone/finish-"}}

# 階段為3且玩家無持有指定道具時，由 "demo.radio" 觸發，選擇選項2後將階段設為0
data modify storage quest:demo mysterious_stone.Why set value {Texts:['{"text":"你拿到神奇石頭了嗎?"}','{"text":"拿了但現在不在身上?"}'],Options:[{Option:'{"text":"表示馬上去拿來"}',React:['{"text":"我等你喔"}']},{Option:'{"text":"表示弄丟了(放棄任務)"}',React:['{"text":"好吧沒關係"}','{"text":"我稍後再找時間去跟他拿"}'],Extra:{Command:"function quest:demo/mysterious_stone/give_up"}}],Quest:1b}
