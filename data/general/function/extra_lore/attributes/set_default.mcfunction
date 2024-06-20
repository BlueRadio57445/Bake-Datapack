$execute unless data storage general:extra_lore Attributes[] run data modify storage general:extra_lore Attributes append from storage general:extra_lore AttributeModifiers[{type:"minecraft:$(name)",slot:"$(slot)",operation:"add_value"}]
$data modify storage general:extra_lore Modifier set value {name:"$(name)",type:"default",text:"",operation:"add_value",amount_sign:"",amount_int:0,amount_dec:0,amount_suf:"",extra_text:""}
scoreboard players set $modifier.operation general.extra_lore 0
execute store result score $modifier.amount general.extra_lore run data get storage general:extra_lore Attributes[0].amount 10000
execute if score $modifier.amount general.extra_lore matches ..-1 run scoreboard players add $modifier.amount general.extra_lore 1
scoreboard players operation $modifier.amount general.extra_lore /= $10 general.const
$data modify storage general:extra_lore default set value {name:"$(name)",id:""}
data modify storage general:extra_lore default.id set from storage general:extra_lore Attributes[0].id
function general:extra_lore/attributes/modify_default with storage general:extra_lore default

data remove storage general:extra_lore Attributes[]
