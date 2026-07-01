extends Node2D

@onready var player_placeholder: ColorRect = $PlayerPlaceholder


func _ready() -> void:
	print("Godot roguelite project initialized.")
	print("Visible node loaded: ", player_placeholder.name)
