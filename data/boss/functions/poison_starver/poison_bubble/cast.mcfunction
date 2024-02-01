summon interaction ^ ^ ^ {Tags:["poison_starver.poison_bubble","new"],height:0.7f,width:0.7f}
execute as @e[tag=new] positioned ~ ~1.4 ~ run tp @s ^ ^ ^1 ~ ~
scoreboard players set @e[tag=new] general.object.duration 300
tag @e[tag=new] remove new

playsound minecraft:entity.arrow.shoot master @a[distance=..5] ^ ^ ^1 1
playsound minecraft:item.bucket.empty master @a[distance=..5] ^ ^ ^1 1