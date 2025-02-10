extends Node

@onready var end_2: Label = $End2
var score = 0

func add_point():
	score += 1
	print(score)
	end_2.text = "(" + str(score) + " out of 7 coins :p)"
