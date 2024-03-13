extends Area2D

@export var speed = 1000
var velocity = Vector2.ZERO
func start(_transform):
	transform = _transform
	velocity = transform.x * speed
func _process(delta):
	position += velocity * delta

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()


func _on_body_entered(body):
	if body.is_in_group("rocks"):
		body.explode()
		queue_free()
