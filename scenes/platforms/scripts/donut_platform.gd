extends AnimatableBody3D

@export var move_distance: float = 4.0   # how far to move up/down
@export var move_time: float = 10.0         # time for each direction


func _ready():
	var tween = create_tween().set_loops()  # infinite loop

	# Start position
	var start_pos = global_position if has_method("global_position") else global_transform.origin
	var up_pos = start_pos + Vector2(0, -move_distance) if start_pos is Vector2 else start_pos + Vector3(0, move_distance, 0)

	# Move up
	tween.tween_property(self, "global_position" if start_pos is Vector2 else "global_transform:origin", up_pos, move_time)
	# Move down
	tween.tween_property(self, "global_position" if start_pos is Vector2 else "global_transform:origin", start_pos, move_time)
