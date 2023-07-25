scoreboard players operation @s knowledge.cd.mainhand_sec1 = @s knowledge.cd.mainhand
scoreboard players operation @s knowledge.cd.offhand_sec1 = @s knowledge.cd.offhand

scoreboard players remove @s knowledge.cd.mainhand_sec1 1
scoreboard players remove @s knowledge.cd.offhand_sec1 1

scoreboard players operation @s knowledge.cd.mainhand_sec1 /= $20 knowledge
scoreboard players operation @s knowledge.cd.offhand_sec1 /= $20 knowledge

scoreboard players operation @s knowledge.cd.mainhand_sec2 = @s knowledge.cd.mainhand_sec1
scoreboard players operation @s knowledge.cd.offhand_sec2 = @s knowledge.cd.offhand_sec1

scoreboard players operation @s knowledge.cd.mainhand_sec1 /= $10 knowledge
scoreboard players operation @s knowledge.cd.offhand_sec1 /= $10 knowledge

scoreboard players operation @s knowledge.cd.mainhand_sec2 %= $10 knowledge
scoreboard players operation @s knowledge.cd.offhand_sec2 %= $10 knowledge

function general:player_data/select
execute if data storage general:player_data Data[{selected:1b}].Actionbar{CenterMode:"knowledge_cooldown"} run data remove storage general:player_data Data[{selected:1b}].Actionbar.Center
execute if data storage general:player_data Data[{selected:1b}].Actionbar{CenterMode:"knowledge_cooldown"} run data remove storage general:player_data Data[{selected:1b}].Actionbar.CenterMode
execute if score @s knowledge.cd.mainhand matches 1.. unless score @s knowledge.cd.offhand matches 1.. run data modify storage general:player_data Data[{selected:1b}].Actionbar.Center set value '[{"text":"\\uDAFF\\uDFDF"},{"text":"主手知識："},{"score":{"objective":"knowledge.cd.mainhand_sec1","name":"@s"}},{"score":{"objective":"knowledge.cd.mainhand_sec2","name":"@s"}},{"text":"秒"},{"text":"\\uDAFF\\uDFDF"}]'
execute if score @s knowledge.cd.offhand matches 1.. unless score @s knowledge.cd.mainhand matches 1.. run data modify storage general:player_data Data[{selected:1b}].Actionbar.Center set value '[{"text":"\\uDAFF\\uDFDF"},{"text":"副手知識："},{"score":{"objective":"knowledge.cd.offhand_sec1","name":"@s"}},{"score":{"objective":"knowledge.cd.offhand_sec2","name":"@s"}},{"text":"秒"},{"text":"\\uDAFF\\uDFDF"}]'
execute if score @s knowledge.cd.mainhand matches 1.. if score @s knowledge.cd.offhand matches 1.. run data modify storage general:player_data Data[{selected:1b}].Actionbar.Center set value '[{"text":"\\uDAFF\\uDFBA"},{"text":"副手知識："},{"score":{"objective":"knowledge.cd.offhand_sec1","name":"@s"}},{"score":{"objective":"knowledge.cd.offhand_sec2","name":"@s"}},{"text":"秒  主手知識："},{"score":{"objective":"knowledge.cd.mainhand_sec1","name":"@s"}},{"score":{"objective":"knowledge.cd.mainhand_sec2","name":"@s"}},{"text":"秒"},{"text":"\\uDAFF\\uDFBA"}]'
execute if data storage general:player_data Data[{selected:1b}].Actionbar.Center run data modify storage general:player_data Data[{selected:1b}].Actionbar.CenterMode set value "knowledge_cooldown"
function actionbar:update
