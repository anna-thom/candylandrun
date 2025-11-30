extends Node3D

@export var rotation_speed: float = 30.0  # degrees per second

var _angle := 0.0

func _process(delta: float) -> void:
	_angle += rotation_speed * delta
	_angle = fmod(_angle, 360.0)
	rotation_degrees.y = _angle
