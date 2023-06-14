#projectile

execute as @a[scores={items.used.snowball=1..}] run function items:projectile/snowball_check
execute as @a[scores={items.used.egg=1..}] run function items:projectile/egg_check
execute as @a[scores={items.used.lingering_potion=1..}] run function items:projectile/lingering_potion_check

#gadget

function items:gadget/flour
function items:gadget/magnet

scoreboard players set @a items.used.warped_fungus_on_a_stick 0
