extends Node

var timer = 0
var score = 0

func _unhandled_input(_event):
	if Input.is_action_pressed("menu"):
		get_tree().quit()

func update_score(s):
	score += s
	get_node("/root/Game/UI/Score").text = "Score: " + str(score)
	if score == 40 and timer >= 0:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		get_tree().change_scene("res://UI/Win.tscn")
		Global.score = 0
		Global.timer = 0
	
func update_time():
	timer -= 1
	get_node("/root/Game/UI/Time").text = "Timer: " + str(timer)
	

