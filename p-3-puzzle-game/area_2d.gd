extends Area2D

var tile_size = 16
var inputs = {"Right": Vector2.RIGHT,
			"Left": Vector2.LEFT,
			"Up": Vector2.UP,
			"Down": Vector2.DOWN}
# Called when the node enters the scene tree for the first time.

@onready var ray = $RayCast2D

func _ready() -> void:
	position = position.snapped(Vector2.ONE * tile_size/2)
	position += Vector2.ONE * tile_size
	
func _unhandled_input(event):
	for dir in inputs.keys():
		if event.is_action_pressed(dir):
			move(dir)

func move(dir):
	ray.target_position = inputs[dir] * tile_size
	ray.force_raycast_update()
	if !ray.is_colliding():
		position += inputs[dir] * tile_size
	else:
		var collider = ray.get_collider()
		if collider.is_in_group("Crates"):
			if collider.can_move(dir):
				position += inputs[dir] * tile_size

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
