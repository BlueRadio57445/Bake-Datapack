data modify storage general:utils output set value {}
data modify storage general:utils output.mainhand set value {}
data modify storage general:utils output.offhand set value {}
execute store result storage general:utils Holding.id int 1 run scoreboard players get @s general.id
data modify storage general:utils Holding.slot set from entity @s SelectedItemSlot
function general:utils/_macro/get_holding with storage general:utils Holding
