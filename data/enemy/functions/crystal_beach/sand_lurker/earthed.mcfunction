# 下潛
# 執行者，執行位置是伏沙魔
data merge entity @s {Silent:1b,IsImmuneToZombification:1b,Tags:["enemy","enemy.sand_lurker","lurkering"],active_effects:[{id:"minecraft:invisibility",duration:-1,ambient:1b,show_particles:0b}],Attributes:[{Name:"minecraft:generic.scale",Base:0.01d},{Base:1,Name:"minecraft:generic.knockback_resistance"},{Name:"minecraft:generic.follow_range",Base:50},{Name:"minecraft:generic.movement_speed",Base:0.2},{Name:"minecraft:generic.attack_damage",Base:2}]}
summon minecraft:block_display ~ ~ ~ {Tags:["enemy.decoration"],block_state:{Name:"minecraft:sand",Properties:{}},transformation:[1.0000f,0.0000f,0.0000f,-0.5000f,0.0000f,1.0000f,0.0000f,-1.10f,0.0000f,0.0000f,1.0000f,-0.5000f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[type=block_display,sort=nearest,limit=1] mount @s
effect give @s invisibility infinite 1 true
item replace entity @s weapon.mainhand with air
scoreboard players set @s enemy.lurker_state 3

