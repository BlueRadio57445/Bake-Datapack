data modify storage quest_system:item_check Slot_Record append value {Slot:0b,Count:0b}
data modify storage quest_system:item_check Slot_Record[-1].Slot set from storage quest_system:item_check Items[0].Slot
data modify storage quest_system:item_check Slot_Record[-1].Count set from storage quest_system:item_check Items[0].Count
