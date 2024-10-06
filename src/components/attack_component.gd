extends Node2D

@export var MAX_ATTACKS = 4
@export var attacks : Array[Attack]

func add_attack(attack: Attack) -> bool:
	if (attacks.size() == MAX_ATTACKS):
		return false
	attacks.append(attack)
	return true

func remove_attack(index: int) -> void:
	attacks.remove_at(index)

func get_attack(index: int) -> Attack:
	if (index >= attacks.size()):
		return null
	return attacks[index]
