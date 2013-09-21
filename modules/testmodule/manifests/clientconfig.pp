class testmodule::clientconfig{
	# Puts /etc/puppet/modules/testmodule/files/com.puppetlabs.puppet.plist on the client.
	# On the client, it's going into /Library/LaunchDaemons/com.puppetlabs.puppet.plist
	file { "/Library/LaunchDaemons/com.puppetlabs.puppet.plist":
		source => "puppet:///modules/testmodule/files/com.puppetlabs.puppet.plist",
		owner => root,
		mode => 755,
		ensure => present,
		}
		
	# Puts /etc/puppet/modules/testmodule/puppet.conf on the client.
	# On the client, it's going into /etc/puppet/puppet.conf
	file { "/etc/puppet/puppet.conf":
		source => "puppet:///modules/testmodule/files/puppet.conf",
		owner => root,
		mode => 755,
		ensure => present,
		}
		
}
