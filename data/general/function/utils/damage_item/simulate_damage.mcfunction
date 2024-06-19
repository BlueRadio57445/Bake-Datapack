execute store result score $durability.unbreaking general.extra_lore run data get storage general:utils Item.components."minecraft:enchantments".levels."minecraft:unbreaking"
scoreboard players add $durability.unbreaking general.extra_lore 1
scoreboard players set $durability.simulate general.extra_lore 100000000
scoreboard players operation $durability.simulate general.extra_lore /= $durability.unbreaking general.extra_lore
loot replace block 0 16 0 container.1 loot general:utils/damage_item/simulate_damage
execute store result score $durability.damage general.extra_lore run data get block 0 16 0 Items[{Slot:1b}].components."minecraft:suspicious_stew_effects"[0].duration
