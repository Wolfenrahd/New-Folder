extends KinematicBody2D

var speed = 100

func _ready():
	position.x = global.playerX
	position.y = global.playerY

func _physics_process(delta):
	var left = -int(Input.is_action_pressed("left"))
	var right = int(Input.is_action_pressed("right"))
	var up = -int(Input.is_action_pressed("up"))
	var down = int(Input.is_action_pressed("down"))
	
	var movement = Vector2((left + right) * speed, (up + down) * speed)

	move_and_slide(movement)
	global.playerX = position.x
	global.playerY = position.y
	
	if(Input.is_action_just_pressed("pause")):
		get_tree().paused = true
