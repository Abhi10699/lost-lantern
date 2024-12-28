class_name LanternObj

extends Sprite2D

@onready var light2d = $AreaLight;


func glow_up():
	var tween = get_tree().create_tween()
	tween.tween_property(light2d, "texture_scale", light2d.texture_scale + 2, 1)
	tween.play()
