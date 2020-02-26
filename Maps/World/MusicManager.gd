extends AudioStreamPlayer2D

func _process(delta):
	if(not playing):
		if(randi()%10001+1 > 9950):
			play()
