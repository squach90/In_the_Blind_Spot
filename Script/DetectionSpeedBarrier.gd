extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.name == "Player":
		if Global.currentV >= 400:
			$"../CollisionShape2D".set_deferred("disabled", true)
			print("Non ative")
		else:
			Global.morespeed = true


func _on_body_exited(body):
	if body.name == "Player":
		Global.morespeed = false
