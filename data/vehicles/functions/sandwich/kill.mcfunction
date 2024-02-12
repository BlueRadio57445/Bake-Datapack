execute if data entity @s Items[{Slot:16b}] run function vehicles:sandwich/return_item
execute on owner run ride @s dismount
execute at @s run tp @s ~ -100 ~
function general:utils/kill_above
