extends Node

var score = 0
var cumulative_points: int = 0
var combo: int = 0
@onready var score_display: Label = $ScoreDisplay
@onready var flip_board: FlipBoard = $FlipBoard
@onready var tia_v: Node3D = $"../TIA-V_MASTER"

func display_points():
	#score_display.text = "Score: " + str(score)
	pass;

#func add_clear(cluster: Array[Piece]):
	#if (cumulative_points > 0):
		#score += cumulative_points * combo
		#cumulative_points = 0
		#combo = 0
		#display_points()
	#if len(cluster) <= 0:
		#return
	#combo += 1
	#for cell in cluster:
		#cumulative_points += cell.value


func _on_pieces_cleared() -> void:
	tia_v.play_dmg()
