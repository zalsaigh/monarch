extends Node

@export var combatHUDScene : PackedScene

func start_combat_scene(party : Array[CharacterBody2D], enemies : Array[Area2D], path):
	combatHUDScene = load(path)
	
	if not combatHUDScene:
		print("No combat scene selected! Please select one in the editor.")
		return
	
	get_tree().change_scene_to_packed(combatHUDScene)
	
	

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
