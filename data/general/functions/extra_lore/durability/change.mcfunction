data modify storage general:extra_lore Item set from storage general:extra_lore Items[-1]
execute store result score $slot general.extra_lore run data get storage general:extra_lore Item.Slot
execute store result score $durability.capacity general.extra_lore run data get storage general:extra_lore Item.tag.durability.capacity
execute store result score $durability.max general.extra_lore run data get storage general:extra_lore Item.tag.durability.max
execute store result score $durability.current general.extra_lore run data get storage general:extra_lore Item.tag.durability.current
scoreboard players operation $durability.current general.extra_lore -= $durability.damage general.extra_lore
scoreboard players operation $durability.current general.extra_lore += $durability.ratio general.extra_lore
execute store result storage general:extra_lore Item.tag.durability.current int 1 run scoreboard players get $durability.current general.extra_lore
function general:extra_lore/durability/calculate
execute store result storage general:extra_lore Item.tag.Damage int 1 run scoreboard players get $durability.ratio general.extra_lore
execute store result storage general:extra_lore Item.tag.durability.ratio int 1 run scoreboard players get $durability.ratio general.extra_lore
data remove storage general:extra_lore Item.tag.display.Lore[-1]
function general:extra_lore/durability/append with storage general:extra_lore Item.tag.durability
execute if score $durability.current general.extra_lore matches ..0 run data remove storage general:extra_lore Item.id
function general:extra_lore/replace
