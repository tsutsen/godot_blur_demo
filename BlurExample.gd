extends Control

func _ready():
	$%BlurRadiusSlider.value_changed.connect(_blur_changed)
	$%BlurLodSlider.value_changed.connect(_lod_changed)

	_blur_changed($%BlurRadiusSlider.value)
	_lod_changed($%BlurLodSlider.value)


func _blur_changed(radius: float):
	print('blur')
	$%BlurX.material.set_shader_parameter("radius", radius)
	$%BlurY.material.set_shader_parameter("radius", radius)
	$%BlurRadiusLabel.text = "%.2f" % [radius]

func _lod_changed(lod: float):
	print('lod')
	$%BlurLod.material.set_shader_parameter("intensity", lod)
	$%LodLabel.text = "%.2f" % [lod]
