class_name Player extends CharacterBody2D

enum FACE_DIRECTIONS {LEFT, RIGHT}
const SPEED = 500.0
var facing = FACE_DIRECTIONS.LEFT

@onready var sprite : MonarchSprite = $AnimatedSprite2D
@onready var collision_shape : PlayerCollisionShape2D = $CollisionShape2D


func flip_player():
	sprite.flip()
	collision_shape.flip()


func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Vector2(
		Input.get_axis("move_left", "move_right"),
		Input.get_axis("move_up", "move_down"))
	
	velocity = direction * SPEED
	#var new_facing = facing
	if velocity.x > 0:
		sprite.play("right")
	elif velocity.x < 0:
		sprite.play("left")
	elif velocity.y > 0:
		sprite.play("down")
	elif velocity.y < 0:
		sprite.play("up")
	else:
		sprite.stop()
	move_and_collide(velocity * delta)
