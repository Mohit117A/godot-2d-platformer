extends Node2D
const Speed = 60

var direction = 1
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


@onready var ray_right: RayCast2D = $ray_right
@onready var ray_left: RayCast2D = $ray_left



func _process(delta: float) -> void:
	if ray_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	if ray_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	position.x += direction * Speed * delta
