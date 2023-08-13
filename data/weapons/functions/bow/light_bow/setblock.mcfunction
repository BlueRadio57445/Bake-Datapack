setblock ~ ~ ~ fire keep
execute unless block ~ ~ ~ fire unless block ~ ~0.1 ~ air run setblock ~ ~ ~ torch keep
execute unless block ~ ~ ~ fire unless block ~0.1 ~ ~ air run setblock ~ ~ ~ wall_torch[facing=west] keep
execute unless block ~ ~ ~ fire unless block ~-0.1 ~ ~ air run setblock ~ ~ ~ wall_torch[facing=east] keep
execute unless block ~ ~ ~ fire unless block ~ ~ ~0.1 air run setblock ~ ~ ~ wall_torch[facing=north] keep
execute unless block ~ ~ ~ fire unless block ~ ~ ~-0.1 air run setblock ~ ~ ~ wall_torch[facing=south] keep