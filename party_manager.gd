extends Node

@onready var player = $Player

var party_members: Array[CharacterBody2D]

func _ready() -> void:
	party_members.append(player)

func get_party_members() -> Array:
	return party_members
	
func get_party_size() -> int:
	return party_members.size()
	
func get_member(member: CharacterBody2D) -> int:
	var member_index = party_members.find(member)
	return member_index

func add_member(new_member: CharacterBody2D) -> void:
	party_members.append(new_member)
	
func remove_member(member_index: int) -> void:
	party_members.remove_at(member_index)
