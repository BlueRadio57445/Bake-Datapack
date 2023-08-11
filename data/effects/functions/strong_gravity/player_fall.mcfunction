advancement revoke @s only effects:strong_gravity/fall
function effects:strong_gravity/player_falling
execute if data entity @s {OnGround:1b} run function effects:strong_gravity/player_fell
