extends Area2D


export var speed:=-1200.0
export var good:=1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y+=speed*delta
	var bodies=get_overlapping_bodies()
	for body in bodies:
		if not body.good:
			var hp = body.hit(0.1)
			if hp<=0:
				body.queue_free()
			queue_free()
		elif body.good!=good:
			body. hit=true
			body.queue_free()
			queue_free()

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
  
