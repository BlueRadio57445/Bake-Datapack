setblock 226 -1 965 trapped_chest[facing=west] destroy
loot insert 226 -1 965 loot boss:disaster_starver
particle minecraft:end_rod 226 -1 965 0.1 0.1 0.1 0.2 30

fill 258 6 965 260 17 965 air
spawnpoint @a 270 6 965
execute positioned 258 7 965 run playsound minecraft:block.end_portal.spawn master @a[distance=..70] 258 7 965 5