class macmodule::printers {
	#creates printers on mac
	printer { "CALPS01-ARTCLR04":
		ensure      => present,
		description => "Ricoh Pro C751EX",
		enabled     => true,
		location    => "Calabasas ART",
		ppd         => "/Library/Printers/PPDs/Contents/Resources/en.lproj/C751(EX)-C651EX E-41A PS 1.2",
		uri         => "lpd://calps01/CALPS01_ARTCLR04",
  	  	}
}
