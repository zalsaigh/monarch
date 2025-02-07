extends Node

const SECOND_SCENE_PATH = "res://second_scene.tscn"

@onready var player = $Player
@onready var combat_manager = $CombatManager
@onready var enemy = $Enemy


# Called when the node enters the scene tree for the first time.
func _ready():
	var combat_system = get_tree().get_nodes_in_group("combat")
	if combat_system.size() > 0:
		combat_system = combat_system[0]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_enemy_body_entered(body: PhysicsBody2D):
	var enemy = get_tree().get_nodes_in_group("enemy")
	CombatManager.start_combat_scene(
		[player, player],
		[enemy],
		SECOND_SCENE_PATH,
		get_node(str(body.name)).position,
		"res://combat_scene.tscn"
	)
