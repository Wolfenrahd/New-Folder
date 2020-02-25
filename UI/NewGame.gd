extends Control

func _on_StartButton_pressed():
	global.playerName = get_node("NameField").text
	global.playerHP = global.playerMaxHP
	global.saveGame()
	get_tree().change_scene("res://Maps/World/World.tscn")
