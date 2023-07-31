# 普通NPC的模板

data modify storage npc:hunger_cave test.NormalRandom set value 0b

# 清空列表
data modify storage npc:hunger_cave test.Normal set value []
data modify storage npc:hunger_cave test.Normal append value {Texts:['{"text":"這是一個"}','{"text":"通常的模板對話"}']}
data modify storage npc:hunger_cave test.Normal append value {Texts:['{"text":"可以用append的方式"}','{"text":"在列表中新增對話"}']}
data modify storage npc:hunger_cave test.Normal append value {Texts:['{"text":"此外可於一個對話中"}','{"text":"放入1~4個選項"}','{"text":"將在一般對話結束後進入選項介面"}'],Options:[{Option:'{"text":"選項1"}',React:['{"text":"此處格式與Texts相同"}','{"text":"可以設定多行的分支對話"}']},{Option:'{"text":"選項2"}',React:['{"text":"另外若分支對話結束"}','{"text":"將會回到選項介面"}']},{Option:'{"text":"選項3"}',React:['{"text":"更多關於選項的細節設定"}','{"text":"可以參考說明檔案"}','{"text":"也可以向技術總監詢問"}']},{Option:'{"text":"選項4"}',React:['{"text":"這是第四個分支對話!"}']}]}
# ...

data modify storage npc:hunger_cave test.Exit set value {Texts:['{"text":"離開對話選項介面時"}','{"text":"會顯示的對話"}','{"text":"不設定亦可"}']}

# 清空列表
data modify storage npc:hunger_cave test.Idle set value []
data modify storage npc:hunger_cave test.Idle append value {Text:'{"text":"閒置時定時顯示的文字1，不設定亦可"}',Duration:1,Rest:{min:10,max:20}}
data modify storage npc:hunger_cave test.Idle append value {Text:'{"text":"閒置時定時顯示的文字2，不設定亦可"}',Duration:{min:3,max:5},Rest:40}
# ...
