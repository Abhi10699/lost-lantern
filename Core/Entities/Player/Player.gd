extends CharacterBody2D


@export var SPEED = 100.0
@export var JUMP_VELOCITY = -400.0


@onready var Lantern: LanternObj = $Lantern;


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("Left", "Right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("LightFragments"):
		Lantern.glow_up()
		area.queue_free()
