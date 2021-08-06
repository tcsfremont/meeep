extends StaticBody2D
var good=0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func hit(damage):
	$Sprite.modulate.a-=damage
	return $Sprite.modulate.a

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
