$execute if score $modifier.default general.extra_lore matches 0 unless score $$(type) general.extra_lore.modifier_type matches 1 run function general:extra_lore/attributes/slot {type:"$(type)"}

$execute if score $modifier.default general.extra_lore matches 0 run data modify storage general:extra_lore Modifier.text set from storage general:extra_lore modifier_texts[{name:"$(name)",type:"addition"}].text
$execute if score $modifier.default general.extra_lore matches 1 run data modify storage general:extra_lore Modifier.text set from storage general:extra_lore modifier_texts[{name:"$(name)",type:"default"}].text
execute if score $modifier.operation general.extra_lore matches 0 if data storage general:extra_lore Modifier{name:"attack_speed",type:"default"} run scoreboard players add $modifier.amount general.extra_lore 4000
execute if score $modifier.operation general.extra_lore matches 0 if data storage general:extra_lore Modifier{name:"attack_damage",type:"default"} run scoreboard players add $modifier.amount general.extra_lore 1000
execute if score $modifier.default general.extra_lore matches 1 if score $modifier.amount general.extra_lore matches 0.. run data modify storage general:extra_lore Modifier.amount_sign set value ""
execute if score $modifier.amount general.extra_lore matches ..-1 run data modify storage general:extra_lore Modifier.amount_sign set value "-"
execute if score $modifier.operation general.extra_lore matches 0 run scoreboard players operation $modifier.amount general.extra_lore /= $100 general.const
execute store success score $modifier.positive general.extra_lore if score $modifier.amount general.extra_lore matches 1..
execute if score $modifier.operation general.extra_lore matches 1 run data modify storage general:extra_lore Modifier.amount_suf set value "%"
execute if score $modifier.operation general.extra_lore matches 2 run scoreboard players operation $modifier.amount general.extra_lore /= $100 general.const
execute if score $modifier.operation general.extra_lore matches 2 run scoreboard players add $modifier.amount general.extra_lore 10
execute if score $modifier.operation general.extra_lore matches 2 run data modify storage general:extra_lore Modifier.amount_sign set value "x"

scoreboard players operation $modifier.amount_int general.extra_lore = $modifier.amount general.extra_lore
scoreboard players operation $modifier.amount_int general.extra_lore /= $10 general.const
scoreboard players operation $modifier.amount_dec general.extra_lore = $modifier.amount general.extra_lore
scoreboard players operation $modifier.amount_dec general.extra_lore %= $10 general.const
execute if score $modifier.amount general.extra_lore matches ..-1 if score $modifier.amount_dec general.extra_lore matches 1..9 run scoreboard players add $modifier.amount_int general.extra_lore 1
execute if score $modifier.amount general.extra_lore matches ..-1 if score $modifier.amount_dec general.extra_lore matches 1..9 run scoreboard players remove $modifier.amount_dec general.extra_lore 10
execute if score $modifier.amount general.extra_lore matches ..-1 if score $modifier.amount_dec general.extra_lore matches -9..-1 run scoreboard players operation $modifier.amount_dec general.extra_lore *= $-1 general.const
execute if score $modifier.amount general.extra_lore matches ..-1 run scoreboard players operation $modifier.amount_int general.extra_lore *= $-1 general.const
execute store result storage general:extra_lore Modifier.amount_int int 1 run scoreboard players get $modifier.amount_int general.extra_lore
execute store result storage general:extra_lore Modifier.amount_dec int 1 run scoreboard players get $modifier.amount_dec general.extra_lore

execute if score $modifier.default general.extra_lore matches 0 if score $modifier.positive general.extra_lore matches 0 run function general:extra_lore/attributes/addition_negative with storage general:extra_lore Modifier
execute if score $modifier.default general.extra_lore matches 0 if score $modifier.positive general.extra_lore matches 1 run function general:extra_lore/attributes/addition_positive with storage general:extra_lore Modifier 
execute if score $modifier.default general.extra_lore matches 1 if score $modifier.positive general.extra_lore matches 0 run function general:extra_lore/attributes/default_negative with storage general:extra_lore Modifier
execute if score $modifier.default general.extra_lore matches 1 if score $modifier.positive general.extra_lore matches 1 run function general:extra_lore/attributes/default_positive with storage general:extra_lore Modifier

