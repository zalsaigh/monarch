class_name Attack extends Resource

@export var name : String
@export var description : String
@export var damage : float
@export_range(0,100) var accuracy : float

@export_category("Sounds")
@export var attack_execution_sounds : Array[AudioStream] = [] # multiple to loop through



func _init(p_name="Sample Attack", p_description="Sample Description", p_damage=10, p_accuracy=50):
	name = p_name
	description = p_description
	damage = p_damage
	accuracy = clamp(p_accuracy, 0, 100) / 100 # percentage division for use in further maths
