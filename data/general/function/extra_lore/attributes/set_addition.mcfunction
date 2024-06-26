$execute unless data storage general:extra_lore Attributes[] run data modify storage general:extra_lore Attributes append from storage general:extra_lore AttributeModifiers[{slot:"$(slot)"}]

data modify storage general:extra_lore Modifier set value {name:"",type:"addition",text:"",operation:"",amount_sign:"+",amount_int:0,amount_dec:0,amount_suf:"",extra_text:""}
data modify storage general:extra_lore Modifier.name set string storage general:extra_lore Attributes[0].type 10
data modify storage general:extra_lore Modifier.operation set from storage general:extra_lore Attributes[0].operation
data modify storage general:extra_lore Modifier.extra_text set from storage general:extra_lore Attributes[0].extra_text
scoreboard players set $modifier.operation general.extra_lore 0
execute if data storage general:extra_lore Modifier{operation:"add_multiplied_base"} run scoreboard players set $modifier.operation general.extra_lore 1
execute if data storage general:extra_lore Modifier{operation:"add_multiplied_total"} run scoreboard players set $modifier.operation general.extra_lore 2
execute store result score $modifier.amount general.extra_lore run data get storage general:extra_lore Attributes[0].amount 10000
execute if score $modifier.amount general.extra_lore matches ..-1 run scoreboard players add $modifier.amount general.extra_lore 1
scoreboard players operation $modifier.amount general.extra_lore /= $10 general.const

$data modify storage general:extra_lore addition set value {name:"",slot:"$(slot)"}
data modify storage general:extra_lore addition.name set from storage general:extra_lore Modifier.name
execute unless score $modifier.amount general.extra_lore matches 0 run function general:extra_lore/attributes/modify_addition with storage general:extra_lore addition

data remove storage general:extra_lore Attributes[0]
$execute if data storage general:extra_lore Attributes[] run function general:extra_lore/attributes/set_addition {slot:"$(slot)"}
