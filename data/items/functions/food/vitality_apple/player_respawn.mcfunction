function items:food/vitality_apple/scoreboard_tree/root
effect give @a[scores={items.vitality_apple.death=1..}] instant_health 1 10 true
scoreboard players set @a[scores={items.vitality_apple.death=1..}] items.vitality_apple.death 0
