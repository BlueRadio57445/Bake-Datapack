data modify storage npc:hunger_cave warrior set value {}

data modify storage npc:hunger_cave warrior.NormalRandom set value 0b
data modify storage npc:hunger_cave warrior.Normal set value []
data modify storage npc:hunger_cave warrior.Normal append value {Texts:['{"text":"項鍊...\\n我的項...咳咳咳!"}','{"text":"那是...\\n她留給我的..."}'],Options:[{Option:'{"text":"幫助他"}',React:['{"text":"謝...咳咳\\n謝謝你啊"}','{"text":"我的項鍊似乎掉進水潭裡了..."}','{"text":"請務必小心啊...\\n善良的陌生人"}'],Extra:{EndCommand:"function quest:hunger_cave/dying_warrior/start"}},{Option:'{"text":"無視"}',React:['{"text":"咳..."}']}],Quest:1b}

data modify storage npc:hunger_cave warrior.Idle set value []
data modify storage npc:hunger_cave warrior.Idle append value {Text:'{"text":"咳...咳咳咳!!!"}',Duration:2,Rest:{min:5,max:10}}

