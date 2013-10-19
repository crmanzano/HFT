# Puppet modules to run on the client.
case $operatingsystem   { 

	'Darwin':	{ include macmodule} # apply the macmodule class
}
