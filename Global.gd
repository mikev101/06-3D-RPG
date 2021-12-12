extends Node

var timer = 0
var score = 0

func _unhandled_input(_event):
	if Input.is_action_pressed("menu"):
		get_tree().quit()

func update_score(s):
	score += s
	get_node("/root/Game/UI/Score").text = "Score: " + str(score)
	
func update_time():
	timer -= 1
	get_node("/root/Game/UI/Time").text = "Timer: " + str(timer)
	
