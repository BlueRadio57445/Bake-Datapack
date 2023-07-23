data remove storage knowledge:cooldown mainhand
data remove storage knowledge:cooldown offhand
scoreboard players operation @s knowledge.cd.mainhand_sec1 = @s knowledge.cd.mainhand
scoreboard players operation @s knowledge.cd.offhand_sec1 = @s knowledge.cd.offhand

scoreboard players operation @s knowledge.cd.mainhand_sec1 /= $20 knowledge
scoreboard players operation @s knowledge.cd.offhand_sec1 /= $20 knowledge

scoreboard players operation @s knowledge.cd.mainhand_sec2 = @s knowledge.cd.mainhand_sec1
scoreboard players operation @s knowledge.cd.offhand_sec2 = @s knowledge.cd.offhand_sec1

scoreboard players operation @s knowledge.cd.mainhand_sec1 /= $10 knowledge
scoreboard players operation @s knowledge.cd.offhand_sec1 /= $10 knowledge

scoreboard players operation @s knowledge.cd.mainhand_sec2 %= $10 knowledge
scoreboard players operation @s knowledge.cd.offhand_sec2 %= $10 knowledge
execute if score @s knowledge.cd.mainhand matches 1.. run data modify storage knowledge:cooldown mainhand set value '[{"text":" 主手知識："},{"score":{"objective":"knowledge.cd.mainhand_sec1","name":"@s"}},{"score":{"objective":"knowledge.cd.mainhand_sec2","name":"@s"}},{"text":"秒 "}]'
execute if score @s knowledge.cd.offhand matches 1.. run data modify storage knowledge:cooldown offhand set value '[{"text":" 副手知識："},{"score":{"objective":"knowledge.cd.offhand_sec1","name":"@s"}},{"score":{"objective":"knowledge.cd.offhand_sec2","name":"@s"}},{"text":"秒 "}]'

title @s actionbar [{"nbt":"offhand","storage":"knowledge:cooldown","interpret":true},{"nbt":"mainhand","storage":"knowledge:cooldown","interpret":true}]