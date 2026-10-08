extends Area2D

var tile_size = 16
var inputs = {"Right": Vector2.RIGHT,
			"Left": Vector2.LEFT,
			"Up": Vector2.UP,
			"Down": Vector2.DOWN}
@onready var ray = $RayCast2D
var curDir = Vector2.RIGHT

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _unhandled_input(event):
	for dir in inputs.keys():
		if event.is_action_pressed(dir):
			await get_tree().create_timer(.1).timeout
			move()

func move():
	ray.target_position = curDir * tile_size
	ray.force_raycast_update()
	var collider = ray.get_collider()
	if !ray.is_colliding():
		position += curDir * tile_size
	else:
		switch_dir()

func switch_dir() -> void:
	if curDir == Vector2.LEFT:
		curDir = Vector2.RIGHT
		await get_tree().create_timer(.1).timeout
		ray.force_raycast_update()
		#if !ray.is_colliding():
			#position += curDir * tile_size
	elif curDir == Vector2.RIGHT:
		curDir= Vector2.LEFT
		await get_tree().create_timer(.1).timeout
		ray.force_raycast_update()
		#if !ray.is_colliding():
			#position += curDir * tile_size

func _on_area_entered(area: Area2D) -> void:
	if area == $"../Player":
		SceneSwitcher.skeleton_scene()
