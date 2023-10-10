# executed by marker
execute unless data entity @s data.Dialogue.Texts[] run function npc_system:common/empty
execute if data entity @s data.Dialogue.Texts[] run function npc_system:common/display_text
