class macmodule::clientconfig{
	# Puts /etc/puppet/modules/macmodule/files/com.puppetlabs.puppet.plist on the client.
	# On the client, it's going into /Library/LaunchDaemons/com.puppetlabs.puppet.plist
	file { "/Library/LaunchDaemons/com.puppetlabs.puppet.plist":
		source => "puppet:///modules/macmodule/com.puppetlabs.puppet.plist",
		owner => root,
		group => wheel,
		mode => 644,
		ensure => present,
		}
		
	# Puts /etc/puppet/modules/macmodule/puppet.conf on the client.
	# On the client, it's going into /etc/puppet/puppet.conf
	#file { "/etc/puppet/puppet.conf":
	#	source => "puppet:///modules/macmodule/puppet.conf",
	#	owner => root,
	#	group => wheel,
	#	mode => 644,
	#	ensure => present,
	#	}


        # Puts /etc/puppet/modules/macmodule/puppet.conf on the client.
        # On the client, it's going into /etc/puppet/puppet.conf
        file { "/etc/puppet/puppet.conf":
		content => template("macmodule/puppet.conf.erb"),
                owner => root,
                group => wheel,
                mode => 644,
                ensure => present,
                }


	#turns on puppetd n launchd
	exec {'turns on puppetd n launchd':
	  command => "/bin/launchctl load -w /Library/LaunchDaemons/com.puppetlabs.puppet.plist",
	  }

	#displays system info, ip, computername  at login by clicking time in upper-right corner
	exec {'display sysinfo at login screen':
	  command => "/usr/bin/defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName",
	  }
	
	#displays msg at login window
        exec {'display msg at login screen':
          command => "/usr/bin/defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText 'Property of Harbor Freight Tools'",
          }

}
