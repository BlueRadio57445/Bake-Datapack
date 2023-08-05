#======================================================
#標籤用途紀錄
#只能被爆擊殭屍的身分標籤：region.hunger_cave.onlycrit
#爆擊成功標籤：region.hunger_cave.crit
#爆擊次數1標籤：region.hunger_cave.crit1
#爆擊次數2標籤：region.hunger_cave.crit2
#======================================================

#紀錄殭屍血量
execute as @e[type=zombie,tag=region.hunger_cave.onlycrit] store result score @s region.hunger_cave.crit.hp run data get entity @s Health 1000
#tellraw @p {"score":{"name":"@e[tag=region.hunger_cave.onlycrit,limit=1]","objective":"region.hunger_cave.crit.hp"}}

#偵測攻擊者手持武器以及殭屍是否為爆擊血量，是則增加爆擊標籤
execute as @e[type=zombie,tag=region.hunger_cave.onlycrit] if score @s region.hunger_cave.crit.hp matches ..199058 on attacker unless data entity @s SelectedItem{id:"minecraft:wooden_sword"} unless data entity @s SelectedItem{id:"minecraft:stone_axe"} run tag @e[tag=region.hunger_cave.onlycrit] add region.hunger_cave.crit
execute as @e[type=zombie,tag=region.hunger_cave.onlycrit] if score @s region.hunger_cave.crit.hp matches ..196062 on attacker if data entity @s SelectedItem{id:"minecraft:wooden_sword"} run tag @e[tag=region.hunger_cave.onlycrit] add region.hunger_cave.crit
execute as @e[type=zombie,tag=region.hunger_cave.onlycrit] if score @s region.hunger_cave.crit.hp matches ..191142 on attacker if data entity @s SelectedItem{id:"minecraft:stone_axe"} run tag @e[tag=region.hunger_cave.onlycrit] add region.hunger_cave.crit

#爆擊成功更改名稱
execute as @e[type=zombie,tag=region.hunger_cave.crit,tag=!region.hunger_cave.crit1] run data merge entity @s {CustomName:'[{"text":"只會受到爆擊傷害的殭屍","bold":true},{"text":"(1/3)","color":"red","bold":true}]'}
execute as @e[type=zombie,tag=region.hunger_cave.crit,tag=region.hunger_cave.crit1,tag=!region.hunger_cave.crit2] run data merge entity @s {CustomName:'[{"text":"只會受到爆擊傷害的殭屍","bold":true},{"text":"(2/3)","color":"red","bold":true}]'}
execute as @e[type=zombie,tag=region.hunger_cave.crit,tag=region.hunger_cave.crit2] run data merge entity @s {CustomName:'[{"text":"只會受到爆擊傷害的殭屍","bold":true},{"text":"(3/3)","color":"red","bold":true}]'}

#成功爆擊3次殺死殭屍
execute as @e[type=zombie,tag=region.hunger_cave.crit,tag=region.hunger_cave.crit2] run kill @s

#紀錄被爆擊次數
execute as @e[type=zombie,tag=region.hunger_cave.crit,tag=region.hunger_cave.crit1] run tag @s add region.hunger_cave.crit2
execute as @e[type=zombie,tag=region.hunger_cave.crit,tag=!region.hunger_cave.crit1] run tag @s add region.hunger_cave.crit1

#音效(爆擊成功與爆擊失敗)
execute at @e[type=zombie,tag=region.hunger_cave.crit] run playsound entity.item.break hostile @a ~ ~ ~ 1.5 1 0
execute at @e[type=zombie,tag=region.hunger_cave.onlycrit,tag=!region.hunger_cave.crit] run playsound item.shield.block hostile @a ~ ~ ~ 1.5 1 0

#移除爆擊標籤
tag @e[type=zombie,tag=region.hunger_cave.onlycrit] remove region.hunger_cave.crit

#回復殭屍血量
execute as @e[type=zombie,tag=region.hunger_cave.onlycrit] run data modify entity @s Health set value 200

#重置advancement
advancement revoke @s only region:hunger_cave/tutorial/crithit