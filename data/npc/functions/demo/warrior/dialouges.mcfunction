data modify storage npc:demo warrior.NormalRandom set value 0b
data modify storage npc:demo warrior.Normal set value []
data modify storage npc:demo warrior.Normal append value {Texts:['{"text":"項鍊...我的項...咳咳咳!"}','{"text":"那是...她留給我的..."}'],Options:[{Option:'{"text":"幫助他"}',React:['{"text":"謝...咳咳，謝謝你啊"}','{"text":"我的項鍊似乎掉進水潭裡了..."}','{"text":"請務必小心啊...善良的陌生人"}'],Extra:{Command:"function quest:demo/dying_warrior/start"}},{Option:'{"text":"無視"}',React:['{"text":"咳..."}']}],Quest:1b}

data modify storage npc:demo warrior.Idle set value []
data modify storage npc:demo warrior.Idle append value {Text:'{"text":"咳...咳咳咳!!!"}',Duration:2,Rest:{min:3,max:4}}

