extends Area3D

@export var heal_amount: int = 30 # Amount of health to restore (editable in Inspector)

func _on_body_entered(body: Node3D) -> void:
	# Check if the entering body is the Player 
	if body.is_in_group("player"):
		# Call the Player's heal function 
		body.heal(heal_amount)
		# TODO: play a sound or particle effect here for feedback
		Audio.play("sounds/heal.ogg")
		# Remove the item after pickup
		queue_free()
