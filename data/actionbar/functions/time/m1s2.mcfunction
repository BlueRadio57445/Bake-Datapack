data modify storage actionbar:time Output set value '{"text":" *:**"}'
execute unless score $input actionbar.time matches 0..599 run return 0
function actionbar:time/modulo
data modify block 0 16 0 Items set value [{id:"minecraft:stone",Count:1b,Slot:0b}]
item modify block 0 16 0 container.0 actionbar:time/m1s2
data modify storage actionbar:time Output set from block 0 16 0 Items[0].components."minecraft:custom_name"
data remove block 0 16 0 Items[]
