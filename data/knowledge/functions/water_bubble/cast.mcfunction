summon marker ^ ^ ^ {Tags:["water_bubble","new_water_bubble"]}
execute as @e[tag=new_water_bubble] positioned ~ ~1.4 ~ run tp @s ^ ^ ^1 ~ ~
tag @e[tag=new_water_bubble] remove new_water_bubble

playsound minecraft:entity.arrow.shoot master @a[distance=..5] ^ ^ ^1 1
playsound minecraft:item.bucket.empty master @a[distance=..5] ^ ^ ^1 1