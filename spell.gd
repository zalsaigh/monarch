extends Resource
class_name Spell

enum ElementType {
	NEUTRAL,
	STAR,
	NATURE,
	MOON,
	CHAOS,
}

# General Spell Attributes
@export var spell_name: String
@export var description: String
@export var animation_time: float
@export var element: ElementType

@export var damage: float
@export var heal: float


# Default cast function
"""
TODO: Pass in targets and modify their health component accordingly
	  Use a map in case some spells are multi target with different effects?
""" 
func cast() -> void:
	print("Casting spell: ", spell_name)
	print("Damaged target by ", damage, " damage!")
