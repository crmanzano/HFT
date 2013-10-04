class macmodule::printers {
	#creates printers on mac
	printer { "CALPS01-ARTCLR04":
		ensure      => present,
		description => "Ricoh Pro C751EX",
		enabled     => true,
		shared      => false,
		location    => "Calabasas ART",
		ppd         => "/Library/Printers/PPDs/Contents/Resources/en.lproj/C751(EX)-C651EX E-41A PS 1.2",
		uri         => "lpd://calps01/CALPS01_ARTCLR04",
  	  	}

	#removes faulty ricoh ppd file
	exec { 'remove file':
	path => "/Library/Printers/RICOH/PDEs/",
	command => "/bin/rm -rf /Library/Printers/RICOH/PDEs/EF115057\ \(FF\).plugin",
	  }
}
