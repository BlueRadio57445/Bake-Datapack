#箱子2(石斧，物品描述："起跳後，在下落時攻擊，就能發動爆擊。")
#生成"只會受到爆擊傷害的殭屍"

#紀錄已經執行用
scoreboard players set $chest2 region.hunger_cave.crit.hp 1

#生成"只會受到爆擊傷害的殭屍"
summon zombie -161 117 941 {Tags:["region.hunger_cave.onlycrit"],CustomNameVisible:1b,Health:200f,IsBaby:0b,CustomName:'[{"text":"只會受到爆擊傷害的殭屍","bold":true},{"text":"(0/3)","color":"red","bold":true}]',Attributes:[{Name:"generic.max_health",Base:200}]}

#殭屍回血
effect give @e[type=zombie,tag=region.hunger_cave.onlycrit] instant_damage infinite 127 true

#粒子與音效
execute at @e[type=zombie,tag=region.hunger_cave.temp] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 20 normal
execute at @e[type=zombie,tag=region.hunger_cave.temp,limit=1] run playsound minecraft:ambient.cave hostile @a ~ ~ ~ 0.5 1 0

#移除暫時標籤
tag @e[type=zombie,tag=region.hunger_cave.temp] remove region.hunger_cave.temp

advancement revoke @a only region:hunger_cave/crithit