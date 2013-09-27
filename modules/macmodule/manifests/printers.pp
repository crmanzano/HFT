class macmodule::printers {
	#creates printers on mac
  file {'/private/etc/cups/ppd/CALPS01_ARTCLR04.ppd':
    ensure => file,
    mode   => '0655',
    owner  => 'root',
    group  => '_lp',
    source => 'puppet:///modules/macmodule/CALPS01_ARTCLR04.ppd'',
    before => Printer['CALPS01-ARTCLR04'],
  }


  printer { 'CALPS01-ARTCLR04':
    ensure      => 'present',
    accept      => 'true',
    description => 'Ricoh Pro C751EX',
    enabled     => 'true',
    location    => 'Calabasas ART',
    ppd         => '/private/etc/cups/ppd/CALPS01_ARTCLR04.ppd',
    uri         => 'lpd://calps01/CALPS01_ARTCLR04',
  }
}
