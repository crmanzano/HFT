class testmodule::adminusers {
  	# Create local user
  	# Password is -password for 10.7 and 10.8 

	#create home folder directory
	file { '/Users/madmin':
		ensure	   => 'directory',
	}
	
	#create user permissions
  	user { 'madmin': 
		ensure => 'present', 
		comment => 'Mac Administrator', 
		gid => '20', 
		groups => ['_appserveradm', '_appserverusr', '_lpadmin', 'admin'], 			
		home => '/Users/madmin', iterations => '38610', 
		password => '7b57a817fc9bca4c1bef2c5c8b8b3870a07adb6129757e374951bb70b51405e4aabffdd7ed1a5e9a3ef341b2fb53ca65db5708dae3202bfe83b67cfd34920eba3c1dbecf712b2b9d06ceb7e91b7324fab1cd2105fb0139af5e637ee1b6d6786881081efbbe388713c454656700afe5459efb14e4d9147f3219a42b6f5b48d88b', salt => 'cf76ea80e22d0f952a48303fb7067408cb8ffed79e6587c55cf48d25e8a0f26a', 
		shell => '/bin/bash', 
		uid => '501', 
	}
  		

 	#adds wallpaper for admin user
 	# Puts /etc/puppet/modules/testmodule/SampleConfig.conf on the client.
        # On the client, it's going into /etc/SampleConfig.conf
        #file { "/Users/luser/Pictures/macbackground.jpg":
                #ensure => present,
		#source => "puppet:///modules/testmodule/macbackground.jpg",
                #}
}
