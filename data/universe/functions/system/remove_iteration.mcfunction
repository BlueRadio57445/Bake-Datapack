function universe:system/disable_universe with storage universe:bundle PreviousUniverse[0]

data remove storage universe:bundle PreviousUniverse[0]
execute if data storage universe:bundle PreviousUniverse[] run function universe:system/remove_iteration