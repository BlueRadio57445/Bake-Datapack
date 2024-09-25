execute if block ~ ~0.1 ~ #can_burn run setblock ~ ~0.1 ~ fire
execute unless block ~ ~ ~ #can_burn run setblock ~ ~-0.1 ~ cave_vines[berries=true] keep
execute unless block ~ ~ ~ #can_burn run setblock ~-0.1 ~ ~ wall_torch[facing=west] keep
execute unless block ~ ~ ~ #can_burn run setblock ~0.1 ~ ~ wall_torch[facing=east] keep
execute unless block ~ ~ ~ #can_burn run setblock ~ ~ ~-0.1 wall_torch[facing=north] keep
execute unless block ~ ~ ~ #can_burn run setblock ~ ~ ~0.1 wall_torch[facing=south] keep
kill @s
