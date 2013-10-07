# Public: Install updates from Apple
class macmodule::software_update {
  exec { 'OSX Software Update':
      command  => '/usr/sbin/softwareupdate -i -a',
      schedule => 'update_schedule',
      timeout  => 0,
      user     => 'root'
  }

  schedule { 'update_schedule':
    weekday => 'Friday',
    range =>  '14:00-18:00',
    #repeat => 3
  }
}
