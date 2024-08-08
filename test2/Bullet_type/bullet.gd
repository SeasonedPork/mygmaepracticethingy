extends Area2D
var travelled_distance = 0
# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	const speed = 500
	const Max_Bullet_Range = 600
	var direction = Vector2.RIGHT.rotated(rotation)
	position += direction* 1000 * delta
	travelled_distance += speed * delta
	if travelled_distance > Max_Bullet_Range:
		queue_free()


func _on_body_entered(body):
	print("B_hit")
	queue_free()
	if body.has_method("Damage"):
#		var attack = Attack.new()
#		attack.attack_damage = 10
		body.Damage()
