class testmodule::clientconfig{
	# Puts /etc/puppet/modules/testmodule/files/com.puppetlabs.puppet.plist on the client.
	# On the client, it's going into /Library/LaunchDaemons/com.puppetlabs.puppet.plist
	file { "/Library/LaunchDaemons/com.puppetlabs.puppet.plist":
		source => "puppet:///modules/testmodule/com.puppetlabs.puppet.plist",
		owner => root,
		group => wheel,
		mode => 644,
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


	#turns on puppetd n launchd
	exec {'turns on puppetd n launchd':
	  command => "launchctl load -w /Library/LaunchDaemons/com.puppetlabs.puppet.plist",
	  }
		
}
