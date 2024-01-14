execute as 00000000-0000-0000-0000-000000000b00 if entity @s[tag=!centipede.barrage] run scoreboard players add $bullet centipede.cd 1
execute as 00000000-0000-0000-0000-000000000b00 if entity @s[tag=!centipede.barrage] if score $barrage centipede.cd matches 600.. run function boss:centipede/skill2/summon_barrage
execute unless entity @e[tag=centipede.shooting] run scoreboard players add $barrage centipede.cd 1
execute as @e[tag=centipede.can_be_attack] at @s if score $bullet centipede.cd matches 89..111 run function boss:centipede/skill1/test_bullet
schedule function boss:centipede/test_ability 1t