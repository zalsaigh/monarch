extends Node

@export var defence = 10

@export_category("Animation")
@export var animation : AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func generate_mitigated_attack(incoming_attack : Attack) -> Attack:
	# Placeholder calculation
	return Attack.new(
		incoming_attack.name,
		incoming_attack.description,
		incoming_attack.damage - defence,
		incoming_attack.accuracy
	)
