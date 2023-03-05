extends Camera2D

onready var topleft = $Limits/TopLeft
onready var bottomRight = $Limits/BottomRight

func _ready():
	limit_top = topleft.position.y
	limit_left = topleft.position.x
	limit_bottom = bottomRight.position.y
	limit_right = bottomRight.position.x
