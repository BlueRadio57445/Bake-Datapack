advancement revoke @s only items:gadget/vitality_apple
scoreboard players add $amount items.vitality_apple 1
function items:gadget/vitality_apple/scoreboard_tree/root

tag @s add items.eat_apple
schedule function items:gadget/vitality_apple/clear_bowl 1t