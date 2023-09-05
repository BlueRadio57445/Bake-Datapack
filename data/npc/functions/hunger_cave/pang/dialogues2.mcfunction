data modify storage npc:hunger_cave pang set value {}

# 設定為商人NPC，商人會比一般NPC多一些設定可以操作
data modify storage npc:hunger_cave pang.Trader set value 1b

data modify storage npc:hunger_cave pang.NormalRandom set value 0b

# 清空列表
data modify storage npc:hunger_cave pang.Normal set value []
data modify storage npc:hunger_cave pang.Normal append value {Texts:['{"text":"謝謝你幫我找回袋子"}','{"text":"現在商店開張囉!~"}'],Once:1b}
data modify storage npc:hunger_cave pang.Normal append value {Texts:['{"text":"又看到你了"}','{"text":"要買什麼嗎?"}']}
data modify storage npc:hunger_cave pang.Normal append value {Texts:['{"text":"商品都很精良"}','{"text":"歡迎來看看喔!"}']}
data modify storage npc:hunger_cave pang.Normal append value {Texts:['{"text":"冒險時有遇到甚麼危險嗎?"}','{"text":"來我這裡補給吧!"}']}
# ...

data modify storage npc:hunger_cave pang.TraderNormalRandom set value 0b

# 清空列表
data modify storage npc:hunger_cave pang.TraderNormal set value []
#data modify storage npc:hunger_cave pang.TraderNormal append value {Texts:['{"text":"商人NPC獨有的功能"}','{"text":"在商店選項點選交談後"}','{"text":"會出現的對話"}','{"text":"這部分就可以長一些"}']}
#data modify storage npc:hunger_cave pang.TraderNormal append value {Texts:['{"text":"這邊同樣可以用append的方式"}','{"text":"新增對話"}']}
# ...

data modify storage npc:hunger_cave pang.Exit set value {Texts:['{"text":"謝謝惠顧!"}']}

# 清空列表
data modify storage npc:hunger_cave pang.Idle set value []
# ...

# 清空列表
data modify storage npc:hunger_cave pang.Buy set value []
# Buy和Sell列表的內容，會直接被填入開啟商店介面時召喚的村民，因此當作村民的nbt來填寫即可，除此之外可用Name引用戰利品表的內容(建議為單項物品之戰利品表)來取代id和tag
# 關於maxUses，當前版本填上2147483647就好，因當前並未寫上能限制購買次數的功能，每次重新召喚村民時此數字都會重置
data modify storage npc:hunger_cave pang.Buy append value {buy:{id:"rotten_flesh",Count:1b},sell:{id:"carrot",Count:1b},maxUses:2147483647}
data modify storage npc:hunger_cave pang.Buy append value {buy:{id:"bone",Count:4b},sell:{id:"cooked_mutton",Count:1b},maxUses:2147483647}
data modify storage npc:hunger_cave pang.Buy append value {buy:{id:"rotten_flesh",Count:2b},buyB:{id:"bone",Count:1b},sell:{id:"leather_helmet",Count:1b},maxUses:2147483647}
data modify storage npc:hunger_cave pang.Buy append value {buy:{id:"rotten_flesh",Count:4b},buyB:{id:"bone",Count:1b},sell:{id:"leather_chestplate",Count:1b},maxUses:2147483647}
data modify storage npc:hunger_cave pang.Buy append value {buy:{id:"rotten_flesh",Count:3b},buyB:{id:"bone",Count:1b},sell:{id:"leather_leggings",Count:1b},maxUses:2147483647}
data modify storage npc:hunger_cave pang.Buy append value {buy:{id:"rotten_flesh",Count:1b},buyB:{id:"bone",Count:1b},sell:{id:"leather_boots",Count:1b},maxUses:2147483647}
data modify storage npc:hunger_cave pang.Buy append value {buy:{id:"rotten_flesh",Count:2b},sell:{id:"wooden_sword",Count:1b},maxUses:2147483647}
data modify storage npc:hunger_cave pang.Buy append value {buy:{id:"rotten_flesh",Count:3b},sell:{id:"wooden_axe",Count:1b},maxUses:2147483647}
data modify storage npc:hunger_cave pang.Buy append value {buy:{id:"rotten_flesh",Count:3b},sell:{id:"wooden_pickaxe",Count:1b},maxUses:2147483647}
data modify storage npc:hunger_cave pang.Buy append value {buy:{id:"rotten_flesh",Count:8b},buyB:{id:"bone",Count:2b},sell:{Name:"weapons:scythe/ordinary_scythe",Count:1b},maxUses:2147483647}
# ...

# 清空列表
data modify storage npc:hunger_cave pang.Sell set value []
data modify storage npc:hunger_cave pang.Sell append value {buy:{id:"emerald",Count:1b},sell:{id:"rotten_flesh",Count:10b},maxUses:2147483647}
data modify storage npc:hunger_cave pang.Sell append value {buy:{id:"poisonous_potato",Count:3b},sell:{id:"rotten_flesh",Count:1b},maxUses:2147483647}
data modify storage npc:hunger_cave pang.Sell append value {buy:{id:"wheat",Count:5b},sell:{id:"bread",Count:1b},maxUses:2147483647}
# ...
