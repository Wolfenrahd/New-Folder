extends Control

func _ready():
	if(not File.new().file_exists("user://save.json")):
		get_node("LoadGameButton").disabled = true
		get_node("DeleteSaveButton").disabled = true

func _on_NewGameButton_pressed():
	get_tree().change_scene("res://UI/NewGame.tscn")

func _on_LoadGameButton_pressed():
	global.loadGame()
	get_tree().change_scene("res://Maps/World/World.tscn")

func _on_QuitButton_pressed():
	get_tree().quit()

func _on_DeleteSaveButton_pressed():
	get_tree().change_scene("res://UI/DeleteSave.tscn")
