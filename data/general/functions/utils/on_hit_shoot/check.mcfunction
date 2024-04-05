$execute as @s[scores={general.shot_$(mainhand)=1..}] run data modify storage general:utils Item set from storage general:utils output.mainhand
$execute unless data storage general:utils Item.id as @s[scores={general.shot_$(offhand)=1..}] run data modify storage general:utils Item set from storage general:utils output.offhand
