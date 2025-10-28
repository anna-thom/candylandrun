extends AnimatableBody3D

@export var degrees_per_second: float = 90.0
@export var randomize_on_ready := true
@export var min_speed := 60.0
@export var max_speed := 120.0

func _ready() -> void:
	if randomize_on_ready:
		var s = randf_range(min_speed, max_speed)
		if randf() < 0.5:
			s = -s
		degrees_per_second = s

func _physics_process(delta: float) -> void:
	rotate_y(deg_to_rad(degrees_per_second) * delta)
