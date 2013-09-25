class macmodule::users {
  	# Create local user
  	# Password is -password for 10.7 and 10.8 

	#create home folder directory
	file { '/Users/luser':
		ensure	   => 'directory',
	}
	
	#create user permissions
  	user { 'luser':
  		ensure     => 'present',
  		comment    => 'Local User',
		groups	   => ['admin', 'wheel', '_appserveradm', '_appserverusr', '_lpadmin'],
  		gid        => '20',
  		home       => '/Users/luser',
		iterations => '34364',
		password   => 'b43e29901dbd898c5a6e7ed00ed59c44e8dcafc794cda475422144c5435ae7dd5b8e331a52adc1075927f135e78f1b954fa0f8f51cea0f5a2b85c29fbd8c8862f9976e9f46b2109f53da5334e8e5a65f2f5ed5d4a13ebc93af21aadf7eca81456d25cd687ebe5aae4afae87b1261f359cef7c49eb596955bc933797b9839ccc0',
        	salt       => '23876febcf836d8bad2bfd17a4d44d398a1a78abee7d3d56a2102f7a127adc9e',
  		shell      => '/bin/bash',
  		uid        => '551',
  }

 	#adds wallpaper for admin user
 	# Puts /etc/puppet/modules/macmodule/SampleConfig.conf on the client.
        # On the client, it's going into /etc/SampleConfig.conf
        file { "/Users/luser/Pictures/macbackground.jpg":
                ensure => present,
		#source => "puppet:///modules/macmodule/macbackground.jpg",
                #}
	
	#set background pic
	#define set_bg($name) {
    		#exec {"set bg for $name":
        	#command => "/usr/bin/gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/warty-final-ubuntu.png",
        	#user => "$name",
    		#}


}
