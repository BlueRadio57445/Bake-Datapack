# 商人NPC的格式較普通NPC略有差別
data modify storage npc:demo howhow.Trader set value 1b
data modify storage npc:demo howhow.Greeting set value []
data modify storage npc:demo howhow.Greeting append value {Texts:['{"text":":learned:"}','{"text":"地下真是個好地方"}']}

data modify storage npc:demo howhow.Normal set value []
data modify storage npc:demo howhow.Normal append value {Texts:['{"text":"願宇宙貓貓與你同在"}','{"text":"貓們"}']}
data modify storage npc:demo howhow.Normal append value {Texts:['{"text":"這世界並不缺少神奇的知識"}','{"text":"缺少的是發現"}']}
data modify storage npc:demo howhow.Normal append value {Texts:['{"text":"喔乾"}','{"text":"吃得好飽"}']}

data modify storage npc:demo howhow.Buy set value []
data modify storage npc:demo howhow.Buy append value {buy:{id:"minecraft:diamond",tag:{display:{Name:'{"italic":false,"color":"aqua","text":"測試用貨幣"}',Lore:['{"color":"gray","text":"系統測試時使用的貨幣"}','{"color":"gray","text":"據某人說這貨幣一枚便擁有新台幣一千元的價值"}','{"color":"gray","text":"但那其實是騙人的"}']},demo_currency:1b},Count:1b},sell:{id:"minecraft:stone",tag:{mysterious_stone:1b,display:{Name:'{"italic":false,"color":"green","text":"神奇但不神奇的石頭"}',Lore:['{"color":"gray","text":"某種可疑的石頭"}','{"color":"gray","text":"這到底是什麼鬼"}']},not_mysterious_stone:1b},Count:1b},maxUses:2147483647}

data modify storage npc:demo howhow.Sell set value []
data modify storage npc:demo howhow.Sell append value {buy:{id:"minecraft:stone",tag:{display:{Name:'{"italic":false,"text":"沒那麼神奇的石頭"}',Lore:['{"color":"gray","text":"某種沒那麼神奇的石頭"}','{"color":"gray","text":"或許沒什麼用吧"}']},not_so_mysterious_stone:1b},Count:64b},sell:{id:"minecraft:diamond",tag:{display:{Name:'{"italic":false,"color":"aqua","text":"測試用貨幣"}',Lore:['{"color":"gray","text":"系統測試時使用的貨幣"}','{"color":"gray","text":"據某人說這貨幣一枚便擁有新台幣一千元的價值"}','{"color":"gray","text":"但那其實是騙人的"}']},demo_currency:1b},Count:3b},maxUses:2147483647}
