# 贏了!
setblock -288 110 991 minecraft:end_gateway
setblock -281 110 991 trapped_chest[facing=east] destroy
loot insert -281 110 991 loot boss:disaster_starver
particle minecraft:end_rod -281 111 991 0.1 0.1 0.1 0.2 30
spawnpoint @a 343 17 936
scoreboard players set $hunger_cave region 3