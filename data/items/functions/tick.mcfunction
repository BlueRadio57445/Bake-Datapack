
##Middleware

###snowball

execute as @e[type=snowball,tag=!modify] if data entity @s Item.tag.grenade unless data entity @s Item.tag.Tags run data merge entity @s {Tags: ["grenade"], Item: {id: "minecraft:green_wool"}}
tag @e[type=snowball] add modify

###egg

execute as @e[type=egg,tag=!modify] if data entity @s Item.tag.lay-egg unless data entity @s Item.tag.Tags run data merge entity @s {Tags: ["lay-egg"]}
tag @e[type=egg] add modify

###Chicken

kill @e[type=chicken,tag=!alive]

#throw

function items:throw/grenade
function items:throw/q06y7
function items:throw/lay-egg

#buff

function items:buff/au04zp3
function items:buff/gp6au4j4qup3-margnet

scoreboard players set @a items.used.warped_fungus_on_a_stick 0

schedule function items:tick 1t


#Other Setting

##CustomModelData-Now : 10011