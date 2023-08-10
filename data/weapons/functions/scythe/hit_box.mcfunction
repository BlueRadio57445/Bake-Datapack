# 進度觸發，執行者是玩家
advancement revoke @s only weapons:scythe/hit_box

execute positioned ^ ^ ^4 run tag @e[distance=..3.99,type=#mobs] add find_looking.candidate
function weapons:scythe/find_looking
damage @e[tag=find_looking.result,limit=1] 1 weapons:scythe by @s
tag @e[tag=find_looking.candidate] remove find_looking.candidate
tag @e[tag=find_looking.result] remove find_looking.result

playsound block.lantern.fall master @a[distance=..10] ~ ~ ~ 0.5 2
execute anchored eyes run particle explosion ^ ^-0.26 ^1 1751 0 6137 0.001 0

item modify entity @s weapon.mainhand weapons:scythe/durability