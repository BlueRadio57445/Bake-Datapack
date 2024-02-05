execute store result score $maxHealth effects.state run attribute @s minecraft:generic.max_health get 1
scoreboard players operation $exceedHealth effects.state = @s general.utils.health
scoreboard players add $exceedHealth effects.state 9
scoreboard players operation $exceedHealth effects.state -= $maxHealth effects.state
scoreboard players set $addMaxHealth effects.state 0
execute if score @s general.player.health matches 0..8 if score $exceedHealth effects.state matches 1.. run function effects:fire/add_max_health
execute if score @s general.player.health matches 0..8 at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,ReapplicationDelay:1,effects:[{id:"minecraft:instant_health",amplifier:2b,duration:1,show_icon:0b,show_particles:0b}]}
execute at @s run summon minecraft:small_fireball ~ ~0.5 ~0.60000002384187 {Motion:[0.0,0.0,-10.0]}
execute if score @s general.player.health matches 9.. at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,ReapplicationDelay:1,effects:[{id:"minecraft:instant_health",amplifier:2b,duration:1,show_icon:0b,show_particles:0b}]}
