extends Control

func _on_CancelButton_pressed():
	get_tree().change_scene("res://UI/TitleScreen.tscn")

func _on_YesButton_pressed():
	Directory.new().remove("user://save.json")
	get_tree().change_scene("res://UI/TitleScreen.tscn")
