extends Area2D

@export var NextScene: String;


func _on_body_entered(body: Node2D) -> void:
	print("NENEN")
	if body.is_in_group("Player"):
		print("loading_new_scene")
		get_tree().change_scene_to_file(NextScene);
