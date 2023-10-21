scoreboard players operation $durability.ratio general.extra_lore = $durability.current general.extra_lore
scoreboard players operation $durability.ratio general.extra_lore *= $durability.capacity general.extra_lore
scoreboard players operation $durability.ratio general.extra_lore /= $durability.max general.extra_lore
execute if score $durability.current general.extra_lore matches 2.. if score $durability.ratio general.extra_lore matches ..1 run scoreboard players set $durability.ratio general.extra_lore 2
execute if score $durability.current general.extra_lore matches 1 run scoreboard players set $durability.ratio general.extra_lore 1
scoreboard players operation $durability.ratio general.extra_lore -= $durability.capacity general.extra_lore
scoreboard players operation $durability.ratio general.extra_lore *= $-1 general.const
