execute as @e[type=#mobs,tag=mobs.mob] unless score @s mobs.id = @s mobs.id run function mobs:assign
data modify storage mobs:entity_follow List set value []
#execute as @e[tag=mobs.follow] run function mobs:entity_follow/test
execute as @e[type=#mobs,tag=mobs.origin] run function mobs:entity_follow/store
execute as @e[tag=mobs.follow] run function mobs:entity_follow/check
