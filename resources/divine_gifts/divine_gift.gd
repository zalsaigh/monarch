extends Resource
class_name DivineGift

enum DivineGiftType {
	STEAL_SPELLS
}

# General Spell Attributes
@export var name: String # Used to overwrite button name in combat
@export var description: String
@export var divine_gift: DivineGiftType

# Default function to override divine gift combat button, to be overwritten
# by resources to call the right combat_manager function
func _cast() -> void:
	print("Divine Gift: ", name)
