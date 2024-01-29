$scoreboard players operation $current actionbar.cooldown = @s $(objective)
scoreboard players operation $targetTime actionbar.cooldown += $current actionbar.cooldown
$scoreboard players set $length actionbar.cooldown $(length)
