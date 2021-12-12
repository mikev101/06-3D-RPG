extends KinematicBody

onready var Dialogue = get_node("/root/Game/UI/Dialogue")

var dialogue = [
	"Zombie: Howdy partner! Welcome to my target range! (Press 'E' to continue)",
	"Zombie: You lookin' to shoot some targets?",
	"You bet!",
	"Zombie: Fantastic! Now what ya gotta do is shoot all them targets BEFORE you run outta time understand?",
	"Got it.",
	"Zombie: Good, now get shootin'! (Press 'E' to start the challenge)",
]

func _ready():
	$AnimationPlayer.play("Idle")
	Dialogue.connect("finished_dialogue", self, "finished")


func _on_Area_body_entered(body):
	if body.name == 'Player':
		Dialogue.start_dialogue(dialogue)


func _on_Area_body_exited(body):
	if body.name == 'Player':
		Dialogue.hide_dialogue()

func finished():
	get_node("/root/Game/Target_container").show()
	Global.timer = 60
	Global.update_time()
	get_node("/root/Game/UI/Timer").start()
