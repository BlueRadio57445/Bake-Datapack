execute at @s positioned ~ ~-1 ~ facing entity @a[limit=1,tag=items.this] feet as 00000000-0000-0000-0000-000000000000 positioned as @s run tp @s ^ ^ ^1 ~ ~
execute store result score $dx items.magnet.mot run data get entity 00000000-0000-0000-0000-000000000000 Pos[0] 5000000
execute store result score $dy items.magnet.mot run data get entity 00000000-0000-0000-0000-000000000000 Pos[1] 5000000
execute store result score $dz items.magnet.mot run data get entity 00000000-0000-0000-0000-000000000000 Pos[2] 5000000
execute store result score $ox items.magnet.mot run data get entity @s Motion[0] 100
execute store result score $oy items.magnet.mot run data get entity @s Motion[1] 100
execute store result score $oz items.magnet.mot run data get entity @s Motion[2] 100
execute if score $ox items.magnet.mot matches -3..3 run scoreboard players set $ox items.magnet.mot 0
execute if score $oy items.magnet.mot matches -3..3 run scoreboard players set $oy items.magnet.mot 0
execute if score $oz items.magnet.mot matches -3..3 run scoreboard players set $oz items.magnet.mot 0

execute store result score $ix items.magnet.pos run data get entity @s Pos[0] 100
execute store result score $iy items.magnet.pos run data get entity @s Pos[1] 100
execute store result score $iz items.magnet.pos run data get entity @s Pos[2] 100
execute store result score $px items.magnet.pos run data get entity @a[limit=1,tag=items.this] Pos[0] 100
execute store result score $py items.magnet.pos run data get entity @a[limit=1,tag=items.this] Pos[1] 100
execute store result score $pz items.magnet.pos run data get entity @a[limit=1,tag=items.this] Pos[2] 100
scoreboard players add $py items.magnet.pos 100

scoreboard players operation $fx items.magnet.dis = $px items.magnet.pos
scoreboard players operation $fy items.magnet.dis = $py items.magnet.pos
scoreboard players operation $fz items.magnet.dis = $pz items.magnet.pos
scoreboard players operation $fx items.magnet.dis -= $ix items.magnet.pos
scoreboard players operation $fy items.magnet.dis -= $iy items.magnet.pos
scoreboard players operation $fz items.magnet.dis -= $iz items.magnet.pos

scoreboard players operation $sx items.magnet.dis = $fx items.magnet.dis
scoreboard players operation $sy items.magnet.dis = $fy items.magnet.dis
scoreboard players operation $sz items.magnet.dis = $fz items.magnet.dis
scoreboard players operation $sx items.magnet.dis *= $fx items.magnet.dis
scoreboard players operation $sy items.magnet.dis *= $fy items.magnet.dis
scoreboard players operation $sz items.magnet.dis *= $fz items.magnet.dis
scoreboard players operation $sr items.magnet.dis = $sx items.magnet.dis
scoreboard players operation $sr items.magnet.dis += $sy items.magnet.dis
scoreboard players operation $sr items.magnet.dis += $sz items.magnet.dis
scoreboard players set $min items.magnet.dis 200000
scoreboard players operation $sr items.magnet.dis > $min items.magnet.dis

scoreboard players operation $mx items.magnet.mot = $dx items.magnet.mot
scoreboard players operation $my items.magnet.mot = $dy items.magnet.mot
scoreboard players operation $mz items.magnet.mot = $dz items.magnet.mot
scoreboard players operation $mx items.magnet.mot /= $sr items.magnet.dis
scoreboard players operation $my items.magnet.mot /= $sr items.magnet.dis
scoreboard players operation $mz items.magnet.mot /= $sr items.magnet.dis
scoreboard players operation $mx items.magnet.mot += $ox items.magnet.mot
scoreboard players operation $my items.magnet.mot += $oy items.magnet.mot
scoreboard players operation $mz items.magnet.mot += $oz items.magnet.mot

execute store result entity @s Motion[0] double 0.01 run scoreboard players get $mx items.magnet.mot
execute store result entity @s Motion[1] double 0.01 run scoreboard players get $my items.magnet.mot
execute store result entity @s Motion[2] double 0.01 run scoreboard players get $mz items.magnet.mot

tp 00000000-0000-0000-0000-000000000000 0.0 0.0 0.0
