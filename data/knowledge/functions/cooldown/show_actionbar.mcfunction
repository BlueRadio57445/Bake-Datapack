data remove storage knowledge:cooldown mainhand
data remove storage knowledge:cooldown offhand
scoreboard players operation $sec knowledge.cd.mainhand = @s knowledge.cd.mainhand
scoreboard players operation $sec knowledge.cd.offhand = @s knowledge.cd.offhand
scoreboard players operation $sec knowledge.cd.offhand /= $20 knowledge
scoreboard players operation $sec knowledge.cd.mainhand /= $20 knowledge
execute if score @s knowledge.cd.mainhand matches 1.. run data modify storage knowledge:cooldown mainhand set value '[{"text":" 主手知識："},{"score":{"objective":"knowledge.cd.mainhand","name":"$sec"}},{"text":"秒 "}]'
execute if score @s knowledge.cd.offhand matches 1.. run data modify storage knowledge:cooldown offhand set value '[{"text":" 副手知識："},{"score":{"objective":"knowledge.cd.offhand","name":"$sec"}},{"text":"秒 "}]'

title @s actionbar [{"nbt":"offhand","storage":"knowledge:cooldown","interpret":true},{"nbt":"mainhand","storage":"knowledge:cooldown","interpret":true}]