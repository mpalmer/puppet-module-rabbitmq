class rabbitmq::repo {
	apt::key { 'F78372A06FF50C80464FC1B4F7B8CEA6056E8E56':
		key_source => 'http://www.rabbitmq.com/rabbitmq-signing-key-public.asc';
	}

	apt::source { "rabbitmq":
		location    => "http://www.rabbitmq.com/debian",
		# Don't ask me why, I have no fucking idea
		release     => "kitten",
		include_src => false;
	}
}
