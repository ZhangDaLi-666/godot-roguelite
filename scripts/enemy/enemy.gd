extends CharacterBody2D

@export var move_speed: float = 60.0

@onready var target: Node2D = get_parent().get_node_or_null("Player") as Node2D


func _physics_process(_delta: float) -> void:
	if target == null:
		velocity = Vector2.ZERO
		return

	var direction := global_position.direction_to(target.global_position)
	velocity = direction * move_speed
	move_and_slide()
