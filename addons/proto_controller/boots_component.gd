extends Node

@onready var proto_controller: Player = $".."
@onready var button: Button = $"../Button"
@onready var button_2: Button = $"../Button2"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("boots1"):
		print("bootd1 taco")
		$"../Button".pressed.emit()
	if Input.is_action_just_pressed("Boots0"):
		print("boots0 Diego")
		$"../Button2".pressed.emit()


func _on_button_pressed() -> void:
	print("Enabling boots1")
	proto_controller.gravity_scale = 1.


func _on_button_2_pressed() -> void:
	print("Enabling boots2")
	proto_controller.gravity_scale = 3.
