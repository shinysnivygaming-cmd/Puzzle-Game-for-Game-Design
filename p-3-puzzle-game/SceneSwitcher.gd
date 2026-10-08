extends Node

var curLvl = 1
const SCENES = {
	"level_1": "res://Levels/level_1.tscn",
	"level_2": "res://Levels/level_2.tscn",
	"level_3": "res://Levels/level_3.tscn",
	"level_4": "res://Levels/level_4.tscn",
	"level_5": "res://Levels/level_5.tscn",
	"level_-5": "res://Levels/level__5.tscn"
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
	print(curLvl)
	curLvl += 1
	print(curLvl)
	get_tree().change_scene_to_file(SCENES[nxtLvl_phrase])
	
func void_scene() -> void:
	var nxtLvl = curLvl * -1
	var nxtLvl_phrase = "level_" + str(nxtLvl)
	print(nxtLvl_phrase)
	curLvl = curLvl * -1
	print(curLvl)
	get_tree().change_scene_to_file(SCENES[nxtLvl_phrase])

func skeleton_scene() -> void:
	var nxtLvl = curLvl - 1
	var nxtLvl_phrase = "level_" + str(nxtLvl)
	print(nxtLvl_phrase)
	curLvl = curLvl - 1
	print(curLvl)
	get_tree().change_scene_to_file(SCENES[nxtLvl_phrase])
