scoreboard players add @s items.whetstone.using 1
execute as @s[scores={items.whetstone.using=1}] run playsound minecraft:block.grindstone.use player @s ~ ~ ~ 1 1
execute as @s[scores={items.whetstone.using=30}] run playsound minecraft:block.grindstone.use player @s ~ ~ ~ 1 1.05
execute as @s[scores={items.whetstone.using=30}] run function items:gadget/whetstone/apply
