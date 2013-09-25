# Public: Install Applications.app to /Applications.
#
# Examples
#
#   include handbrake
class macmodule::apps {
  $version = '0.9.8'

  package { 'HandBrake':
    provider => 'appdmg',
    source   => "http://sourceforge.net/projects/handbrake/files/${version}/HandBrake-${version}-MacOSX.6_GUI_x86_64.dmg",
  }

  #include firefox
  package { 'Firefox':
    provider => 'appdmg',
    source   => 'http://ftp.mozilla.org/pub/mozilla.org/firefox/releases/20.0/mac/en-US/Firefox%2020.0.dmg'
  }

  #include dropbox 
  package { "dropbox":
    provider => 'appdmg',
    source   => "http://cdn.dropbox.com/Dropbox%201.0.20.dmg",
  }

}
