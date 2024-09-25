execute store result score @s weapons.sword.thief_sword.mob if entity @e[distance=..4,type=#hostile_mobs]
effect give @e[distance=..4,type=#minecraft:hostile_mobs] weakness 7 0
scoreboard players set @s[scores={weapons.sword.thief_sword.mob=6..}] weapons.sword.thief_sword.mob 5

# 冷卻系統
function general:utils/cooldown_item/start_mainhand
#
data modify storage weapons:sword thief_sword.damage set value 0
execute store result storage weapons:sword thief_sword.damage double 1.0 run scoreboard players get @s weapons.sword.thief_sword.mob

data remove block 0 16 0 Items[]
item replace block 0 16 0 container.0 from entity @s weapon.mainhand
data modify block 0 16 0 Items[0].components."minecraft:attribute_modifiers".modifiers[{id:"weapons:thief_sword"}].amount set from storage weapons:sword thief_sword.damage
data modify block 0 16 0 Items[0].components."minecraft:custom_data".thief_sword.used_skill set value 1b
data modify block 0 16 0 Items[0].components."minecraft:custom_data".lore_update set value {}
data remove block 0 16 0 Items[0].components."minecraft:food"
item replace entity @s weapon.mainhand from block 0 16 0 container.0
data remove block 0 16 0 Items[]

#特效
playsound block.anvil.land player @s[scores={weapons.sword.thief_sword.mob=0}] ~ ~ ~ 0.1 2

playsound block.grindstone.use player @s[scores={weapons.sword.thief_sword.mob=1..}] ~ ~ ~ 1 1
execute if score @s weapons.sword.thief_sword.mob matches 1.. run particle dust{color:[0.753,0.753,0.753],scale:1.0} ~ ~1 ~ .3 .6 .3 0 30

playsound minecraft:entity.iron_golem.repair player @s[scores={weapons.sword.thief_sword.mob=5..}] ~ ~ ~ 1 1
execute if score @s weapons.sword.thief_sword.mob matches 5.. run particle dust{color:[0.659,0.0,0.0],scale:1.0} ~ ~1.3 ~ .3 .6 .3 0 30
