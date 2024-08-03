extends CanvasLayer

@export var Player: CharacterBody2D
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$InGame/Coordinate.text = str(Player.global_position)


func _on_play_btn_pressed():
	Global.canMove = true
	$MainScreen.hide()

func _on_back_btn_pressed():
	$Option.hide()
	$MainScreen.show()

func _on_debug_mode_btn_pressed():
	$InGame/Coordinate.show()

func _on_option_main_pressed():
	$Option.show()
