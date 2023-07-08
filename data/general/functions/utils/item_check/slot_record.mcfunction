data modify storage general:utils Slot_Record append value {Slot:0b,Count:0b}
data modify storage general:utils Slot_Record[-1].Slot set from storage general:utils Items[0].Slot
data modify storage general:utils Slot_Record[-1].Count set from storage general:utils Items[0].Count
