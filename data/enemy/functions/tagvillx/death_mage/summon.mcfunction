#此怪物會招喚4團沙子在周圍 4秒後生成怪物 沙團可以被打掉
#不管是主體 還是招喚出來的怪物 只要有玩家手持馬鈴薯 則無法攻擊玩家


summon wither_skeleton ~ ~ ~ {CustomName:'[{"text":"薯鈴法師","color":"gray"}]',CustomNameVisible:1b,Health:60,Tags:["death_mage"],HandItems:[{id:potato,Count:1},{id:totem_of_undying,Count:1}],ArmorItems:[{},{},{},{id:player_head,tag:{display:{Name:'{"text":"Mage"}'},SkullOwner:{Id:[I;-1800422762,1958235754,-1805020223,-862309092],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWZkODk1Y2ExMTMxZWIwOGYzNTAxNGNkNjUwOTVhNjhjNGRhMDE3OGQxZDMwNWIyZmEyOTM5NTIxM2YxYTYzMyJ9fX0="}]}}},Count:1}],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:60f}]}