execute unless score $mainhand general.extra_lore.modifier_type matches 1 run function general:extra_lore/attributes/slot {type:"mainhand"}

data modify storage general:extra_lore Modifier set value {name:"attack_damage",type:"whetstone",text:"",operation:1,amount_sign:"+",amount_int:0,amount_dec:0,amount_suf:"%",extra_text:""}
data modify storage general:extra_lore Modifier.text set from storage general:extra_lore modifier_texts[{name:"attack_damage",type:"addition"}].text
$function general:extra_lore/attributes/custom/times_left {time:"$(times_left)"}
data modify storage general:extra_lore Modifier.extra_text set from storage general:extra_lore attribute_extra

execute store result score $modifier.amount general.extra_lore run data get storage general:extra_lore Item.tag.sharpened.modifier 10000
execute if score $modifier.amount general.extra_lore matches ..-1 run scoreboard players add $modifier.amount general.extra_lore 1
scoreboard players operation $modifier.amount general.extra_lore /= $10 general.const
execute if score $modifier.amount general.extra_lore matches ..-1 run data modify storage general:extra_lore Modifier.amount_sign set value "-"

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
execute store result storage general:extra_lore Item.tag.sharpened.lore_index int 1 if data storage general:extra_lore Item.tag.display.Lore[]

execute if score $modifier.positive general.extra_lore matches 0 run function general:extra_lore/attributes/addition_negative with storage general:extra_lore Modifier
execute if score $modifier.positive general.extra_lore matches 1 run function general:extra_lore/attributes/addition_positive with storage general:extra_lore Modifier 
