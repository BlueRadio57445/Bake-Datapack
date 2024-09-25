execute as @e[type=!minecraft:player,predicate=weapons:sword/blood_sword/hold] run function weapons:sword/blood_sword/calculate_health
execute as @e[type=!minecraft:player,tag=weapons.blood_sword,predicate=!weapons:sword/blood_sword/hold] run function weapons:sword/blood_sword/reset
