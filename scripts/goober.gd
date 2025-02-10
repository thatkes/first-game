extends Node2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft

const movement_speed = 30
var direction = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_left.is_colliding() || ray_cast_right.is_colliding():
		direction *= -1
		animated_sprite_2d.flip_h = !animated_sprite_2d.flip_h
	position.x += delta * movement_speed * direction
