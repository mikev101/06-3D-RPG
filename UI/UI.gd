extends CanvasLayer



func _on_Timer_timeout():
	if Global.timer > 0:
		Global.update_time()
