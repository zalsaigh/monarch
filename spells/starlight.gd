extends Spell

func _cast() -> void:
	print("Casting spell: ", spell_name, " which is a different spell!")
	print("Healed target by ", heal, " health!")
