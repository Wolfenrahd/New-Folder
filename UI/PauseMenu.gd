extends CanvasLayer

func _process(delta):
	if(get_tree().paused):
		get_node("ColorRect").show()
	else:
		get_node("ColorRect").hide()

func _on_UnpauseButton_pressed():
	get_tree().paused = false

func _on_QuitButton_pressed():
	# We have to unpause or the title screen will do nothing
	get_tree().paused = false
	global.saveGame()
	get_tree().change_scene("res://UI/TitleScreen.tscn")
