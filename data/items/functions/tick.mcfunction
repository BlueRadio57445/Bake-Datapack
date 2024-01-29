#projectile

execute as @a[scores={items.used.snowball=1..}] run function items:projectile/snowball_check
execute as @a[scores={items.used.egg=1..}] run function items:projectile/egg_check
execute as @a[scores={items.used.lingering_potion=1..}] run function items:projectile/lingering_potion_check

#gadget

scoreboard players reset @a[scores={items.whetstone.using=1..},advancements={items:gadget/whetstone=false}] items.whetstone.using
advancement revoke @a[advancements={items:gadget/whetstone=true}] only items:gadget/whetstone

scoreboard players reset @a items.used.warped_fungus_on_a_stick
