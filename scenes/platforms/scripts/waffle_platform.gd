extends Node3D

@export var distance: float = 10.0   # how far it moves left/right
@export var time: float = 4.0         # seconds to move each direction

func _ready():
	var tween = create_tween().set_loops()

	var start_pos = global_position if has_method("global_position") else global_transform.origin
	var left_pos = start_pos + Vector2(-distance, 0) if start_pos is Vector2 else start_pos + Vector3(-distance, 0, 0)

	# Move left
	tween.tween_property(self, "global_position" if start_pos is Vector2 else "global_transform:origin",
		left_pos, time)

	# Move right (back to start)
	tween.tween_property(self, "global_position" if start_pos is Vector2 else "global_transform:origin",
		start_pos, time)
