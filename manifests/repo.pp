class rabbitmq::repo {
	apt::source { "rabbitmq":
		location    => "http://www.rabbitmq.com/debian",
		# Don't ask me why, I have no fucking idea
		release     => "kitten",
		key         => {
			"id"     => "F78372A06FF50C80464FC1B4F7B8CEA6056E8E56",
			"source" => "http://www.rabbitmq.com/rabbitmq-signing-key-public.asc",
		},
	}
}
