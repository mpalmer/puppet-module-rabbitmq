class rabbitmq::scripts {
	file { "/usr/local/bin/rabbitmqadmin":
		ensure => file,
		source => "puppet:///modules/rabbitmq/usr/local/bin/rabbitmqadmin",
		mode   => 0555,
		owner  => "root",
		group  => "root",
	}
}
