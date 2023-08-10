scoreboard players reset $is_loot quest.state
execute store result score $is_loot quest.state run loot give @s loot universe:bundle
execute if score $is_loot quest.state matches 0 run loot spawn ~ ~ ~ loot universe:bundle

scoreboard players reset $is_loot quest.state
execute store result score $is_loot quest.state run loot give @s loot universe:water_universe
execute if score $is_loot quest.state matches 0 run loot spawn ~ ~ ~ loot universe:water_universe

#scoreboard players reset $is_loot quest.state