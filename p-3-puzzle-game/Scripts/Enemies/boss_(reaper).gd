extends Area2D

@onready var _animated_sprite = $AnimatedSprite2D
var tile_size = 8
var inputs = {"Right": Vector2.RIGHT,
			"Left": Vector2.LEFT,
			"Up": Vector2.UP,
			"Down": Vector2.DOWN}
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _unhandled_input(event):
	for dir in inputs.keys():
		if event.is_action_pressed(dir):
			position += Vector2.RIGHT * tile_size
			_animated_sprite.play("Move")


func _on_area_entered(area: Area2D) -> void:
	if area == $"../Player":
		SceneSwitcher.boss_scene()
