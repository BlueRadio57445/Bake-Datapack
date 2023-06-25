# 商人NPC的格式較普通NPC略有差別
data modify storage npc:demo davleek.Trader set value 1b
data modify storage npc:demo davleek.Greeting set value []
data modify storage npc:demo davleek.Greeting append value {Texts:['{"text":"你好啊"}','{"text":"交易系統測試中喔"}']}

data modify storage npc:demo davleek.Normal set value []
data modify storage npc:demo davleek.Normal append value {Texts:['{"text":"天天開勳~~"}']}

data modify storage npc:demo davleek.Buy set value []
data modify storage npc:demo davleek.Buy append value {buy:{Name:"quest:demo_currency",Count:12b},sell:{Name:"quest:mysterious_stone",Count:1b},maxUses:2147483647}

data modify storage npc:demo davleek.Sell set value []
data modify storage npc:demo davleek.Sell append value {buy:{id:"minecraft:leather",Count:4b},sell:{Name:"quest:demo_currency",Count:1b},maxUses:2147483647}
