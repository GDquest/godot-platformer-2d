extends State
"""
Simple state for state machine that waits a set amount of time.
"""

export var cooldown_time: = 1.5

func enter(msg: Dictionary = {}) -> void:
	yield(get_tree().create_timer(cooldown_time), "timeout")
	_state_machine.transition_to("Search")