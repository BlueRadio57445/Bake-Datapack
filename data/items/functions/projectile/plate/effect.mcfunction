advancement revoke @s only items:projectile/plate_effect
effect clear @s minecraft:luck
scoreboard players operation $temp items.check_time = $gametime general.utils
scoreboard players set $set effects.amplifier 0
scoreboard players set $set effects.duration 1
function effects:bleed/give
