# 商人NPC的格式較普通NPC略有差別
data modify storage npc:demo howhow.Trader set value 1b
data modify storage npc:demo howhow.Greeting set value []
data modify storage npc:demo howhow.Greeting append value {Texts:['{"text":":learned:"}','{"text":"地下真是個好地方"}']}

data modify storage npc:demo howhow.Normal set value []
data modify storage npc:demo howhow.Normal append value {Texts:['{"text":"願宇宙貓貓與你同在"}','{"text":"貓們"}']}
data modify storage npc:demo howhow.Normal append value {Texts:['{"text":"這世界並不缺少神奇的知識"}','{"text":"缺少的是發現"}']}
data modify storage npc:demo howhow.Normal append value {Texts:['{"text":"喔乾"}','{"text":"吃得好飽"}']}

data modify storage npc:demo howhow.Buy set value []
data modify storage npc:demo howhow.Buy append value {buy:{Name:"quest:demo_currency",Count:1b},sell:{Name:"quest:sus_mysterious_stone",Count:1b},maxUses:2147483647}

data modify storage npc:demo howhow.Sell set value []
data modify storage npc:demo howhow.Sell append value {buy:{Name:"quest:not_so_mysterious_stone",Count:64b},sell:{Name:"quest:demo_currency",Count:3b},maxUses:2147483647}
