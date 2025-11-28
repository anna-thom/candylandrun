extends Node

@onready var proto_controller: Player = $".."
@export @onready var Button_0: Button = $"../Button_0"
@export @onready var Button_2: Button = $"../Button_1"
@export @onready var Button_1: Button = $"../Button_1"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Boots_1"):
		print("boots 1 activated")
		$"../Button_1".pressed.emit()
		
	if Input.is_action_just_pressed("Boots_0"):
		print("boots 0 activated")
		$"../Button_0".pressed.emit()
		
	if Input.is_action_just_pressed("Boots_2"):
		print("boots 2 activated")
		$"../Button_2".pressed.emit()

func _on_button_0_pressed() -> void:
	print("Enabling Boots_0, Removing Boots.")
	proto_controller.gravity_scale = 3.
	proto_controller.sprint_speed = 30.
	proto_controller.can_sprint = false

func _on_button_1_pressed() -> void:
	print("Enabling Boots_1, Jump boost.")
	proto_controller.gravity_scale = 1.
	proto_controller.sprint_speed = 30.
	proto_controller.can_sprint = false

func _on_button_2_pressed() -> void:
	print("Enabling Boots_2, Speed boost.")
	proto_controller.gravity_scale = 3.
	proto_controller.sprint_speed = 20.
	proto_controller.can_sprint = true
 
