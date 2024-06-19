data modify storage general:tags head_armor set value []
loot replace block 0 16 0 container.0 27 loot general:tags/get_head_armor
data modify storage general:tags head_armor append from block 0 16 0 Items[]
data remove storage general:tags head_armor[].Slot
data remove storage general:tags head_armor[].count

data modify storage general:tags chest_armor set value []
loot replace block 0 16 0 container.0 27 loot general:tags/get_chest_armor
data modify storage general:tags chest_armor append from block 0 16 0 Items[]
data remove storage general:tags chest_armor[].Slot
data remove storage general:tags chest_armor[].count

data modify storage general:tags leg_armor set value []
loot replace block 0 16 0 container.0 27 loot general:tags/get_leg_armor
data modify storage general:tags leg_armor append from block 0 16 0 Items[]
data remove storage general:tags leg_armor[].Slot
data remove storage general:tags leg_armor[].count

data modify storage general:tags foot_armor set value []
loot replace block 0 16 0 container.0 27 loot general:tags/get_foot_armor
data modify storage general:tags foot_armor append from block 0 16 0 Items[]
data remove storage general:tags foot_armor[].Slot
data remove storage general:tags foot_armor[].count

data modify storage general:tags pet_armor set value []
loot replace block 0 16 0 container.0 27 loot general:tags/get_pet_armor
data modify storage general:tags pet_armor append from block 0 16 0 Items[]
data remove storage general:tags pet_armor[].Slot
data remove storage general:tags pet_armor[].count

data modify storage general:tags swords set value []
loot replace block 0 16 0 container.0 27 loot general:tags/get_swords
data modify storage general:tags swords append from block 0 16 0 Items[]
data remove storage general:tags swords[].Slot
data remove storage general:tags swords[].count

data modify storage general:tags shovels set value []
loot replace block 0 16 0 container.0 27 loot general:tags/get_shovels
data modify storage general:tags shovels append from block 0 16 0 Items[]
data remove storage general:tags shovels[].Slot
data remove storage general:tags shovels[].count

data modify storage general:tags pickaxes set value []
loot replace block 0 16 0 container.0 27 loot general:tags/get_pickaxes
data modify storage general:tags pickaxes append from block 0 16 0 Items[]
data remove storage general:tags pickaxes[].Slot
data remove storage general:tags pickaxes[].count

data modify storage general:tags axes set value []
loot replace block 0 16 0 container.0 27 loot general:tags/get_axes
data modify storage general:tags axes append from block 0 16 0 Items[]
data remove storage general:tags axes[].Slot
data remove storage general:tags axes[].count

data modify storage general:tags hoes set value []
loot replace block 0 16 0 container.0 27 loot general:tags/get_hoes
data modify storage general:tags hoes append from block 0 16 0 Items[]
data remove storage general:tags hoes[].Slot
data remove storage general:tags hoes[].count

data modify storage general:tags attribute_tools set value []
data modify storage general:tags attribute_tools append from storage general:tags swords[]
data modify storage general:tags attribute_tools append from storage general:tags shovels[]
data modify storage general:tags attribute_tools append from storage general:tags pickaxes[]
data modify storage general:tags attribute_tools append from storage general:tags axes[]
data modify storage general:tags attribute_tools append from storage general:tags hoes[]
