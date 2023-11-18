execute on origin as @s[tag=!this] run return 0
execute if data entity @s {inGround:1b} run return 0
execute on passengers run tag @s[tag=general.on_hit] add general.hit
