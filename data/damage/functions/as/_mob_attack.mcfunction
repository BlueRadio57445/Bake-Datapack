scoreboard players operation $amount damage = @s damage
function damage:mob_attack/root
tag @s remove damage.mob_attack
scoreboard players reset @s damage