extends MenuButton


# Called when the node enters the scene tree for the first time.
func _ready():
	get_popup().add_item("COPY ENEMY ABILITY")
	get_popup().id_pressed.connect(_on_menu_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	show_popup()


func _on_menu_pressed(id: int):
	var name = get_popup().get_item_text(id)
	
	match name:
		"COPY ENEMY ABILITY":
			print("Stolen enemy's ability!")
