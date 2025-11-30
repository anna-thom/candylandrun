extends AnimatableBody3D

@export var speed: float = 1.0       # How fast it rocks back and forth
@export var angle_deg: float = 35.0  # Maximum tilt angle in degrees

var _time := 0.0
var _initial_rotation: Vector3

func _ready():
	# Store the starting rotation so it rocks around its original orientation
	_initial_rotation = rotation

func _physics_process(delta):
	_time += delta * speed

	# Sine wave motion: goes back and forth automatically
	var tilt = sin(_time) * deg_to_rad(angle_deg)

	# Apply the rocking around the X axis
	rotation = Vector3(
		_initial_rotation.x,
		_initial_rotation.y,
		_initial_rotation.z + tilt
	)
