extends Area2D

var tile_size = 16
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_entered(area: Area2D) -> void:
	await get_tree().create_timer(.1).timeout
	if area.get("curDir") != null:
		area.switch_dir()
	area.position += Vector2.DOWN * tile_size
	
