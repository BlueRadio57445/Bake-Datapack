data modify storage general:extra_lore Modifier set value {name:"knockback_resistance",type:"default",text:'',operation:0,amount_sign:"+",amount_int:0,amount_dec:0,amount_suf:"",extra_text:""}
data modify storage general:extra_lore Modifier.text set from storage general:extra_lore modifier_texts[{name:"knockback_resistance",type:"addition"}].text
execute store result score $modifier.amount_int general.extra_lore run data get storage general:extra_lore attributes.knockback_resistance 10
scoreboard players operation $modifier.amount_dec general.extra_lore = $modifier.amount_int general.extra_lore
scoreboard players operation $modifier.amount_int general.extra_lore /= $10 general.const
scoreboard players operation $modifier.amount_dec general.extra_lore %= $10 general.const
execute store result storage general:extra_lore Modifier.amount_int int 1 run scoreboard players get $modifier.amount_int general.extra_lore
execute store result storage general:extra_lore Modifier.amount_dec int 1 run scoreboard players get $modifier.amount_dec general.extra_lore
data modify storage general:extra_lore Slot.text set from storage general:extra_lore modifier_texts[{name:"slot",type:"body"}].text
function general:extra_lore/attributes/slot_append with storage general:extra_lore Slot
function general:extra_lore/attributes/addition_positive with storage general:extra_lore Modifier
