extends Node2D

# Array prepopulated with a list of all possible spells
@export var spell_database: Array[Spell]

# Current unit's spells
@export var MAX_SPELLS = 4
var spells : Array[Spell]


func _ready() -> void:
	# TODO: remove this, used for adding test data
	for i in range(2):
		add_spell(spell_database[i])


# Add a new spell resource to the unit's list of spells
# Returns false if spells is full and true otherwise
func add_spell(spell: Spell) -> bool:
	if (spells.size() == MAX_SPELLS):
		return false
	
	spells.append(spell)
	return true


# Remove spell from unit's list of spells specified by an index
# Returns false if index does not exist and true otherwise
func remove_spell(spell_index: int) -> bool:
	if (spell_index >= spells.size()):
		return false
	
	spells.remove_at(spell_index)
	return true


# Get the spell resource specified by an index in the unit's spell list
# Returns null if the index does not exist
func get_spell(spell_index: int) -> Spell:
	if (spell_index >= spells.size()):
		return null
	
	return spells[spell_index]
