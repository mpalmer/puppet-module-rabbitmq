define rabbitmq::server() {
	include rabbitmq::repo
	include rabbitmq::scripts

	package { "rabbitmq-server":
		require => Class["apt::update"],
	}

	service { "rabbitmq-server":
		ensure  => running,
		require => Package["rabbitmq-server"],
	}

	file {
		"/etc/rabbitmq/enabled_plugins":
			ensure  => file,
			content => "[rabbitmq_management].\n",
			mode    => "0444",
			owner   => "root",
			group   => "root",
			require => Package["rabbitmq-server"],
			notify  => Service["rabbitmq-server"];
	}
}
