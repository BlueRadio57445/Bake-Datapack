scoreboard objectives add vehicles.id dummy
scoreboard objectives add vehicles.const dummy
scoreboard objectives add vehicles.state dummy
scoreboard objectives add vehicles.rider dummy
scoreboard objectives add vehicles.user dummy
scoreboard objectives add vehicles.calc dummy
scoreboard objectives add vehicles.prev_x_rot dummy
scoreboard objectives add vehicles.x_mot dummy
scoreboard objectives add vehicles.y_mot dummy
scoreboard objectives add vehicles.z_mot dummy
scoreboard objectives add vehicles.dir dummy
scoreboard objectives add vehicles.accel dummy
scoreboard objectives add vehicles.moving dummy
scoreboard objectives add vehicles.descending dummy
scoreboard objectives add vehicles.health dummy
scoreboard objectives add vehicles.follow_y dummy
scoreboard objectives add vehicles.cooldown dummy
scoreboard objectives add vehicles.used_item_frame minecraft.used:minecraft.item_frame
scoreboard objectives remove vehicles.used_donkey_egg

scoreboard objectives add vehicles.sandwich.speed dummy
scoreboard objectives add vehicles.sandwich.jump_boost dummy
scoreboard objectives add vehicles.sandwich.health_boost dummy
scoreboard objectives add vehicles.sandwich.fly dummy

scoreboard players set $-1 vehicles.const -1
scoreboard players set $5 vehicles.const 5
scoreboard players set $100 vehicles.const 100
scoreboard players set $360 vehicles.const 360
scoreboard players set $1000 vehicles.const 1000
scoreboard players set $max_motion vehicles.const 174
scoreboard players set $sandwich_death_cooldown vehicles.const 1200

data modify storage vehicles:sandwich CooldownEnded set value {mode:"empty"}
