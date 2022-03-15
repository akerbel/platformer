/// @description

if (mouse_check_button_released(mb_left)){
	if (messageChar <= string_length(originalText)){
		messageChar = string_length(originalText);
	}
	
	else {
		instance_destroy(id);
	}
}

// Get message string
messageText = string_copy(originalText, 1, messageChar);

// String not fully drawn
if (messageChar <= string_length(originalText)){
	messageChar += messageSpeed;
}

