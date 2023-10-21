fill ~ ~ ~ ~ ~ ~ fire replace #can_burn
#execute unless block ~ ~ ~ fire unless block ~ ~0.1 ~ #can_burn run setblock ~ ~ ~ torch keep
execute unless block ~ ~ ~ fire unless block ~ ~0.1 ~ #can_burn run setblock ~ ~ ~ cave_vines[berries=true] keep
execute unless block ~ ~ ~ fire unless block ~0.1 ~ ~ #can_burn run setblock ~ ~ ~ wall_torch[facing=west] keep
execute unless block ~ ~ ~ fire unless block ~-0.1 ~ ~ #can_burn run setblock ~ ~ ~ wall_torch[facing=east] keep
execute unless block ~ ~ ~ fire unless block ~ ~ ~0.1 #can_burn run setblock ~ ~ ~ wall_torch[facing=north] keep
execute unless block ~ ~ ~ fire unless block ~ ~ ~-0.1 #can_burn run setblock ~ ~ ~ wall_torch[facing=south] keep