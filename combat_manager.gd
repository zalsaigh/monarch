extends Node

var prevScenePath : String
var prevSceneLocation : Vector2

@export var combatHUDScene : PackedScene

func start_combat_scene(
	party : Array[CharacterBody2D],
	enemies : Array[Area2D],
	prevPath : String,
	prevLocation : Vector2,
	nextPath : String
):
	prevScenePath = prevPath
	prevSceneLocation = prevLocation
	combatHUDScene = load(nextPath)
	
	if not combatHUDScene:
		print("No combat scene selected! Please select one in the editor.")
		return
	
	get_tree().change_scene_to_packed(combatHUDScene)


func end_combat_scene():
	var overworldScene = load(prevScenePath)
	
	if not overworldScene:
		print("Can't return to overworld! No path to scene found.")
		return

	var overworldSceneInstance = overworldScene.instantiate()
	# get_tree().get_root().get_child(1).queue_free()
	# get_tree().unload_current_scene()
	# get_tree().get_root().add_child(overworldSceneInstance)
	get_tree().change_scene_to_packed(overworldScene)
	get_tree().current_scene.get_node("Player").position = prevSceneLocation


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
