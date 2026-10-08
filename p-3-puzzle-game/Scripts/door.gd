extends AnimatableBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$".".set_collision_layer_value(4,true)
	$".".set_collision_layer_value(6,true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_button_area_entered(area: Area2D) -> void:
	$ClosedDoor.visible = false
	$".".set_collision_layer_value(4,false)
	
	

func _on_button_area_exited(area: Area2D) -> void:
	$ClosedDoor.visible = true
	$".".set_collision_layer_value(4,true)
