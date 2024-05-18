$execute unless data storage general:extra_lore Attributes[] run data modify storage general:extra_lore Attributes append from storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[{name:"$(name).$(type)"}]
$data modify storage general:extra_lore Modifier set value {name:"$(name)",type:"$(type)",text:"",operation:0,amount_sign:"+",amount_int:0,amount_dec:0,amount_suf:"",extra_text:""}
execute if data storage general:extra_lore Modifier{type:"hand"} run data remove storage general:extra_lore Attributes[{slot:"offhand"}]
data modify storage general:extra_lore temp.operation set from storage general:extra_lore Attributes[0].operation
scoreboard players set $modifier.operation general.extra_lore 0
execute if data storage general:extra_lore temp{operation:"multiply_base"} run scoreboard players set $modifier.operation general.extra_lore 1
execute if data storage general:extra_lore temp{operation:"multiply_total"} run scoreboard players set $modifier.operation general.extra_lore 2
execute store result score $modifier.amount general.extra_lore run data get storage general:extra_lore Attributes[0].amount 10000
execute if score $modifier.amount general.extra_lore matches ..-1 run scoreboard players add $modifier.amount general.extra_lore 1
scoreboard players operation $modifier.amount general.extra_lore /= $10 general.const
execute store success score $modifier.default general.extra_lore if data storage general:extra_lore Modifier{type:"default"}

scoreboard players set $modifier.skip general.extra_lore 0
execute if score $modifier.default general.extra_lore matches 0 if score $modifier.amount general.extra_lore matches 0 run scoreboard players set $modifier.skip general.extra_lore 1
$execute if score $modifier.skip general.extra_lore matches 0 run function general:extra_lore/attributes/modify {name:"$(name)",type:"$(type)"}

data remove storage general:extra_lore Attributes[0]
execute if data storage general:extra_lore Attributes[] run function general:extra_lore/attributes/set with storage general:extra_lore Modifier
