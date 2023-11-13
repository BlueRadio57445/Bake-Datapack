execute store result score $timestamp enemy.reviving.timer run data get entity @s attack.timestamp
execute if score $timestamp enemy.reviving.timer >= $gametime general.utils on passengers as @s[tag=enemy.reviving.core] at @s run function enemy:endsky/reviving/killed
