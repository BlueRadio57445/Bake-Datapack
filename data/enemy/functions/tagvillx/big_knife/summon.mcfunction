#


summon skeleton ~ ~ ~ {CustomName:'[{"text":"巨妖刀","color":"light_purple"}]',Tags:["big_knife","new","original"],ArmorItems:[{},{},{id:chainmail_chestplate,Count:1},{id:player_head,tag:{display:{Name:'{"text":"Ghost Plushie"}'},SkullOwner:{Id:[I;-1289343491,-1992867464,-1359807009,289912205],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDBmN2NjZjc0ODgyNDZlNzYwOTliNTcwMzBjOTY4YTg5NGJhMTZhZDhhMjRlYTRhZWJiMmUxMGE2NThhMzNlZCJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f]}

scoreboard players operation @e[tag=big_knife,tag=new] enemy.big_knife.id = $index enemy.big_knife.id
scoreboard players add $index enemy.big_knife.id 1
tag @e[tag=big_knife,tag=new] remove new