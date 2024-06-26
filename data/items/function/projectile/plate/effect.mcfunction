advancement revoke @s only items:projectile/plate_effect
effect clear @s minecraft:luck
scoreboard players operation $temp items.check_time = $gametime general.utils
function effects:bleed/give {amplifier:0,duration:1}
