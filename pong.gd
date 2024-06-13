extends Node2D

const CENTER = Vector2(640,360)
var player_score = 0
var computer_score = 0



func _on_goalleft_body_entered(body):
	computer_score += 1
	$computer_score.text = str(computer_score) 
	reset()


func _on_goalright_body_entered(body):
	player_score += 1
	$player_score.text = str(player_score) 
	reset()
	
func reset():
	$ball.position = CENTER
	$ball.call("set_ball_velocity")
	$player.position.y = CENTER.y
	$computer.position.y = CENTER.y
	
