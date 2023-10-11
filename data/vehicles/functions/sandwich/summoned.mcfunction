advancement revoke @s only vehicles:summoned_sandwich
item modify entity @s weapon.mainhand vehicles:sandwich_bag
function general:player_data/get_holding
data remove storage vehicles:sandwich temp
execute store result score $temp vehicles.state if data storage general:utils output.mainhand.tag.sandwich{bag:1b}
execute if score $temp vehicles.state matches 1 run data modify storage vehicles:sandwich temp set from storage general:utils output.mainhand
execute if score $temp vehicles.state matches 0 run data modify storage vehicles:sandwich temp set from storage general:utils output.offhand
execute if data storage vehicles:sandwich temp.tag.cooldown run function vehicles:sandwich/cooldown_check
execute unless data storage vehicles:sandwich temp.tag.cooldown run function vehicles:sandwich/summon_succeeded
