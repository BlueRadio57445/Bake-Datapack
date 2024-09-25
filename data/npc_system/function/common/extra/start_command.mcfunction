data modify storage general:utils input set value {}
data modify storage general:utils input.command set from entity @s data.Dialogue.Extra.StartCommand
execute as @a[limit=1,tag=npc.user] run function general:utils/execute with storage general:utils input
