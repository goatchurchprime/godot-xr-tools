extends VBoxContainer


@onready var asp : AudioStreamPlayer3D

func _ready():
	asp = get_node_or_null("/root/AudioDemo/MusicMachine/AudioStreamPlayer3D")
	if asp == null:
		asp = get_node("/root/DemoStaging/Scene/AudioDemo/MusicMachine/AudioStreamPlayer3D")
	print("Audiostreeem", asp)
	asp.pitch_scale = 2.0


func _on_h_slider_value_changed(value):
	asp.pitch_scale = value
	
