data modify storage general:extra_lore Modifier set value {name:"armor",type:"default",text:"",operation:0,amount_sign:"",amount_int:0,amount_dec:0,amount_suf:"",extra_text:""}
data modify storage general:extra_lore Modifier.text set from storage general:extra_lore modifier_texts[{name:"armor",type:"default"}].text
execute store result score $modifier.amount_int general.extra_lore run data get storage general:extra_lore attributes.armor 10
scoreboard players operation $modifier.amount_dec general.extra_lore = $modifier.amount_int general.extra_lore
scoreboard players operation $modifier.amount_int general.extra_lore /= $10 general.const
scoreboard players operation $modifier.amount_dec general.extra_lore %= $10 general.const
execute store result storage general:extra_lore Modifier.amount_int int 1 run scoreboard players get $modifier.amount_int general.extra_lore
execute store result storage general:extra_lore Modifier.amount_dec int 1 run scoreboard players get $modifier.amount_dec general.extra_lore
function general:extra_lore/attributes/default_positive with storage general:extra_lore Modifier
