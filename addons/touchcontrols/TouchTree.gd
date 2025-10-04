class_name TouchTree extends Tree

func _init() -> void:
	item_activated.connect(_on_item_activated)

func _on_item_activated():
	var data : Variant = _get_drag_data(Vector2(100,100))
	
	await RenderingServer.frame_post_draw
	
	if get_viewport().gui_is_dragging():
		get_viewport().gui_cancel_drag()
	
	force_drag(data, Control.new())
