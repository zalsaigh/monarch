extends Node2D

@export var MAX_HEALTH := 100.0
var health : float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	health = MAX_HEALTH
	
func damage(attack: float):
	health -= attack
	
	if health <= 0:
		get_parent().queue_free()
		
func heal(heal: float):
	health += heal
	
	if (health > MAX_HEALTH):
		health = MAX_HEALTH;

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
