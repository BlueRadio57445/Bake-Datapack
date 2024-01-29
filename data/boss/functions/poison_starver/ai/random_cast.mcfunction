execute unless data storage boss:storage poison_sequence[] run function boss:poison_starver/ai/sequence
execute store result score $rng boss run data get storage boss:storage poison_sequence[0]
execute if score $rng boss matches 1 run function boss:poison_starver/skill3/cast
execute if score $rng boss matches 2 run function boss:poison_starver/skill4/cast
execute if score $rng boss matches 3 run function boss:poison_starver/skill5/cast
data remove storage boss:storage poison_sequence[0]