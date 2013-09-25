class macmodule::testfilepermissions{

        #create home folder directory
        file { '/Users/madmin/test':
                ensure     => 'directory',
        }

	# Just verify file permissions.
	file { "/Users/madmin/test/RestrictedFile.txt":
		mode => 755,
		ensure => present,
		content => "Nobody read the contents of this file.",
		}
}
