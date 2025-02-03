extends Control

signal spell_animation(duration: int)

# TODO: remove this later, just used to test cycling through spells
var curr_spell: int


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_attack_button_pressed():
	pass # Replace with function body.


# Called when Spells button is pressed (used to test the spells component)
func _on_spells_button_pressed() -> void:
	print("Clicked Spell Button")
	
	# TODO: get a specific unit's spell component instead of hardcoding player
	var spells_component = $PlayerContainer/SpellsComponent
	if spells_component.is_in_group("has_spells"):
		# Get the next spell (for debugging purposes)
		var spell_index = curr_spell % spells_component.spells.size()
		curr_spell += 1
		
		# Cast this spell
		var spell = spells_component.get_spell(spell_index)
		if spell:
			spell_animation.emit(spell.animation_time)
			spell._cast()
