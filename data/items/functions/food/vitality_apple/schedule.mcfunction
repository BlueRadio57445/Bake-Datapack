# schedule遞迴~

execute if entity @e[type=player,scores={items.vitality_apple.death=1..}] run function items:food/vitality_apple/player_respawn

schedule function items:food/vitality_apple/schedule 4t