extends Node

var playerName = ""
var playerHP = 0
var playerMaxHP = 10
var playerXP = 0
var playerXPTill = 10
var playerLevel = 1
var playerX = 0
var playerY = 0

func generateSave():
	var save = {}
	save["playerName"] = playerName
	save["playerHP"] = playerHP
	save["playerMaxHP"] = playerMaxHP
	save["playerXP"] = playerXP
	save["playerXPTill"] = playerXPTill
	save["playerLevel"] = playerLevel
	save["playerX"] = playerX
	save["playerY"] = playerY
	return to_json(save)
	
func saveGame():
	var saveManager = File.new()
	saveManager.open("user://save.json", File.WRITE)
	saveManager.store_string(generateSave())
	saveManager.close()

func loadGame():
	var saveManager = File.new()
	saveManager.open("user://save.json", File.READ)
	var save = parse_json(saveManager.get_as_text())
	saveManager.close()
	
	playerName = save["playerName"]
	playerHP = save["playerHP"]
	playerMaxHP = save["playerMaxHP"]
	playerXP = save["playerXP"]
	playerXPTill = save["playerXPTill"]
	playerLevel = save["playerLevel"]
	playerX = save["playerX"]
	playerY = save["playerY"]
	
