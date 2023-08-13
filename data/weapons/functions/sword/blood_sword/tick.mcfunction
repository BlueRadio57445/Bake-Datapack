execute as @e[predicate=weapons:sword/blood_sword/select] run function weapons:sword/blood_sword/calculate_health
execute as @e[predicate=weapons:sword/blood_sword/select] run function weapons:sword/blood_sword/damage
execute as @e[predicate=!weapons:sword/blood_sword/select] run function weapons:sword/blood_sword/restart
