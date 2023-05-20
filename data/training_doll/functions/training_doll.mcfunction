# 計算傷害
scoreboard players set @s training_doll.original_health 1000
execute store result score @s training_doll.got_hurt run data get entity @s Health
execute store result score #damage training_doll.damage run scoreboard players operation @s training_doll.original_health -= @s training_doll.got_hurt

# 更新名字
execute if score #damage training_doll.damage matches 1.. run data modify block 0 1 0 Text1 set value '{"score":{"name":"#damage","objective":"training_doll.damage"}}'
execute if score #damage training_doll.damage matches 1.. run data modify entity @s CustomName set from block 0 1 0 Text1

# 重置生命
data modify entity @s Health set value 1000