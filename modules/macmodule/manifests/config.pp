class macmodule::config{
	# Puts /etc/puppet/modules/macmodule/SampleConfig.conf on the client.
	# On the client, it's going into /etc/SampleConfig.conf
	file { "/etc/SampleConfig.conf":
		source => "puppet:///modules/macmodule/SampleConfig.conf",
		owner => root,
		mode => 755,
		ensure => present,
		}
}
