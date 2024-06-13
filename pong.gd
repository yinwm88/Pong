extends Node2D

const CENTER = Vector2(640,360)
func _on_goalleft_body_entered(body):
	reset()


func _on_goalright_body_entered(body):
	reset()
	
func reset():
	$ball.position = CENTER
	$player.position.y = CENTER.y
	$computer.position.y = CENTER.y
	
