// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function find_trigger_instance(trigger_id) {
	var triggers = layer_get_all_elements("Triggers");
	for (var i = 0; i < array_length(triggers); i++) {
		var trigger = layer_instance_get_instance(triggers[i]);
		if (trigger.trigger_id == trigger_id) {
			return trigger;
		}
	}
}