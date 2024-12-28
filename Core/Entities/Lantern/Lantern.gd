class_name LanternObj

extends Sprite2D

@onready var light2d = $PointLight2D;


func glow_up():
	light2d.texture_scale += 5;
