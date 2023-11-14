extends Node

var custom_cursor = preload("res://Assets/PlaceholderArt/OpenBox_placeholder.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_custom_mouse_cursor(custom_cursor)
