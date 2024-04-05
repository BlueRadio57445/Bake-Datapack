# 執行位置是施放好雷雷暴的人

data modify storage weapons:gloves lightning set value {}
execute store result storage weapons:gloves lightning.x int 1 run function weapons:gloves/lightning_gloves/rand
execute store result storage weapons:gloves lightning.y int 1 run function weapons:gloves/lightning_gloves/rand
function weapons:gloves/lightning_gloves/_summon_lightning with storage weapons:gloves lightning
