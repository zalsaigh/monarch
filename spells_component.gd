extends Node2D

# Current unit's spells
@export var MAX_SPELLS = 4
var spells : Array[Spell]

# Array prepopulated with a list of all possible spells
var spell_database = load("res://spells/spell_database.tres")


func _ready() -> void:
	# TODO: remove this, used for adding test data
	for i in range(2):
		add_spell(spell_database.spell_database[i])


# Add a new spell resource to the unit's list of spells
func add_spell(spell: Spell):
	assert(spells.size() != MAX_SPELLS)
	
	spells.append(spell)


# Remove spell from unit's list of spells specified by an index
func remove_spell(spell_index: int):
	assert(spell_index < spells.size())
	
	spells.remove_at(spell_index)


# Get the spell resource specified by an index in the unit's spell list
func get_spell(spell_index: int) -> Spell:
	assert(spell_index < spells.size())
	
	return spells[spell_index]
