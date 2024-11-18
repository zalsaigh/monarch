class_name Attack extends Resource

@export var m_name : String
@export var m_description : String
@export var m_damage : float
@export_range(0,100) var m_accuracy : float

@export_category("Sounds")
@export var attack_execution_sounds : Array[AudioStream] = [] # multiple to loop through

func _init(name: String, description: String, damage=10, accuracy=50):
	m_name = name
	m_description = description
	m_damage = damage
	m_accuracy = clamp(accuracy, 0, 100) / 100 # percentage division for use in further maths
