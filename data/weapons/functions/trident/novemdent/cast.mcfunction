# 執行者、執行位置是九叉戟(type=trident)
data modify storage weapons:trident novemdent.mx set from entity @s Motion[0]
data modify storage weapons:trident novemdent.my set from entity @s Motion[1]
data modify storage weapons:trident novemdent.mz set from entity @s Motion[2]
summon trident ~ ~ ~ {Tags:["weapons.novemdent.1"]}
summon trident ~ ~ ~ {Tags:["weapons.novemdent.2"]}
function weapons:trident/novemdent/_macro with storage weapons:trident novemdent
tp 00000000-0000-0000-0000-000000000000 0.0 0.0 0.0
tag @e remove weapons.novemdent.1
tag @e remove weapons.novemdent.2

