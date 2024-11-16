extends AnimatedSprite2D

var timer

# Called when the node enters the scene tree for the first time.
func _ready():
	play("idle")
	timer = $AnimationTimer


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


# Shows the unit's character casting animation
func _on_combat_gui_spell_animation(duration: int) -> void:
	# Start one-shot timer with a wait time dependent on spell
	timer.wait_time = duration
	
	# Start the animation and timer
	play("casting")
	timer.start()


func _on_animation_timer_timeout() -> void:
	play("idle")
