scoreboard players set @s weapons.gloves.holding 0
item modify entity @s weapon.mainhand weapons:gloves/charged
function weapons:gloves/system/replace_off_glove
scoreboard players set @s weapons.gloves.holding 1
advancement revoke @s only weapons:gloves/system/charged
