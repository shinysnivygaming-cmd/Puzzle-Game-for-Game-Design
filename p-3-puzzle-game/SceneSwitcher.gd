extends Node

var curLvl = 1
const SCENES = {
	"level_1": "res://Levels/level_1.tscn",
	"level_2": "res://Levels/level_2.tscn"
}
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func ladder_scene() -> void:
	var nxtLvl = curLvl + 1
	var nxtLvl_phrase = "level_" + str(nxtLvl)
	curLvl += 1
	get_tree().change_scene_to_file(SCENES[nxtLvl_phrase])
