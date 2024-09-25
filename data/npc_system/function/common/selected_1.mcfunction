data modify entity @s data.Dialogue.Sub set value 1b
execute if data entity @s data.Dialogue{Quest:1b} run data modify entity @s data.Dialogue.End set value 1b 
execute if data entity @s data.Dialogue.Extra.StartCommand run function npc_system:common/extra/start_command
function npc_system:common/display_text
