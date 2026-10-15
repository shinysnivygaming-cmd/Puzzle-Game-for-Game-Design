extends Node

var curLvl = 1
const pause_menu = preload("res://Levels/pause_menu.tscn")
const SCENES = {
	"level_1": "res://Levels/level_1.tscn",
	"level_2": "res://Levels/level_2.tscn",
	"level_3": "res://Levels/level_3.tscn",
	"level_4": "res://Levels/level_4.tscn",
	"level_5": "res://Levels/level_5.tscn",
	"level_6": "res://Levels/level_6.tscn",
	"level_7": "res://Levels/level_7.tscn",
	"level_8": "res://Levels/level_8.tscn",
	"level_9": "res://Levels/level_9.tscn",
	"level_10": "res://Levels/level_10.tscn",
	"level_11": "res://Levels/level_11.tscn",
	"level_0": "res://Levels/level_0.tscn",
	"level_-1": "res://Levels/level__1.tscn",
	"level_-2": "res://Levels/level__2.tscn",
	"level_-3": "res://Levels/level__3.tscn",
	"level_-4": "res://Levels/level__4.tscn",
	"level_-5": "res://Levels/level__5.tscn",
	"level_-6": "res://Levels/level__6.tscn",
	"level_-7": "res://Levels/level__7.tscn"
}
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Pause"):
		pauseMenu_scene()
		
func pauseMenu_scene():
	var instance = pause_menu.instantiate()
	get_tree().current_scene.add_child(instance)
	get_tree().paused = true
		
	
func reload_scene() -> void:
	var curLvl_phrase = "level_" + str(curLvl)
	get_tree().change_scene_to_file(SCENES[curLvl_phrase])
	
func ladder_scene() -> void:
	var nxtLvl = curLvl + 1
	var nxtLvl_phrase = "level_" + str(nxtLvl)
	print(curLvl)
	curLvl += 1
	print(curLvl)
	get_tree().change_scene_to_file(SCENES[nxtLvl_phrase])

func coin_scene() -> void:
	var nxtLvl = curLvl + 2
	var nxtLvl_phrase = "level_" + str(nxtLvl)
	print(curLvl)
	curLvl += 2
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

func dark_priest_scene() -> void:
	var nxtLvl = curLvl - 2
	var nxtLvl_phrase = "level_" + str(nxtLvl)
	print(nxtLvl_phrase)
	curLvl = curLvl - 2
	print(curLvl)
	get_tree().change_scene_to_file(SCENES[nxtLvl_phrase])
	
func boss_scene() -> void:
	var nxtLvl = curLvl - 7
	var nxtLvl_phrase = "level_" + str(nxtLvl)
	print(nxtLvl_phrase)
	curLvl = curLvl - 7
	print(curLvl)
	get_tree().change_scene_to_file(SCENES[nxtLvl_phrase])
