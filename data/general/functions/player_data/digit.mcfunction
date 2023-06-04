scoreboard players operation $temp general.id = @s general.id
scoreboard players operation $D0 general.id = $temp general.id
scoreboard players operation $D0 general.id %= $10 general.const
scoreboard players operation $temp general.id /= $10 general.const
scoreboard players operation $D1 general.id = $temp general.id
scoreboard players operation $D1 general.id %= $10 general.const
scoreboard players operation $temp general.id /= $10 general.const
scoreboard players operation $D2 general.id = $temp general.id
scoreboard players operation $D2 general.id %= $10 general.const
scoreboard players operation $temp general.id /= $10 general.const
scoreboard players operation $D3 general.id = $temp general.id
scoreboard players operation $D3 general.id %= $10 general.const
scoreboard players reset $temp general.id
