$data modify storage weapons:sword fat_sword.temp.value set value $(text)
execute if data storage weapons:sword fat_sword.temp.value{text:" 󐀁☬󐀁 傷害加成§f +100%"} run scoreboard players set $temp weapons.sword 1
execute if data storage weapons:sword fat_sword.temp.value{text:"在慣用手時:"} run scoreboard players set $temp weapons.sword 1
