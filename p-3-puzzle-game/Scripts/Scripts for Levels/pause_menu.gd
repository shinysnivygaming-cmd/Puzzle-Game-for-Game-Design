extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	process_mode = Node.PROCESS_MODE_WHEN_PAUSED


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_resume_pressed() -> void:
	get_tree().paused = false
	queue_free()


func _on_restart_level_pressed() -> void:
	get_tree().paused = false
	queue_free()
	SceneSwitcher.reload_scene()


func _on_quit_pressed() -> void:
	get_tree().quit()
