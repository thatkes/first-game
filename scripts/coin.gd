extends Area2D

@onready var game_manager: Node = %"Game Manager"
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(_body: Node2D) -> void:
	animation_player.play("pickup")
	game_manager.add_point()
