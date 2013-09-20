class testmodule::config{
	# Puts /etc/puppet/modules/testmodule/SampleConfig.conf on the client.
	# On the client, it's going into /etc/SampleConfig.conf
	file { "/etc/SampleConfig.conf":
		source => "puppet:///modules/testmodule/SampleConfig.conf",
		owner => root,
		mode => 755,
		ensure => present,
		}
}
