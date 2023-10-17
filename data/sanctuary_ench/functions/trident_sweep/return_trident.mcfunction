# 執行者是玩家
# 歸還三叉戟

function general:utils/get_holding

data remove block 0 16 0 Items[]
data modify storage general:utils output.mainhand.Slot set value 0b
data modify block 0 16 0 Items append from storage general:utils output.mainhand
data modify storage general:utils output.offhand.Slot set value 1b
data modify block 0 16 0 Items append from storage general:utils output.offhand

execute if data storage general:utils output.mainhand.tag.sanctuary_enchs[{id:"copy"}] run item replace entity @s weapon.mainhand from block 0 16 0 container.0
execute unless data storage general:utils output.mainhand.tag.sanctuary_enchs[{id:"copy"}] if data storage general:utils output.offhand.tag.sanctuary_enchs[{id:"copy"}] run item replace entity @s weapon.offhand from block 0 16 0 container.1